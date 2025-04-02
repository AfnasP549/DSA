
class Node{
  int data;
  Node? next;
  Node(this.data);
}
class LinkedList{
  Node? head;
  Node? tail;
  void addNode(int data){
    Node newnode= Node(data);
    if(head==null){
      head=newnode;
    }else{
      tail?.next=newnode;
    }
    tail=newnode;
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

     List<int>arr =[1,2,3,4,5,6,7,8,9];
    LinkedList obj= LinkedList();
    for(int element in arr){
      obj.addNode(element);
    }
    obj.display();
  }