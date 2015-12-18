as yet unclassified
onServerFindAllReferencePathsToObject: firstObjectOop shell: atODEShell
	"This method is used for Gemstone server objects"
	self shell: atODEShell; showAllPath: true; limitServerObjArray: self defaultLimitServerObjArray; on: firstObjectOop.



	