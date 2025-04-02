class Node{
  int data;
  Node?left;Node?right;
  Node(this.data);
}
class BST{
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
  

 bool contains(int value){
    return search(root, value);
  }
  bool search(Node?node, int value){
    if(node==null){
      return false;
    }
    if(node==value){
      return true;
    }
    if(value<node.data){
      return search(node.left, value);
    }
    if(value>node.data){
      return search(node.right, value);
    }
    return true;
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
    }
    if(value>node.data){
      node.right= deleteNode(node.right, value);
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
      node.data= minNode.data;
      node.right=deleteNode(node.right, minNode.data);
    }
    return node;
  }
  findMin(Node?node){
    while(node!.left!=null){
      node = node.left;
    }
    return node;
  }

  findMax(Node?node){
    while(node!.right!=null){
      node=node.right;
    }
    return node.data;
  }
 findSecondLargest(Node? node) {
  if (node == null || (node.left == null && node.right == null)) {
    // No second largest if tree has no nodes or only one node
    return null;
  }

  Node? parent;
  Node? current = node;

  // Traverse to find the largest element
  while (current!.right != null) {
    parent = current;
    current = current.right;
  }

  // If the largest node has a left subtree, the second largest
  // is the maximum element in that left subtree.
  if (current.left != null) {
    return findMax(current.left);
  }
  

  // Otherwise, the second largest is the parent of the largest node.
  return parent?.data;

}
bool isBST(Node? node, [int? min, int? max]) {
    if (node == null) return true; // An empty tree is a valid BST.

    // Check if the node's value is within the valid range
    if ((min != null && node.data <= min) || (max != null && node.data >= max)) {
      return false;
    }

    // Recursively validate the left and right subtrees
    return isBST(node.left, min, node.data) && isBST(node.right, node.data,max);
}




  preorder(Node?node){
    if(node==null) return;
    print(node.data);
    preorder(node.left);
    preorder(node.right);
  }
}

void main(){
  BST obj = BST();
  obj.insert(30);
  obj.insert(40);
  obj.insert(10);
  obj.insert(20);
  obj.insert(70);

obj.preorder(obj.root);
print('delete');
obj.delete(30);
obj.preorder(obj.root);
print('search');
print(obj.contains(50));
obj.isBST(obj.root);
//print('min');

// print(obj.findMin(obj.root));
// print('max');
// print(obj.findMax(obj.root));
// print('2nd larget');
// print(obj.findSecondLargest(obj.root));

}