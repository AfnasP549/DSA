class TrieNode{
  Map<String, TrieNode>children={};
  bool isEndofWord=false;
}
class Trie{
  TrieNode root = TrieNode();
  insert(String word){
    TrieNode node = root;
    for(int i =0; i<word.length;i++){
      String char = word[i];

      if(!node.children.containsKey(char)){
        node.children[char]=TrieNode();
      }
      node= node.children[char]!;
    }
    node.isEndofWord=true;
  }

  List<String>autoSuggest(String prefix){
    TrieNode node = root;
    for(int i=0;i<prefix.length;i++){
      String char = prefix[i];
      if(!node.children.containsKey(char)){
        node.children[char]=TrieNode();
      }
      node= node.children[char]!;
    }
    List<String>suggestion=[];
    collectWords(node, prefix, suggestion);
    return suggestion;
  }
  collectWords(TrieNode?node, String prefix, List result){
    if(node!.isEndofWord){
      result.add(prefix);
    }
    for(var char in node.children.keys){
      collectWords(node.children[char], prefix+char, result);
    }
  }
  getallWords(){
    List result=[];
    collectWords(root, '', result);
    return result;
  }

 bool search(String word){
    TrieNode node =root;
    for(int i =0;i<word.length;i++){
      String char = word[i];
      if(!node.children.containsKey(char)){
        return false;
      }
      node= node.children[char]!;
    }
    return node.isEndofWord;
  }

 bool startWith(String prefix){
    TrieNode node = root;
    for(int i=0;i<prefix.length;i++){
      String char= prefix[i];
      if(!node.children.containsKey(char)){
        return false;
      }
      node= node.children[char]!;
    }
    return true;
  }
}
void main(){
  Trie obj = Trie();
  obj.insert('Apple');
  obj.insert('word');

  print(obj.getallWords());
  print(obj.autoSuggest('A'));
  print(obj.search('Apple'));
  print(obj.startWith('A'));

}