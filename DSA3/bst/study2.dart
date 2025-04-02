class Node{
  int data;
  Node?left;
  Node?right;
  Node(this.data);
}
class BST{
  Node?root;
  insert(int value){
    root = insertNode(root, value);
  }
  insertNode(Node? node, int value){
    if(node==null){
    return  Node(value);
    }
    if(value<node.data){
      node.left = insertNode(node.left, value);

    }
    if(value>node.data){
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
      Node?minValue = findMin(node.right);
      node.data = minValue!.data;
      node.right = deleteNode(node.right, minValue.data);
    }
    return node;
  }
  findMin(Node?node){
    while(node!.left!=null){
      node = node.left;
    }
    return node;
  }

  findSecondSmallest(Node?node){
     if(node==null || (node.left==null && node.right ==null)){
      return null;
     }
     Node?parent;
     Node?current = node;
     while(current?.left!=null){
      parent = current;
      current = current?.left;
     }
     if(current?.right!=null){
      return findMin(current?.right);
     }
     return parent?.data;
  }
  preorder(Node?node){
    if(node==null) return;
    print(node.data);
    preorder(node.left);
    preorder(node.right);
  }
  findsecondlargest(Node?node){
    if(node==null || (node.left==null && node.right ==null)){
      return null;
    }
    Node?parent;
    Node?current = node;
    while(current?.right!=null){
      parent = current;
      current = current?.right;
    }
    if(current?.left!=null){
      return findMax(node.left);
    }
    return parent?.data;
  }
  findMax(Node?node){
    while(node?.right!=null){
      node = node?.right;
    }
    return node;
  }
  bool search(int value){
    return contains(root, value);
  }
  contains(Node?node, int value){
    if(node==null){
    return  false;
    }
    if(value==node.data){
    return  true;
    }
    if(value<node.data){
      return contains(node.left, value);
    }
    if(value>node.data){
      return contains(node.right, value);
    }
  }
}

void main(){
  BST obj = BST();
  obj.insert(30);
  obj.insert(20);
  obj.insert(10);
  obj.insert(40);
  obj.insert(50);

  obj.preorder(obj.root);
  print('dalete');
  obj.delete(30);
  obj.preorder(obj.root);
  print('second smallest');
  print(obj.findSecondSmallest(obj.root));
  print('second largest');
  print(obj.findsecondlargest(obj.root));
  print('search');
  print(obj.search(20));
}