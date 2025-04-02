class Heap{
  List<int>heap=[];

  int parent(int index)=> (index-1)~/2;
  int leftchild(int index)=> (2*index +1);
  int rightchild(int index)=> (2*index+2);

  void swap(int i, int j){
    int temp= heap[i];
    heap[i]=heap[j];
    heap[j]=temp;
  }
  void printHeap(){
    print(heap);
  }
}
class MinHeap extends Heap{
  build(List<int>arr){
    heap=arr;
    for(int i=parent(heap.length-1);i>=0; i--){
      heapifyDown(i);
    }
  }

  List<int>heapSort(){
    List<int>sorted=[];
    while(heap.isNotEmpty){
      sorted.add(heap.removeAt(0));
      heapifyDown(0);
    }
    return sorted;
  }
  heapifyDown(int index){
    int smallest = index;
    int left = leftchild(index);
    int right = rightchild(index);

    if(left<heap.length && heap[left]<heap[smallest]){
      smallest= left;
    }
    if(right<heap.length && heap[right]<heap[smallest]){
      smallest = right;
    }
    if(smallest!=index){
      swap(index, smallest);
      heapifyDown(smallest);
    }
  }

  delete(){
    if(heap.isEmpty){
      print('heap is empty');
    }
    heap[0]=heap.removeLast();
    heapifyDown(0);
  }

  insert(int value){
    heap.add(value);
    heapifyUp(heap.length-1);
  }
  heapifyUp(int index){
    while(index>0 && heap[index]<heap[parent(index)]){
      swap(index, parent(index));
      index = parent(index);
    }
  }

}

void main(){
  MinHeap obj = MinHeap();
  obj.build([8,3,5,60,2,6,4,2,1]);
  obj.printHeap();
  // print('after deleting');
  // obj.delete();
  // obj.delete();
  // obj.printHeap();
  print('after insert');
  obj.insert(100);
  obj.insert(0);
  obj.printHeap();

  // print('after sorting');
  // print(obj.heapSort());
  

}