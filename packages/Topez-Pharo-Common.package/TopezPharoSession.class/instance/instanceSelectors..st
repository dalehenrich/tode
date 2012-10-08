api
instanceSelectors: classProxy
    ^ (classProxy native selectors collect: [ :each | each asString ]) sort