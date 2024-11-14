//! insertionSort(List<int>arr){
//   int n = arr.length;

//   for(int i=1; i<n ;i++){
//     int j = i-1;
//     int current = arr[i];
//     while(j>=0 &&  current<arr[j]){
//       arr[j+1] = arr[j];
//       j--;
//     }
//     arr[j+1] = current;
//   }
//   return arr;
// }
// void main(){
//   List<int>arr=[5,4,6,3,6,2,1];
//   print(insertionSort(arr));
// }

//! bubbleSort(List<int>arr){
//   int n = arr.length;

//   for(int i=0; i<n; i++){
//     for(int j=0; j<n-i-1; j++){
//       if(arr[j]>arr[j+1]){
//         int temp = arr[j];
//         arr[j] = arr[j+1];
//         arr[j+1] = temp;
//       }
//     }
//   }
//   return arr;
// }
// void main(){
//   List<int>arr=[5,4,6,3,7,2,1];
//   print(bubbleSort(arr));
// }



//! selectionSort(List<int>arr){
//   int n= arr.length;
//   for(int i=0; i<n-1; i++){
//     int minIndex = i;
//     for(int j=i+1; j<n;j++){
//       if(arr[j]< arr[minIndex]){
//         minIndex = j;
//       }
//     }
//     if(minIndex!=i){
//       int temp = arr[i];
//       arr[i] = arr[minIndex];
//       arr[minIndex] = temp;
//     }
//   }
//   return arr;
// }

// void main(){
//   List<int>arr = [5,46,3,66,2];
//   print(selectionSort(arr));
// }


//! quickSort(List<int>arr){
//   if(arr.length<=1){
//     return arr;
//   }

//   int pivot = arr[arr.length~/2];
//   List<int>less = [];
//   List<int>equal = [];
//   List<int>greater = [];

//  for(var node in arr){
//   if(node<pivot){
//     less.add(node);
//   }else if(node == pivot){
//     equal.add(node);
//   }else{
//     greater.add(node);
//   }
//  }
//  return quickSort(less) + equal +quickSort(greater);

// }

// void main(){
//   List<int>arr = [5,4,6,3,7];
//   print(quickSort(arr));
// }


//! mergeSort(List<int>arr){
//   if(arr.length<=1){
//     return arr;
//   }

//   int mid = arr.length~/2;
//   List<int>left = mergeSort(arr.sublist(0, mid));
//   List<int>right = mergeSort(arr.sublist(mid));

//   return merge(left, right);
// }

// merge(left, right){
//   List<int>result = [];
//   int i=0;
//   int j=0;

//   while(i<left.length && j<right.length){
//     if(left[i]<right[j]){
//       result.add(left[i]);
//       i++;
//     }else{
//       result.add(right[j]);
//       j++;
//     }
//   }
//   return result +  left.sublist(i) + right.sublist(j);
// }

// void main(){
//   List<int>arr=[4,3,5,6,2,6];
//   print(mergeSort(arr));
// }


//! class Stack{
//   late List<int>stack;
//   late int top, size;

//   Stack(this.size){
//     stack = List<int>.filled(size, 0, growable: false);
//     top = -1;
//   }

//   bool isFull(){
//     return top == size-1;
//   }

//   bool isEmpty(){
//     return top ==-1;
//   }

//   push(int value){
//     if(isFull()){
//       print('Stack is full');
//     }
//     top++;
//     stack[top]= value;
//     print('$value is added');
//   }

//   pop(){
//     if(isEmpty()){
//       print('Stack is empty');
//     }
//     int value = stack[top];
//     top--;
//     print('$value is removed');
//   }

//   peek(){
//     if(isEmpty()){
//       print('stack  is empty');
//     }
//     print('top is ${stack[top]}');
//   }
  
//   deleteMiddle(){
//     int middleIndex = stack.length~/2;
//     List<int>tempStack=[];

//     while(top>middleIndex){
//       tempStack.add(stack[top]);
//       pop();
//     }

//     print('delete middle element ${stack[top]}');
//     pop();

//     while(tempStack.isNotEmpty){
//       push(tempStack.removeLast());
//     }

//   }
// }

// void main(){
//   Stack obj = Stack(5);
//   obj.push(10);
//   obj.push(20);
//   obj.push(30);
//   obj.push(40);
//   obj.push(50);

//   // obj.pop();
//   // obj.peek();

//   obj.deleteMiddle();
// }


//! class Queue{
//   late List<int>queue;
//   late int front, rear, size;

//   Queue(this.size){
//     queue = List<int>.filled(size, 0, growable: false);
//      front=0;
//      rear= -1;
//   }

//   enqueue(int value){
//     rear++;
//     queue[rear]= value;
//   print('$value is added');
//   }

//   dequeue(){
//     int value = queue[front];
//     front--;
//     print('$value is removed');
//   }

//   peek(){
//     print('front value is${queue[front] }');
//   }
// }

// void main(){

// Queue obj = Queue(3);
// obj.push(10);
// obj.push(20);
// obj.push(30);

// obj.peek();

// obj.pop();
// }

  
//! class HashNode<K, V>{
//   K key;
//   V value;
//   HashNode(this.key, this.value);
// }
// class HashTable<K, V>{
//   late List<List<HashNode<K, V>>>slot;
//   late int size;

//   HashTable(this.size){
//     slot = List.generate(size, (_)=>[]);
//   }
//   hash(K key){
//     return key.hashCode%size;
//   }

//   insert(K key, V value){
//     int index = hash(key);
//     List<HashNode<K, V>>bucket = slot[index];

//     for(var node in bucket ){
//       if(node.key==key){
//         node.value= value;
//         return;
//       }
//     }
//     bucket.add(HashNode(key, value));
//   }

//   delete(K key){
//     int index = hash(key);
//     List<HashNode<K, V>>bucket = slot[index];

//     for(int i=0;i<bucket.length;i++){
//       if(bucket[i].key==key){
//         bucket.removeAt(i);
//         return;
//       }
//     }
//     print('key not found');
//   }

//   display(){
//     for(int i=0;i<size;i++){
//       if(slot[i].isNotEmpty){
//         print('Slot$i');
//         for(var node in slot[i]){
//           print('${node.key}:${node.value}');
//         }
//       }
//     }
//   }
// }

// void main(){
// HashTable obj = HashTable(3);
// obj.insert('app', 10);
// obj.insert('bb', 20);
// obj.insert('cc', 30);
// obj.display();


// obj.delete('bb');
// obj.delete('cc');
// obj.display();
// }

