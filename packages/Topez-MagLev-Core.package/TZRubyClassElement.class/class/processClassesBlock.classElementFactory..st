instance creation
processClassesBlock: classesBlock classElementFactory: classElementFactory
	^ self
		processClassesBlock: classesBlock
		elementBlock: [ :cl :indents | 
			classElementFactory newRubyClassElement
				elementClass: cl;
				elementClassName: cl name;
				indent: (indents at: cl);
				yourself ]