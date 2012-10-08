api
classSelectors: classProxy
    ^ (classProxy native class selectors collect: [ :each | each asString ]) sort