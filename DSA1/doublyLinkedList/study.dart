class Node{
  int data;
  Node?next;
  Node?prev;
  Node(this.data);
}
class DLinkedList{
  Node?head=null;
  Node?tail=null;
  append(int data){
    Node newnode = Node(data);
    if(head==null){
      head=newnode;
      tail=newnode;
    }else{
      tail?.next=newnode;
      newnode.prev=tail;
    }
    tail=newnode;
  }

  delete(int value){
    //deleting head
    Node?current=head;
    if(current!=null && current.data==value){
      head=current.next;
      head?.prev=null;
      return;
    }
    while(current!=null && current.data!=value){
      current=current.next;
    }
    if(current==null){
      print('data not available to delete');
      return;
    }
    if(current.next!=null){
      current.next!.prev=current.prev;
    }
    if(current.prev!=null){
      current.prev!.next=current.next;
    }
    return;
  }


//!rev
  void reverse() {
    Node? current = head;
    Node? temp = null;

    // Traverse the list and swap next and prev pointers for each node
    while (current != null) {
      temp = current.prev; // Store the current node's previous
      current.prev = current.next; // Swap next to prev
      current.next = temp; // Swap prev to next
      current = current.prev; // Move to the next node (which is now prev)
    }

    // Swap head and tail pointers
    if (temp != null) {
      head = temp.prev; // Update the head to the last node
    }
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
  DLinkedList obj=DLinkedList();
  obj.append(10);
  obj.append(20);
  obj.append(30);
  obj.append(40);
  obj.append(50);

 // obj.delete(10);
 obj.reverse(); 
 obj.display();

}