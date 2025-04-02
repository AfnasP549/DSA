class HashTable<V>{
  late List<List<V>>slot;
  int size;
  HashTable(this.size){
    slot = List.generate(size, (_)=>[]);
  }


  hash(V value){
    return value.hashCode % size;
  }

  insert(V value){
    int index = hash(value);
    final bucket = slot[index];

    if(!bucket.contains(value)){
      bucket.add(value);
    }
  }
    
  display(){
    for(int i = 0; i<size; i++){
      print('Slot $i : ${slot[i]}');
    }
  }
}
void main(){
  List arr = [4,3,5,443,2,4,5,7];
  HashTable obj =HashTable(5);
 for(var node in arr){
  obj.insert(node);
 }
  obj.display();
}
