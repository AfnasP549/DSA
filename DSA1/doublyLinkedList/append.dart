
class Node{
  int data;
  Node? next;
  Node? prev;
  Node(this.data);
}
class DLinkedList{
  Node?head;
  Node? tail;
  void append(int data){
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
    Node? current= head;
    while(current!=null){
      print(current.data);
      current=current.next;
    }
  }
  displayReverse(){
      Node? current= tail;
      while(current!=null){
        print(current.data);
        current=current.prev;
      }
    }
}
void main(){
  DLinkedList obj= DLinkedList();
  obj.append(10);
  obj.append(20);
  obj.append(30);
  obj.append(40);
  obj.append(50);

  obj.display();
  obj.displayReverse();
}