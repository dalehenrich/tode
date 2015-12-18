sources
exampleSparkline

| v cls s es |
v := RTView new.

cls := RTLayout withAllSubclasses.

s := RTSparkline new
		width: 50; height: 30;
		values: [ :c | (c methods collect: #numberOfLinesOfCode) sorted ].

es := s elementsOn: cls.
v addAll: es.
es @ RTPopup @ RTDraggable.
RTFlowLayout on: es.
^ v 