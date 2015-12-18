as yet unclassified
defaultLimitServerObjArray
"This method is supposed to work on tODE, shell as a global variable and classes and methods inside serverOn: blocks are Gemstones objects"
	^ (self shell onServerDo:[(SystemRepository buildLimitSetForRefPathScan) collect: [:o | o asOop]])