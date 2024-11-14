// class Node{
//   int data;
//   Node? next;
//   Node(this.data);
// }
// class LinkedList{
//   Node? head;
//   LinkedList(int i, int j, int k){
//     head= Node(i);
//     head?.next= Node(j);
//     head?.next?.next= Node(k);
//   }
//   deleteAtValue(int value){
//     if(head?.data==value){
//       head=head?.next;
//     }
//     Node? current=head;
//     while(current?.next!=null && current?.next?.data!=value){
//       current=current?.next;
//     }
//     if(current?.next!=null){
//       current?.next=current.next?.next;
//     }
//   }
//   display(){
//     Node? current=head;
//     while(current!=null){
//       print(current.data);
//       current=current.next;
//    }
//  }
// }
// void main(){
//   LinkedList l = LinkedList(20, 30, 40);
//   print('old');
//   l.display();
//   print('new');
//   l.deleteAtValue(20);
//   l.display();
// }


import 'dart:io';

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
  deleteAtValue(int value){
    Node? current=head;
      if(head?.data==value){
        head= head?.next;
      }

      while(current?.next!=null && current?.next?.data!=value){
        current=current?.next;
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
  LinkedList obj= LinkedList();
  obj.append(10);
  obj.append(20);
  obj.append(30);
 // obj.append(40);
  print('old ');
  obj.display();

  obj.deleteAtValue(10);
  print('new');
  obj.display();
}