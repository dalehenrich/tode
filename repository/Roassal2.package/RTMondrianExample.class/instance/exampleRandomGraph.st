sources
exampleRandomGraph

| nbOfNodes nbOfRandomEdges nodes edges b |

nbOfNodes := 40.
nbOfRandomEdges := 40.

nodes := 1 to: nbOfNodes.
edges := (1 to: nbOfRandomEdges) 
				collect: [ :notUsed | nodes atRandom -> nodes atRandom ].

"
In case you do not wish random data. You can set it manually. 
nodes := #(1 2 3 4 5).
edges := { 1 -> 2 . 1 -> 4 . 4 -> 3 }.
"

b := RTMondrian new.

b shape circle color: (Color black alpha: 0.5).
b nodes: nodes.

b shape line color: (Color gray alpha: 0.3).
b edges
	objects: edges from: #key to: #value.

b layout force.
^ b