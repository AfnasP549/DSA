class HashNode<K,V>{
  K key;
  V value;
  HashNode(this.key,this.value);
}
class HashTable<K,V>{
  List<List<HashNode<K,V>>>slot=[];
  int size;
  HashTable(this.size){
    slot=List.generate(size, (_)=>[]);
  }
  hash(K key){
    return key.hashCode % size;
  }

  insert(K key, V value){
    int index = hash(key);
    List<HashNode<K,V>>bucket= slot[index];

    for(var node in bucket){
      if(node.key==key){
        node.value=value;
        return;
      }
    }
    bucket.add(HashNode(key, value));
  }


  delete(K key){
    int index =hash(key);
    List<HashNode<K,V>>bucket=slot[index];

    for(int i=0; i<bucket.length; i++){
      if(bucket[i].key==key){
        bucket.removeAt(i);
        return;
      }
    }
  }


  display(){
    for(int i=0;i<size;i++){
      if(slot.isNotEmpty){
       // print('slot$i');
        for(var node in slot[i]){
          print('${node.key}:${node.value}');
        }
      }
    }
  }


}
void main(){
  HashTable obj = HashTable(5);
  obj.insert('a', 10);
  obj.insert('b', 20);
  obj.insert('c', 30);
  obj.insert('d', 40);
  obj.insert('e', 50);

  obj.delete('b');

  obj.display();
}