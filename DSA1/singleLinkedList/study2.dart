class Node {
  int data;
  Node? next;

  Node(this.data);
}
//^ LINKED lIST CLASS

class LinkedList {
  Node? head;
  LinkedList(int data1, int data2, int data3) {
    head = Node(data1);
    head?.next = Node(data2);
    head?.next?.next = Node(data3);
  }


//^INSERT AT POSITION

  void insertAtPos(int pos, int data) {
    Node? newNode = Node(data);
    Node? current = head;
    int currentIndex = 0;

    while (current != null && currentIndex < pos - 1) {
      current = current.next;
      currentIndex++;
    }
    newNode.next = current?.next;
    current?.next = newNode;
  }

//^ PRINT LIST

  void PrinList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}


//^ MAIN

void main(List<String> args) {
  LinkedList list = LinkedList(10, 20, 40);

  print("old List");
  list.PrinList();

//* INSERT AT POS
  list.insertAtPos(2, 30);

  print("new List");
  list.PrinList();
}