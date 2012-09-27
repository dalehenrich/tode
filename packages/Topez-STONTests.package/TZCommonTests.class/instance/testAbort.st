testing
testAbort
    | result x |
    result := self topez abort.
    result displayOptions: (TZTopezOptions new displayOops: false).
    self
        assert:
            (x := result printString)
                =
                    'System
 poolDictionaries			nil
 categorys			aGsMethodDictionary
	 tableSize			11
	 valueConstraint			SymbolSet
	 numElements			0
	 numCollisions			0
	 collisionLimit			11
	 keyConstraint			Symbol
 transientMethDicts			anArray( )
 superClass			Object
	 poolDictionaries			nil
	 categorys			aGsMethodDictionary
	 transientMethDicts			anArray( aGsSessionMethodDictionary)
	 superClass			nil
	 instVarNames			anArray( )
	 format			8192
	 methDicts			aGsMethodDictionary
	 constraints			anArray( )
	 classHistory			aClassHistory( Object)
	 primaryCopy			nil
	 instVarsInfo			1125899906846720
	 destClass			nil
	 classVars			nil
	 timeStamp			19/09/2012 12:26:32
	 name			#''Object''
	 extraDict			aSymbolDictionary( #''GSMetaMethodStampDict''->anIdentityKeyValueDictionary( ), #''comment''->''Object defines the basic protocol for all objects.  Every object is an
    instance of Object or of some subclass of Object.'', #''GSMetaMethodPragmaDict''->anIdentityKeyValueDictionary( ), #''GSMethodPragmaDict''->anIdentityKeyValueDictionary( ), #''GSMethodStampDict''->anIdentityKeyValueDictionary( ))
	 classCategory			nil
	 userId			''SystemUser''
	 subclasses			nil
 instVarNames			anArray( )
 format			32
 methDicts			aGsMethodDictionary
	 tableSize			29
	 valueConstraint			GsNMethod
	 numElements			0
	 numCollisions			0
	 collisionLimit			29
	 keyConstraint			Symbol
 constraints			anArray( )
 classHistory			aClassHistory( System)
	 name			#''System''
	 description			nil
	#1 System
 primaryCopy			nil
 instVarsInfo			-1151795604700000256
 destClass			nil
 classVars			nil
 timeStamp			19/09/2012 12:26:32
	 dayOfYear			263
	 milliseconds			69992580
	 year			2012
	 timeZone			aTimeZone
 name			#''System''
	#1 83
	#2 121
	#3 115
	#4 116
	#5 101
	#6 109
 extraDict			aSymbolDictionary( #''GSMetaMethodStampDict''->anIdentityKeyValueDictionary( ), #''comment''->''System is an abstract class that has no instances.  It implements class
 methods for object locking and for operations that are usually found in
 traditional operating systems.  The data curator may restrict user access to
 these messages.  For an explanation of the role of the data curator, refer to
 your GemStone System Administration Guide.
--- class Category:  Clustering
These methods are used in managing cluster buckets, the streams of disk pages
 in which objects are congregated during clustering.  Clustering is explained
 in the GemStone Programming Guide.
--- class Category:  Deprecated
Methods in this category are obsolete and are provided only for compatibility
 with earlier releases of GemStone.  They will be removed in a future release.
--- class Category:  Host System Access
In each of these file system access methods, it is best to specify the full
 path name of the server text file in the method''''s argument.

 Under Unix, be sure that the case of the argument matches the case of the Unix
 file name; Unix is case-sensitive.

 Also note that under Unix, each of these methods inherits environment
 variables from the GemStone session process, rather than from your user
 session.  In addition, the method performOnServer: invokes the Bourne shell,
 even if you use a different login shell.  For these reasons, you might want to
 avoid using environment variables in the arguments to these methods.
--- class Category:  Releasing Locks
GemStone maintains two sets of objects that you can manipulate with methods in
 this category.  The commit release locks set contains locked objects whose
 locks will be released as part of the next successful commit operation.  The
 commit-or-abort release locks set contains locked objects whose locks will be
 released as part of the next successful commit operation or abort operation.
 To gain complete control over the automatic releasing of locks at the end of a
 transaction, use these methods during the transaction to govern the membership
 of objects in these sets.
--- class Category:  Transaction Control
Transactions are discussed in detail in the GemStone Programming Guide.
'', ...)
	 tableSize			5
	 collisionLimit			2500
	 numElements			3
	 numCollisions			1
	#1 nil
	#2 anIdentityCollisionBucket
	#3 nil
	#4 nil
	#5 nil
	#6 nil
	#7 #''GSMetaMethodPragmaDict''
	#8 #''GSMetaMethodPragmaDict''->anIdentityKeyValueDictionary( )
	#9 nil
	#10 nil
 classCategory			nil
 userId			''SystemUser''
	#1 83
	#2 121
	#3 115
	#4 116
	#5 101
	#6 109
	#7 85
	#8 115
	#9 101
	#10 114
 subclasses			nil
'