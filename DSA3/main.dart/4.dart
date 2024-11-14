class TrieNode{
  Map<String, TrieNode>children={};
  bool isENdofWord=false;

}
class Trie{
  TrieNode root= TrieNode();
  insert(String word){
    TrieNode node = root;
    for(int i=0; i<word.length;i++){
      String char= word[i];

      if(!node.children.containsKey(char)){
        node.children[char]= TrieNode();
      }
      node = node.children[char]!;
    }
    node.isENdofWord=true;
  }

  bool search(String word){
    TrieNode node = root;
    for(int i=0;i<word.length;i++){
      String char = word[i];
      if(!node.children.containsKey(char)){
        return false;
      }
      node= node.children[char]!;
    }
    return node.isENdofWord;
  }

  List<String>autoSuggest(String prefix){
    TrieNode node=root;
    for(int i=0;i<prefix.length;i++){
      String char = prefix[i];
      if(!node.children.containsKey(char)){
        node.children[char]= TrieNode();
      }
      node = node.children[char]!;
    }
    List<String>suggets=[];
    collectwords(node, prefix, suggets);
    return suggets;
  }
  collectwords(TrieNode? node, String prefix, List result){
    if(node!.isENdofWord){
      result.add(prefix);
    }
    for(var char in node.children.keys){
      collectwords(node.children[char], prefix+char, result);
    }
  }
  getallword(){
    List result=[];
    collectwords(root, '', result);
    return result;
  }

}

void main(){
  Trie obj = Trie();
  obj.insert('apple');
  obj.insert('app');
  obj.insert('orange');
  obj.insert('oran');
  obj.insert('banana');
  obj.insert('banana');

  print(obj.getallword());
  print(obj.autoSuggest('a'));
}