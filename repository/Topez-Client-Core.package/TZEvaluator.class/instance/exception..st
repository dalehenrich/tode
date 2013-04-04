proxy exception
exception: anObject

    exception := anObject.
anObject ifNotNil: [ self topez setInstance: anObject context "stash proxy in a place where I can inspect it"]