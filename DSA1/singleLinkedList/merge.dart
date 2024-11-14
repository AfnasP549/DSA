//!merge two linked list

class Node {
  int data;
  Node? next;
  Node(this.data);
}

class LinkedList {
  Node? head;
  Node? tail;

  append(int data) {
    Node newnode = Node(data);
    if (head == null) {
      head = newnode;
    } else {
      tail?.next = newnode;
    }
    tail = newnode;
  }

  void display() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void merge(LinkedList List2) {
    Node? current=head;
    if (head == null) {
      head=List2.head;
    }
    while(current?.next!=null){   
      current=current?.next;
    }
    current?.next = List2.head;
  }
}

void main(){
  LinkedList obj= LinkedList();
  obj.append(1);
  obj.append(2);
  obj.append(3);

 // obj.display();

  LinkedList List2 = LinkedList();
  List2.append(10);
  List2.append(20);
  List2.append(30);

  List2.merge(obj);
  List2.display();


}
