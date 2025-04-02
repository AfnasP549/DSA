class Node{
  int data;
  Node?left;
  Node?right;
  Node(this.data);
}
class BTS{
  Node? root;
  insert(int value){
    root = insertNode(root, value);
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

  delete(int value){
    root = deleteNode(root, value);
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
    while(node!.left!=null){
      node = node.left;
    }
    return node;
  }



 bool contain(int value){
    return search(root, value);
  }
 bool search(Node?node, int value){
    if(node==null){
      return false;
    }
    if(node.data==value){
      return true;
    }
    if(value<node.data){
      return search(node.left, value);
    }else{
      return search(node.right, value);
    }
  }

  

  findClosest(Node? node, int target){
    int closest = node!.data;
    while(node!=null){
      if((target-closest).abs()>(target-node.data).abs()){
        closest = node.data;
      }
      if(target<node.data){
        node= node.left;
      }else if(target>node.data){
        node = node.right;
      }else{
        break;
      }
    }
    return closest;
  }

  preorder(Node?node){
    if(node==null){
      return ;
    }
    print(node.data);
    preorder(node.left);
    preorder(node.right);
  }
}
void main(){
  BTS obj  = BTS();
  obj.insert(30);
  obj.insert(20);
  obj.insert(10);
  obj.insert(50);
  obj.insert(40);

  obj.delete(30);
  obj.preorder(obj.root);
  // print(obj.contain(10));
  print('min node');
  print(obj.findMin(obj.root));
 // print(obj.findClosest(obj.root, 34));

}