benchmarking
benchmark

"

[ 100 timesRepeat: [| b | b := RTMondrianViewBuilder new.
b shape rectangle
	width: [ :c | c numberOfVariables * 4];
	height: #numberOfMethods;
	linearFillColor: #numberOfLinesOfCode within: RTShape withAllSubclasses.
b nodes: RTShape withAllSubclasses.
b edgesFrom: #superclass.
b treeLayout.
b build] ] timeToRun

 0:00:00:00.393"

"
[ 100 timesRepeat: [|b| b := RTMondrian new.
b shape rectangle
	width: [ :c | c numberOfVariables * 4];
	height: #numberOfMethods;
	linearFillColor: #numberOfLinesOfCode within: RTShape withAllSubclasses.
b nodes: RTShape withAllSubclasses.
b edges connectFrom: #superclass.
b layout tree.
b build ] ] timeToRun
 0:00:00:00.393"