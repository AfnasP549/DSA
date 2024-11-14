class Heap{
  List<int>heap=[];

  int parent(int index)=>(index-1)~/2;
  int leftchild(int index)=>(2*index+1);
  int rightchild(int index)=>(2*index+2);

  void swap(int i, int j){
    int temp= heap[i];
    heap[i]=heap[j];
    heap[j]=temp;
  }
  void printHeap(){
    print(heap);
  }
}
class MaxHeap extends Heap{
  build(List<int>arr){
    heap=arr;
    for(int i=parent(heap.length-1);i>=0;i--){
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
    int largest= index;
    int left = leftchild(index);
    int right = rightchild(index);

    if(left<heap.length && heap[left]>heap[largest]){
      largest = left;
    }
    if(right<heap.length && heap[right]>heap[largest]){
      largest = right;
    }
    if(largest!=index){
      swap(index, largest);
      heapifyDown(largest);
    }
  }
}

void main(){
 MaxHeap obj  = MaxHeap();
 obj.build([6,5,8,94,3,7,9,1]);
 obj.printHeap();
 print('after sorting');
 print(obj.heapSort()); 
}