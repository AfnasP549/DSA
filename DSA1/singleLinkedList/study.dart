import 'dart:mirrors';

class Node{
  int data;
  Node?next;
  Node?prev;
  Node(this.data);
}
class DLiknkedList{
  Node?head;
  Node?tail;
  append(int data){
    Node newnode=Node(data);
    if(head==null){
      head=newnode;
      tail=newnode;
    }else{
      tail?.next=newnode;
      newnode.prev=tail;
    }
    tail=newnode;
  }
  display(){
    Node? current=head;
    while(current!=null){
      print(current.data);
      current=current.next;
    }
  }

  displayRev(){
    Node? current=tail;
    while(current!=null){
      print(current.data);
      current=current.prev;
    }
  }
  void insert(int value){
    Node newnode=Node(value);
    Node?current= head;
    while(current!=null && current.next!=null){
      
    }
  }                      
}

void main(){
  DLiknkedList obj=DLiknkedList();
  obj.append(10);
  obj.append(20);
  obj.append(30);
  obj.append(40);
  obj.append(50);

  obj.display();
  print('object');
  obj.displayRev();
}