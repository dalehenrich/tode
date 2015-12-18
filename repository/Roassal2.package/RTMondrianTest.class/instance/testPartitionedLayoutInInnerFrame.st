tests - frames
testPartitionedLayoutInInnerFrame

	b := RTMondrian new.
	b node: 5 forIt: [ 
		b node: 'hello'.
		b layout
			for: [ :str | str size > 5 ] use: RTGridLayout new;
			horizontalLine ].
	b layout grid.
	b build.