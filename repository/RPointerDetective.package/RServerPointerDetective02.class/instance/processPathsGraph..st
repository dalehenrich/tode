as yet unclassified
processPathsGraph: aNode
"Here we are going to extract the full graph, create all nodes and fill their pointersTo so in that case of scan we enter onlyOnce this method"
	|result|
			result := aNode wrapper strongPointersToWrappedOnServerExcept: (self limitServerObjArray) withShell: self shell.
				result third do: [ :rt |
				|rtTemp|
				rtTemp := rt reverse allButFirst.
				rt reverse allButFirst allButLast do: [ :n |
					rtTemp := rtTemp allButFirst.
					
					(self nodeFor: n) wrapper pointersTo: {(self nodeFor: (rtTemp first))}  
					].
				(self nodeFor: (rt allButLast reverse last)) wrapper pointersTo: #().
				].

				^ (result third collect: [ :rd | (rd allButLast last) ]).