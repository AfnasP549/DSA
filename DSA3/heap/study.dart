class Heap{
  List<int>heap=[];
  int parent(int index) =>(index-1)~/2;
  int leftchild(int index) => (2*index+1);
  int rightchild(int index) =>(2*index+2);

  void swap(int i, int j){
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }

  void printHeap(){
    print(heap);
  }
}

class MinHeap extends Heap{
  void build(List<int>arr){
    heap=arr;
    for(int i=parent(heap.length-1); i>=0; i--){
      heapifyDown(i);
    }
  }

  void insert(int value){
    heap.add(value);
    heapifyUp(heap.length-1);
  }

  void remove(){
    if(heap.isEmpty){
      print('List is empty');
    }
    heap[0] = heap.removeLast();
    heapifyDown(0);
  }

  heapifyUp(int index){
    while(index >0 && heap[index]< heap[parent(index)] ){
      swap(index, parent(index));
      index = parent(index);
    }
  }

  heapifyDown(int index){
    int smallest = index;
    int left = leftchild(index);
    int right = rightchild(index);

    if(left<heap.length && heap[left]< heap[smallest]){
      smallest = left;
    }
    if(right<heap.length && heap[right]< heap[smallest]){
      smallest = right;
    }

    if(smallest!=index){
      swap(index, smallest);
      heapifyDown(smallest);
    }
  }

  List<int> heapSort(){
    List<int>sorted=[];
    while(heap.isNotEmpty){
      sorted.add(heap.removeAt(0));
      heapifyDown(0);
    }
    return sorted;
  }
}

// void main(){
// MinHeap obj = MinHeap();
// obj.insert(3);
// obj.insert(5);
// obj.insert(2);
// obj.insert(8);
// obj.insert(1);

// obj.printHeap();

// print('remove');
// obj.remove();
// obj.printHeap();

// print(obj.heapSort());

// }

void main(){
  MinHeap obj = MinHeap();
  obj.build([7,8,9,10,23,0]);
  obj.insert(4);
  obj.insert(3);
  obj.insert(6);
  obj.insert(2);
  obj.insert(8);

  obj.printHeap();
  obj.remove();
  obj.printHeap();
  print('after sort');
 // obj.heapSort();
  print(obj.heapSort());
  //obj.printHeap();


}