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
  display(){
    Node? current= head;
    print(current?.data);
    current=current?.next;
  }
  List<int> removemidd(List<int> arr) {
  int mid = arr.length ~/ 2;

  List<int> newArr = [...arr]..removeAt(mid);

  return newArr;
}

void main(List<String> args) {
  List<int> arr = [10, 20, 5655, 30, 40];

  print(arr);

  List<int> newArr = removemidd(arr);

  print("after removing array  : $newArr");
}
}