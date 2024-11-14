class Heap{
  List<int>heap=[];
  int parent(int index)=>(index-1)~/2;
  int leftchild(int index)=> (2*index+1);
  int rightchild(int index)=>(2*index+2);

  void swap(int i, int j){
    int temp=heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }
  printHeap(){
    print(heap);
  }
}
class MinHeap extends Heap{

  build(List<int>arr){
    heap=arr;
    for(int i=parent(heap.length-1);i>=0;i--){
      heapifyDown(i);
    }
  }

  heapifyDown(int index){
    int smallest= index;
    int left= leftchild(index);
    int right= rightchild(index);

    if(left<heap.length && heap[left]<heap[smallest]){
      smallest= left;
    }
    if(right<heap.length && heap[right]<heap[smallest]){
      smallest= right;
    }
    if(smallest!=index){
      swap(index, smallest);
      heapifyDown(smallest);
    }
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

  delete(){
    if(heap.isEmpty){
      return null;
    }
    heap[0] = heap.removeLast();
    heapifyDown(0);
  }

  //sort
  List<int>heapSort(){
    List<int>sorted=[];
    while(heap.isNotEmpty){
      sorted.add(heap.removeAt(0));
      heapifyDown(0);
    }
    return sorted;
  }
}

void main(){
  MinHeap obj = MinHeap();
  obj.build([4,5,3,6,8,7]);
  obj.printHeap();
obj.insert(100);
  obj.printHeap();


  // obj.delete();
  // obj.printHeap();
  print('sort');
  print(obj.heapSort());
}