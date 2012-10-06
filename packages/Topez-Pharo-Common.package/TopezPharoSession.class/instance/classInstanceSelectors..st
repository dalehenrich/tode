api
classInstanceSelectors: classProxy
    ^ classProxy native selectors collect: [ :each | each asString ]