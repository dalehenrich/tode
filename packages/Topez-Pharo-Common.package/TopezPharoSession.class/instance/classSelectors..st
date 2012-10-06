as yet unclassified
classSelectors: classProxy
    ^ (classProxy native class selectors collect: [ :each | each asString ]) sort