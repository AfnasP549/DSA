
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
  deleteAtPos(int position){
    Node? current= head;
    int currentIndex=0;
    if(position==0 && current!=null){
      head=head?.next;
    }
    while(current!=null && currentIndex<position-1 ){
      current=current.next;
      currentIndex++;
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
}

void main(){
  LinkedList l= LinkedList(10, 20, 30);
  print('old');
  l.display();
  print('new');
  l.deleteAtPos(0);
  l.display();
}