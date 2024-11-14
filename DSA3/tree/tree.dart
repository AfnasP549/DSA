class Node{
  int data;
  Node?left;
  Node?right;
  Node(this.data);
}
class Tree{
  Node?root;

  insert(int value){
    if(root==null){
      root = Node(value);
      return;
    }
    List<Node>queue=[];
    queue.add(root!);

    while(queue.isNotEmpty){
      Node current = queue.removeAt(0);

      if(current.left==null){
        current.left=Node(value);
        break;
      }else{
        queue.add(current.left!);
      }

      if(current.right==null){
        current.right=Node(value);
        break;
      }else{
        queue.add(current.right!);
      }
    }
  }
 
  preorder(Node?node){
    if(node==null) return;
    print(node.data);
    preorder(node.left);
    preorder(node.right);
  }
}
void main(){
  Tree obj = Tree();
  obj.insert(10);
  obj.insert(20);
  obj.insert(30);

  obj.preorder(obj.root);
}

