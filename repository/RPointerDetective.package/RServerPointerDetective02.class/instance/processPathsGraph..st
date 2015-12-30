as yet unclassified
processPathsGraph: aNode
"Here we are going to extract the full graph, create all nodes and fill their pointersTo so in that case of scan we enter onlyOnce this method"
	|result third |
			result := aNode wrapper strongPointersToWrappedOnServerExcept: (self limitServerObjArray) withShell: self shell.
				third := result third select: [:each | each size >1 ].
				 third do: [ :rt |
									
				|rtTemp|
				rtTemp := rt reverse allButFirst.
				rt reverse allButFirst allButLast do: [ :n |
					rtTemp := rtTemp allButFirst.
					
					(self nodeFor: n) wrapper addPointersTo: (self nodeFor: (rtTemp first))  
					].
				(self nodeFor: (rt allButLast reverse last)) wrapper pointersTo: nil.
				].

				^ ( third collect: [ :rd | (rd allButLast last) ]) asIdentitySet.