as yet unclassified
readme

"
Exporting to Amber

| exporter rootClasses |
exporter := P2AExporterV11 new.
rootClasses := Array with: TREvent with: TRObject with: TRTest.
rootClasses do: [ :c |
	c withAllSubclasses do: [ :cc | exporter addClass: cc ] ].
exporter fileOutAsString

 

"