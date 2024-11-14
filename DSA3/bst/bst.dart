//second largest and smallest nokkanam


class Node{
  int data;
  Node? left;
  Node? right;
  Node(this.data);
}
class BinarySearch{
  Node?root;
   insert(int value){
    root= insertNode(root, value);
  }
  insertNode(Node? node, int value){
    if(node==null){
      return Node(value);
    }
    if(value<node.data){
      node.left = insertNode(node.left, value);
    }else{
      node.right = insertNode(node.right, value);
    }
    return node;
  }

 bool contains(int value){
    return searchnode(root, value);
  }
 bool searchnode(Node?node, int value){
    if(node==null){
      return false;
    }
    if(node.data == value){
      return true;
    }
    if(value<node.data){
      return searchnode(node.left, value);
    }else{
      return searchnode(node.right, value);
    }
  }

  delete(int value){
    root = deleteNode(root,value);
  }
  deleteNode(Node? node, int value){
    if(node==null){
      return null;
    }
    if(value<node.data){
      node.left = deleteNode(node.left, value);
    }else if(value>node.data){
      node.right = deleteNode(node.right, value);
    }else{
      //leaf
      if(node.left==null && node.right==null){
        return null;
      }
      if(node.left==null){
        return node.right;
      }else if(node.right==null){
        return node.left;
      }
      Node? minNode = findMin(node.right);
      node.data = minNode!.data;
      node.right = deleteNode(node.right, minNode.data);
    }
    return node;
  }
  findMin(Node?node){
    while(node?.left!=null){
      node = node?.left;
    }
  }


  void Preorder(Node? node){
    if(node==null) return;
    print(node.data);
    Preorder(node.left);
    Preorder(node.right);
  }

  void inorder(Node? node){
    if(node==null) return;
    inorder(node.left);
    print(node.data);
    inorder(node.right);

  }
  
  void postorder(Node?node){
    if(node==null) return;
    inorder(node.left);
    inorder(node.right);
    print(node.data);
  }
  
}

void main(){
  BinarySearch obj = BinarySearch();
  obj.insert(30);
  obj.insert(40);
  obj.insert(20);
  obj.insert(60);
  obj.insert(10);

  obj.Preorder(obj.root);
  print('inorder');
  obj.inorder(obj.root);
  print('postorder');
  obj.postorder(obj.root);

  print(obj.contains(10));
  print('after delete');
  obj.delete(20);
  obj.Preorder(obj.root);
  
}