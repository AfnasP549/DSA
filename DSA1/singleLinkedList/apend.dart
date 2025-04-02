
class Node{
  int data;
  Node? next;
  Node(this.data);
}
class LinkedList{
  Node? head=null, tail=null;
  append(int data){
    Node newnode=Node(data);
    if(head==null){
      head=newnode;
    }else{
      tail?.next=newnode;
    }
    tail=newnode;
  }

  //!reverse
   void reverse() {
    Node? current = head;
    Node? prev = null;
    Node? next = null;

    while (current != null) {
      next = current.next; // Save the next node
      current.next = prev; // Reverse the pointer
      prev = current;      // Move prev forward
      current = next;      // Move current forward
    }

    head = prev; // Update the head to the new head (last node in original list)
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
  LinkedList obj= LinkedList();
  obj.append(10);
  obj.append(20);
  obj.append(30);

  obj.display();
}