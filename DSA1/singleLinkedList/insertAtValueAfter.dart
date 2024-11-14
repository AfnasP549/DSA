class Node{
  int data;
  Node?next;
  Node(this.data);
}
class LinledList{
  Node? head=null, tail=null;
  void addNode(int data){
    Node newnode=Node(data);
    if(head==null){
      head=newnode;
    }else{
      tail?.next=newnode;
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
  //after the node
  inserAtVAlue(int value, int newNode){
    Node newnode=Node(newNode);
    Node? current = head;

    while(current!=null && current.data!=value){
      current=current.next;
    }

    if(current!=null){
      newnode.next=current.next;
      current.next=newnode;
    }else{
      print('error');
    }
  }
  
}
void main(){
 LinledList ovj=LinledList();
 ovj.addNode(1);
 ovj.addNode(2);
 ovj.addNode(3);
 ovj.addNode(4);
 ovj.addNode(5);

 ovj.display();

 ovj.inserAtVAlue(3, 1000);
 print('new');
 ovj.display();


}