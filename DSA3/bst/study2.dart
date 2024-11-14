class Node{
  int data;
  Node?left;Node?right;
  Node(this.data);
}
class BTS{
  Node? root;
  insert(int value){
    root = insertNode(root, value);
  }
  insertNode(Node?node, int value){
    if(node==null){
      return Node(value);
    }
    if(value<node.data){
      node.left= insertNode(node.left, value);
    }else if(value>node.data){
      node.right = insertNode(node.right, value);
    }
    return node;
  }

  delete(int value){
    root = deleteNode(root, value);
  }
  deleteNode(Node?node, int value){
    if(node==null){
      return null;
    }
    if(value<node.data){
      node.left = deleteNode(node.left, value);
    }else if(value>node.data){
      node.right = deleteNode(node.right, value);
    }else{
      if(node.left==null && node.right==null){
        return null;
      }
      if(node.left==null){
        return node.right;
      }else if(node.right==null){
        return node.left;
      }
      Node minNode = findMin(node.right);
      node.data = minNode.data;
      node.right = deleteNode(node.right, minNode.data);
    }
    return node;
  }
  findMin(Node?node){
    while(node?.left!=null){
      node=node?.left;
    }
  }

  inorder(Node?node){
    if(node==null) return;
    inorder(node.left);
    print(node.data);
    inorder(node.right);
  }
}
void main(){
  BTS obj = BTS();
  obj.insert(10);
  obj.insert(20);
  obj.insert(30);

  obj.inorder(obj.root);
  obj.delete(10);
  print('');
  obj.inorder(obj.root);


}
