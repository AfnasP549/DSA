class Stack{
    List<int>stack=[];
    late int top, size;

    Stack(this.size){
        stack = List.filled(size, 0, growable: false);
         top=-1;
    }
    isFull(){
        return top==size-1;
    }
    isEmpty(){
        return top==-1;
    }
    push(int value){
        if(isFull()){
            print('STACK IS FULL');
        }
        top++;
        stack[top]=value;
        print('$value is added');
    }

    pop(){
        if(isEmpty()){
            print('STACK IS EMPTY');
        }
        int value = stack[top];
        top--;
        print('$value is removed');
    }

    deleteMiddle(){
        int middleIndex = (stack.length~/2);
        List<int>tempStack = [];

        while(top>middleIndex){
            tempStack.add(stack[top]);
            pop();

          
        }
          print('middle element is ${stack[top]}');
            pop();

        while(tempStack.isNotEmpty){
            push(tempStack.removeLast());
        }
    }
    peek(){
        if(isEmpty()){
            print('STACK IS empty');
        }
        else{
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

   // obj.pop();
    print('delete');
    obj.deleteMiddle();
    obj.peek();

}