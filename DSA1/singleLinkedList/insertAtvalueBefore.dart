class Node{
  int data;
  Node? next;
  Node(this.data);
}
class LinkedList{
  Node?head;
  Node?tail;
  void addNode(int value){
    Node newnode=Node(value);
    Node? current =head;
    if(head==null){
      head=newnode;
    }else{
      tail?.next=newnode;
    }
    tail=newnode;
  }
  void display(){
    Node? current=head;
    while(current!=null){
      print(current.data);
      current=current.next;
    }
  }
  void insertBeforeValue(int newNode, int value){
    Node newnode= Node(newNode);
    Node? current=head;
    Node? previous;

    if(head==null){
      print('error');
      return;
    }
    if(head?.data==value){
      newnode.next=head;
      head=newnode;
    }

    while(current!=null && current.data!=value){
      previous=current;
      current=current.next;
    }

    if(current!=null){
      previous?.next=newnode;
      newnode.next=current;
    }else{
      print('value is not found');
    }
  }
}

void main(){
  LinkedList obj= LinkedList();
  obj.addNode(1);
  obj.addNode(2);
  obj.addNode(3);
  obj.addNode(4);
  obj.addNode(5);

  obj.display();
  print('new');
  obj.insertBeforeValue(1000, 3);
  obj.display();
}