class Queue{
  List<int>queue=[];
  late int front, rear, size;

  Queue(this.size){
    queue= List.filled(size, 0, growable: false);
    front =0;
    rear = -1;
  }
  isFull(){
    return rear==size-1;
  }
  isEmpty(){
    return front>rear;
  }

  enqueue(int value){
    if(isFull()){
      print('QUEUE is full');
    }
    rear++;
    queue[rear]=value;
    print('$value is added');
  }

  dequeue(){
    if(isEmpty()){
      print('QUEUE is empty');
    }
    int value = queue[front];
    front--;
    print('$value is removed');
  }

  peek(){
    if(isEmpty()){
      print('QUEUE is empty');
    }else{
      print('front value is ${queue[front]}');
    }
  }
}

void main(){
  Queue obj = Queue(5);
  obj.enqueue(10);
  obj.enqueue(20);
  obj.enqueue(30);
  obj.enqueue(40);
  obj.enqueue(50);

  //obj.dequeue();
  obj.peek();
}