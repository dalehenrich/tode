api
internalInstanceElementsFor: instanceProxy indent: indent limit: limit into: coll
    instanceProxy named
        keysAndValuesDo: [ :instVarName :value | 
            | valueProxy |
            valueProxy := value asTopezProxy.
            coll add: (self createInstanceElementFor: valueProxy label: instVarName asString indent: indent).
            indent < limit
                ifTrue: [ 
                    self
                        internalInstanceElementsFor: valueProxy
                        indent: indent + 1
                        limit: limit
                        into: coll ] ].
    instanceProxy indexed
        doWithIndex: [ :value :index | 
            | valueProxy |
            valueProxy := value asTopezProxy.
            coll add: (self createInstanceElementFor: valueProxy label: index printString , '.' indent: indent).
            indent < limit
                ifTrue: [ 
                    self
                        internalInstanceElementsFor: valueProxy
                        indent: indent + 1
                        limit: limit
                        into: coll ] ]