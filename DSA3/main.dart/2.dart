class Graph{
  Map<int , List<int>>graph={};

  insert(int vertex, int edge, [bool isBidirectional=false]){
    if(!graph.containsKey(vertex)){
      graph[vertex]=[];
    }
    if(!graph.containsKey(edge)){
      graph[edge]=[];
    }
    graph[vertex]?.add(edge);
    if(isBidirectional){
      graph[edge]?.add(edge);
    }
  }

  display(){
    graph.forEach((key, value) {
      print('$key:$value');
    },);

  }

  bfs(int vertex){
    Set<int>visited={};
    List<int>queue=[];

    visited.add(vertex);
    queue.add(vertex);

    while(queue.isNotEmpty){
      int current = queue.removeAt(0);

      for(var i in graph[current]! ){
        if(!visited.contains(i)){
          visited.add(i);
          queue.add(i);
        }
      }
    }
    return visited;
  }

  dfs(int vertex){
    if(graph.containsKey(vertex)){
      Set<int>visited={};
      dfsHelper(vertex, visited);
      print(visited);
    }
  }
  dfsHelper(int vertex, Set<int>visited){
    visited.add(vertex);
    for(var i in graph[vertex]!){
      if(!visited.contains(i)){
        dfsHelper(i, visited);
      }
    }
    return visited;
  }
}
void main(){
  Graph obj =Graph();
  obj.insert(1, 2);
  obj.insert(1, 3);
  obj.insert(4,3);
  //obj.insert(2, 3);
  obj.insert(2, 4);
  obj.insert(4, 5);

  obj.display();
  print(obj.bfs(1));
  obj.dfs(1);

}