
class HashNode<K, V> {
  K key;
  V value;
  HashNode(this.key, this.value);
}

class HashTable<K, V> {
  late List<List<HashNode<K, V>>> slot;
  late int size;

  HashTable(this.size) {
    slot = List.generate(size, (_) => []);
    /*The underscore _ is used to ignore the index, because we don't need the specific
     index value when creating the list of empty lists.*/
  }
  // hash function to calculate the index from the key
  int hash(K key){
    return key.hashCode % size;
  }

  display(){
    for(int i=0; i<size; i++){
      if(!slot[i].isEmpty){
        print('Slot$i');
        for(var node in slot[i]){
          print('${node.key}:${node.value}');
        }
      }
    }
  }

    void insert(K key, V value){
      int index = hash(key);//index from the hash function
      List<HashNode<K, V>>bucket = slot[index];

      for(var node in bucket){
        if(node.key == key){
          node.value = value;// Update value if key already exists
          return;
        }
      }
      bucket.add(HashNode(key, value));
    }

    void delete(K key){
      int index = hash(key);
      List<HashNode<K, V>>bucket = slot[index];

      for(int i=0; i<bucket.length; i++){
        if(bucket[i].key == key){
          bucket.removeAt(i);
          return;
        }
      }
      print('key not found');
    }
}

void main() {

 HashTable obj = HashTable(10);
 obj.insert('key', 10);
 obj.insert('apple', 0);
 obj.insert('pine', 1);
 obj.insert('hey', 2);
 obj.insert('ooy', 3);

 obj.display();
print('');
print('after delete');
print('');
 obj.delete('hey');
 obj.delete('apple');
 obj.display();
}
