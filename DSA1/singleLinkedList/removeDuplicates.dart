class Node{
  int data;
  Node?next;
  Node(this.data);
}
class Linkedlist{
  Node?head;
  Node?tail;
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
  Node?current=head;
  while(current!=null){
    print(current.data);
    current=current.next;
  }
 }
  removeDuplicate(){
    Node? current=head;
    while(current!=null && current.next!=null){
      if(current.data==current.next?.data){
        current.next=current.next?.next;
      }else{
        current=current.next;
      }
    }
  }

}

void main(){
  Linkedlist obj=Linkedlist();
  obj.append(1);
  obj.append(2);
  obj.append(3);
  obj.append(4);
  obj.append(1);

  obj.display();

  print('object');
  obj.removeDuplicate();
  obj.display();
}