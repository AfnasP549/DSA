class Queue{
 late List<int>queue;
 late int front, rear, size;

Queue(this.size){
  queue = List<int>.filled(size, 0,growable: false);
   front= 0;
    rear= -1;
}

bool isFull(){
  return rear == size-1;
}

bool isEmpty(){
  return front>rear;
}

void enqueue(int value){
  if(isFull()){
    print('cannot add');
    return;
  }
  rear++;
  queue[rear]= value;
  print('$value is inserted');
}

int dequeue(){
  if(isEmpty()){
    print('queue is empty');     
    return -1;
  }
  int value = queue[front];
  front++;
  print('$value is removed from the queue');
  return value;
}
void peek(){
  if(isEmpty()){
    print('queue is empty');
  }else{

  return print('Front element ${queue[front]}');
  }
}

}
void main(){
  Queue obj = Queue(6);
  obj.enqueue(10);
  obj.enqueue(20);
  obj.enqueue(30);
  obj.enqueue(40);
  obj.enqueue(50);

  obj.peek();


  obj.dequeue();

  obj.peek();
  obj.enqueue(60);
  
}