class Node{
  int data;
  Node?next;Node?prev;
  Node(this.data);
}
class DLinked{
  Node?head=null;
  Node?tail=null;

  append(int value){
    Node newnode = Node(value);
    if(head==null){
      head=newnode;
      tail=newnode;
    }else{
      tail?.next=newnode;
      newnode.prev=tail;
    }
    tail=newnode;
  }

  reverse(){
    Node?current=head;
    Node?temp=null;
    while(current!=null){
      temp=current.prev;
      current.prev=current.next;
      current.next=temp;
      current=current.prev;
    }
    if(temp!=null){
      head=temp.prev;
    }
  }

  delete(int value){
    Node?current=head;
    if(head==null){
      head=current?.next;
      head?.prev=null;
      return;
    }
    while(current!=null && current.data!=value){
      current=current.next;
    }
    if(current==null){
      print('value no found');
      return;
    }
    if(current.next!=value){
      current.next?.prev=current.prev;
    }
    if(current.prev!=value){
      current.prev?.next=current.next;
    }
    return;
  }

  display(){
    Node?current=head;
    while(current!=null){
      print(current.data);
      current=current.next;
    }
  }
}
void main(){
  DLinked obj = DLinked();
  obj.append(10);
  obj.append(20);
  obj.append(30);
  obj.append(40);
  obj.append(50);

  // obj.reverse();
 obj.delete(10);
obj.display();

}