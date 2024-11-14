  class Node{
    int data;
    Node? next;
    Node(this.data);
  }
  class LinkedList{
    Node?head;
    Node?tail;
    addNode(int data){
      Node newnode=Node(data);
      if(head==null){
        head=newnode;
      }else{
        tail?.next=newnode;
      }
      tail=newnode;
    }
    display(){
      Node?current= head;
      while(current!=null){
        print(current.data);
        current=current.next;
      }
    }
  inserAtPos(int pos, int value){
    Node newnode = Node(value);
    Node? current = head;
    int currentIndex=0;

    if(pos==0){
      newnode.next=head;
      head=newnode;
      return;
    }
    while(current!=null && currentIndex<pos-1){
      current=current.next;
      currentIndex++;
    }
    newnode.next= current?.next;
      current?.next=newnode;
  }
  }
  void main(){
    LinkedList obj = LinkedList();
    obj.addNode(10);
    obj.addNode(20);
    obj.addNode(30);
    obj.addNode(40);
    obj.addNode(50);

    obj.display();
    print('new');

    obj.inserAtPos(3, 1000);
    obj.display();

  }