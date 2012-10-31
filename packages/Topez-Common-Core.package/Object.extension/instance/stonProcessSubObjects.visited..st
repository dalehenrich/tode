*topez-common-core
stonProcessSubObjects: block visited: visitedStonSet
    (visitedStonSet includes: self)
        ifTrue: [ ^ self ].
    visitedStonSet add: self.
    self stonProcessSubObjects: block