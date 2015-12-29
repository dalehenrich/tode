as yet unclassified
onServerFindAllReferencePathsToObject: firstObjectOop limitObjArray: anOopArray  shell: atODEShell
	"This method is used for Gemstone server objects"
	self shell: atODEShell; showAllPath: true; limitServerObjArray: anOopArray; on: firstObjectOop.



	