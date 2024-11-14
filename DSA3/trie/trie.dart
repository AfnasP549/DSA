class TrieNode{
  Map<String, TrieNode> children={};
  bool isEndofWord = false;
}
class Trie{
  final TrieNode root = TrieNode();

  void insert(String word){
    // node for traversing
    TrieNode node = root;
    for(int i=0; i<word.length;i++){
      String char = word[i];
      //if children does not exist , create a new node
      if(!node.children.containsKey(char)){
        node.children[char] = TrieNode();
      }
       // Move to the next node (child)
       node = node.children[char]!;
    }
    // Mark the end of the word
    node.isEndofWord = true;
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
    return node.isEndofWord;
  }

  bool startWith(String prefix){
    TrieNode node = root;
    for(int i= 0; i<prefix.length; i++){
      String char = prefix[i];

      if(!node.children.containsKey(char)){
        return false;
      }
      node = node.children[char]!;
    }
    return true;
  }

  collectwords(TrieNode? node, String prefix, List result) {
    if (node!.isEndofWord) {
      result.add(prefix);
    }
    for (var char in node.children.keys) {
      collectwords(node.children[char], prefix + char, result);
    }
  }

  getallwords() {
    List result = [];
    collectwords(root, '', result);
    return result;
  }

  List<String> autoSuggest(String prefix){
    TrieNode node = root;
    for(int i=0;i<prefix.length;i++){
      String char = prefix[i];

      if(!node.children.containsKey(char)){
        node.children[char]= TrieNode();
      }
      node= node.children[char]!;
    }
    List<String>suggestion=[];
    collectwords(node, prefix, suggestion);
    return suggestion;

  }

}

void main(){
  Trie obj = Trie();
  obj.insert('Apple');
  obj.insert('banana');
  obj.insert('App');
  obj.insert('Mango');

  print(obj.getallwords());

  print(obj.search('Apple'));

  print(obj.startWith('Appe'));

  print(obj.autoSuggest('M'));
  


}