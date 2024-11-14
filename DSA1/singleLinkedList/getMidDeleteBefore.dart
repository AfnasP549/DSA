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
  void getMidDeleteBefore(){
    Node? fast= head;
    Node? slow= head;
    Node? prevSlow;
    Node? prevofprevSlow;
    while(fast?.next!=null && fast?.next?.next!=null){
      fast= fast?.next?.next;
      prevofprevSlow=prevSlow;
      prevSlow=slow;
      slow=slow?.next;
    }
    if(prevofprevSlow!=null && prevofprevSlow.next!=null){
      prevofprevSlow.next=prevofprevSlow.next?.next;
    }else if(prevSlow==head){
      head=head?.next;
    }
  }
}
void main(){
  LinkedList obj= LinkedList();
  obj.append(10);
  obj.append(20);
  obj.append(30);
  obj.append(40);
  obj.append(50);
  obj.display();

  print('new');
  obj.getMidDeleteBefore();

  obj.display();
}