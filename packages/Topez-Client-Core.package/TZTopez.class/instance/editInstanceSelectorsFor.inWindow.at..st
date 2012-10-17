editting
editInstanceSelectorsFor: proxyClassElement inWindow: windowIdOrNil at: windowLocation
    | templateElement |
    templateElement := TZMethodElement new
        proxyClass: proxyClassElement proxyClass;
        isMeta: false;
        proxyClassName: proxyClassElement elementClassName;
        selector: #'the newMethodTemplate';
        category: ClassOrganizer default;
        source: Object sourceCodeTemplate;
        yourself.
    ^ self
        editList: (self instanceSelectors: proxyClassElement proxyClass)
        selection: nil
        templateElement: templateElement asTopezProxy
        label: proxyClassElement elementClassName asTopezNative
        inWindow: (self windowIdNamed: #'instanceSelectors')
        at: 'instanceSelectors'