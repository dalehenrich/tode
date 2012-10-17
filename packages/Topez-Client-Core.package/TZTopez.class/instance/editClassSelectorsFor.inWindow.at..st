editting
editClassSelectorsFor: proxyClassElement inWindow: windowIdOrNil at: windowLocation
    | templateElement |
    templateElement := TZMethodElement new
        proxyClass: proxyClassElement proxyClass;
        isMeta: true;
        proxyClassName: proxyClassElement elementClassName;
        selector: #'the newMethodTemplate';
        category: ClassOrganizer default;
        source: Object sourceCodeTemplate;
        yourself.
    ^ self
        editList: (self classSelectors: proxyClassElement proxyClass)
        selection: nil
        templateElement: templateElement asTopezProxy
        label: proxyClassElement elementClassName asTopezNative , ' class'
        inWindow: windowIdOrNil
        at: windowLocation