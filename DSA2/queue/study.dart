class Queue{
  late List<int>queue;
  late int front, rear, size;

  Queue(this.size){
    queue = List<int>.filled(size, 0, growable: false);
    front =0;
    rear = -1;
  }

  bool isFull(){
    return rear == size-1;
  }

  bool isEmpty(){
    return front>rear;
  }

  enqueue(int value){
    if(isFull()){
      print('queue is full');
      return;
    }
    rear++;
    queue[rear] = value;
    print('$value is added');
    return;
  }

  dequeue(){
    if(isEmpty()){
      print('queue is empty');
    }
    int value = queue[front];
    front++;
    print('$value is removed');
  }

  peek(){
    if(isEmpty()){
      print('queue is empty');
    }
    print('front of the queue is ${queue[front]}');
  }
}

void main(){
  Queue obj = Queue(3);
  obj.enqueue(10);
  obj.enqueue(20);
  obj.enqueue(30);

  obj.peek();

  obj.dequeue();
  obj.peek();
}
