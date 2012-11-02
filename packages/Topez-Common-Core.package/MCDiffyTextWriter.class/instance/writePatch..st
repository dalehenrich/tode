as yet unclassified
writePatch: aPatch
    aPatch operations asSortedCollection
        do: [ :ea | 
            ea isRemoval
                ifTrue: [ self writeRemoval: ea ].
            ea isAddition
                ifTrue: [ self writeAddition: ea ].
            ea isModification
                ifTrue: [ self writeModification: ea ].
            stream cr ]