sources
exampleClassHierarchy

| b  |
b := RTCircularTreeMapBuilder new.

b
	baseradius: 200;
	weight: [ :cls | cls withAllSubclasses size].

b explore: Collection 
	using: #subclasses.

b build.
	^ b view