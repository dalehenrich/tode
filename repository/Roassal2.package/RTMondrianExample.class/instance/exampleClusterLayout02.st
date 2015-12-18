sources
exampleClusterLayout02
| b |
b := RTMondrian new.
b shape circle
	size: 8;
	if: [ :c | c inheritsFrom: RTShape ] fillColor: Color blue;
	if: [ :c | c name endsWith: 'Builder' ] fillColor: Color red.

b nodes: RTObject withAllSubclasses.

b shape line
	color: (Color gray alpha: 0.1)";
	if: [ :f :t | f inheritsFrom: RTLayout ] fillColor: (Color green alpha: 0.2)".
b edges
	notUseInLayout;
	connectToAll: #dependentClasses.

b layout
	for: [ :c | c inheritsFrom: RTLayout ] use: RTForceBasedLayout new;
	for: [ :c | c inheritsFrom: RTShape ] use: RTForceBasedLayout new;
	for: [ :c | c inheritsFrom: RTInteraction ] use: RTForceBasedLayout new;
	for: [ :c | c inheritsFrom: RTBuilder ] use: RTForceBasedLayout new;
	for: [ :c | '*Example*' match: c name] use: RTForceBasedLayout new;
	circleWithRadius: 250.
b build.
^ b