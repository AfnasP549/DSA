class Node{
  int data;
  Node? next;
  Node? prev;
  Node(this.data);
}
class DLinkedList{
  Node? head;
  Node? tail;
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

  displayReverse(){
    Node? current= tail;
    while(current!=null){
      print(current.data);
      current=current.prev;
    }
  }

  void insertAtPosition(int pos , int value){
    Node newnode= Node(value);
    Node? current= head;
    int currentIndex=0;

    if(head==null){
      head=newnode;
      tail=newnode;
    }
    if(pos==0){
      newnode.next=head;
      head?.prev=newnode;
      head=newnode;
    }

    while(current?.next!=null && currentIndex<pos-1){
      current=current?.next;
      currentIndex++;
    }
    if(current?.next==null){
      tail?.next=newnode;
      newnode.prev=tail;
      tail=newnode;

    }else{
      newnode.next=current?.next;
      newnode.prev=current;
      current?.next?.prev=newnode;
      current?.next=newnode;
    }



  }
}
void main(){
  DLinkedList obj=DLinkedList();
  obj.append(1);
  obj.append(2);
  obj.append(3);
  obj.append(4);
  obj.append(5);

  obj.insertAtPosition(2, 100);
  obj.insertAtPosition(3, 150);
  obj.display();
}