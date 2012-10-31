private
processSubObjectsOf: object
    object
        stonProcessSubObjects: [ :each | 
            each isStonReference
                ifTrue: [ self visited add: (self resolveReference: each) ]
                ifFalse: [ 
                    self processSubObjectsOf: each.
                    each ] ]
        visited: self visited