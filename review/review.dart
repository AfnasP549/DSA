class Node{
  int data;
  Node?left;
  Node?right;
  Node(this.data);
}
class Tree{
  Node?root;
  insert(int value){
    root= insertNode(root, value);
  }
  insertNode(Node?node, int value){
    if(node==null){
      return Node(value);
    }
    if(value<node.data){
      node.left = insertNode(node.left, value);
    }
    if(value>node.data){
      node.right= insertNode(node.right, value);
    }
    return node;
  }

  preorder(Node?node){
    if(node==null)return;
    print(node.data);
    preorder(node.left);
    preorder(node.right);
  }
}

void main(){
  Tree obj =Tree();
  obj.insert(30);
  obj.insert(60);
  obj.insert(20);
  obj.insert(10);
  obj.insert(50);

  obj.preorder(obj.root);

}