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

    insertNode(Node?node, int value){
      if(node==null){
        return Node(value);
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
      root = deleteNode(root , value);
    }
    deleteNode(Node?node, int value){
      if(node==null){
        return null;
      }
      if(value<node.data){
        node.left = deleteNode(node.left, value);
      }
      else if(value>node.data){
        node.right = deleteNode(node.right, value);
      }
      else{
        if(node.left==null && node.right ==null){
          return null;
        }
        if( node.left==null){
          return node.right;
        }else if(node.right==null){
          return node.left;
        }
        Node?findvalue = findMin(node.right);
        node.data = findvalue!.data;
        node.right = deleteNode(node.right, findvalue.data);
      }
      return node;
      
    }

    findMin(Node?node){
      if(node!.left!=null){
        node = node.left;
      }
      return node;
    }
    seclarget(Node?node){
      if(node==null ||(node.left==null && node.right==null)){
        return null;
      }
      Node?parent;
      Node?current=node;
      while(current!.right!=null){
        parent=current;
        current= current.right;
      }
      if(current.left!=null){
        return finMax(current.left);
      }
      return parent?.data;
    }

    finMax(Node?node){
      if(node!.right!=null){
        node = node.right;
      }
      return node;
    }


    preorder(Node?node){
      if(node==null){
        return ;
      }
      preorder(node.left);
      print(node.data);
      preorder(node.right);
    }

  }

  void main(){
    BST obj = BST();
    obj.insert(10);
    obj.insert(20);
    obj.insert(30);
    obj.insert(40);
    obj.insert(50);


obj.delete(20);
    obj.preorder(obj.root);
    print(obj.seclarget(obj.root));
      }