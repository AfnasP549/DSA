class Node{
  int data;
  Node?next;
  Node(this.data);
}
class SLinked{
  Node? head= null;
  Node? tail= null;
  append(int value){
    Node newnode = Node(value);
    if(head==null){
      head= newnode;
    }
    else{
      tail?.next=newnode;
    }
    tail=newnode;
  }

  delete(int value){
    Node? current = head;
    if(head==null){
      print('List is empty');
      return;
    }
    if(head?.data==value){
      head= current?.next;
    }
    while(current?.next!=null && current?.next?.data!=value){
      current = current?.next;
    }
    if(current==null){
      print('value not found');
    }
    current?.next=current.next?.next;

  }

  display(){
    Node? current=head;
    while(current!=null){
      print(current.data);
      current=current.next;
    }
  }

  reverse(){
    Node?current=head;
    Node?next=null;
    Node?prev=null;
    while(current!=null){
      next=current.next;
      current.next=prev;
      prev=current;
      current=next;
    }
    head=prev;
  }

}
void main(){{

  List<int>arr = [43,2,3,5,63,8];
  SLinked obj = SLinked();
  for(var element in arr){
    obj.append(element);
  }
  obj.reverse();
  obj.display();
  
  // obj.append(10);
  // obj.append(20);
  // obj.append(30);
  // obj.append(40);
  // obj.append(50);

  // obj.display();
}}