class Node{
  int data;
  Node? next;
  Node(this.data);
}
class LinkedList{
  Node? head;
  LinkedList(int i, int j, int k){
    head= Node(i);
    head?.next= Node(j);
    head?.next?.next= Node(k);
  }
  reverse(){
    Node? current=head;
    Node? previous=null;
    Node? next=null;
    while(current!=null){
      next=current.next;
      current.next=previous;
      previous=current;
      current=next;
    }
    head=previous;
  }
  display(){
    Node? current=head;
    while(current!=null){
      print(current.data);
      current=current.next;
    }
  }
}
void main(){
  LinkedList l = LinkedList(10, 20, 30);
  print("odl");
  l.display();
  print("new");
  l.reverse();
  l.display();
}