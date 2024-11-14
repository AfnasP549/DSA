class Node{
  int data;
  Node? next;
  Node(this.data);
}
class LinkedList{
  Node?head=null, tail=null;
  append(int data){
    Node newnode= Node(data);
   if(head==null){
    head=newnode;
   }else{
    tail?.next=newnode;
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
  getMid(){
    Node? fast=head;
    Node? slow=head;

    while(fast?.next!= null){
      fast= fast?.next?.next;
      slow= slow?.next;
    }
    print(slow!.data);
  }
}
void main(){
  LinkedList obj= LinkedList();
  obj.append(10);
  obj.append(20);
  obj.append(30);
  obj.append(40);
  obj.append(50);
  //obj.append(60);

  obj.display();

  print('new');
  obj.getMid();
  //obj.display();
}