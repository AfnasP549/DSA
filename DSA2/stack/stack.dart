 
class Stack{
  late List<int>stack;
  late int top, size;

  Stack(this.size){
    stack = List<int>.filled(size, 0, growable: false);
    top = -1;
  }

  bool isFull(){
    return top ==size-1;
  }

  bool isEmpty(){
    return top== -1;
  }

  void push(int value){
    if(isFull()){
      print('Stack is full');
      return;
    }
    top++;
    stack[top] = value;
    print('$value is added');
  }

void pop(){
  if(isEmpty()){
    print('Stack is empty');
    return;
  }
  int value = stack[top];
  top--;
  print('$value is removed');
}

void deleteMiddle(){
  int middleIndex = stack.length ~/2;
  List<int> tempStack = [];

    // Transfer elements above the middle to a temporary stack
  while(top> middleIndex){
    tempStack.add(stack[top]);
    pop();
    }

     // Pop the middle element
    print('Middle element ${stack[top]} is removed');
    pop();

      // Push back the elements from the temporary stack
    while (tempStack.isNotEmpty) {
      push(tempStack.removeLast());
    }

  
}

  peek(){
    if(isEmpty()){
      print('List is empty');
    }else{
      print('top value is ${stack[top]}');
    }
  }
}

void main(){
  Stack obj = Stack(5);
  obj.push(10);
  obj.push(20);
  obj.push(30);
  obj.push(40);
  obj.push(50);
  
  obj.peek();

  // obj.pop();
  // obj.peek();
print('');
  obj.deleteMiddle();
  obj.peek();
}
