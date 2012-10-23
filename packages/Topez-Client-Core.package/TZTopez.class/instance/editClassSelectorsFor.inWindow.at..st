editting
editClassSelectorsFor: classProxy inWindow: windowIdOrNil at: windowLocation
    | templateElement |
    templateElement := TZTemplateMethodElement new
        elementClass: classProxy;
        isMeta: true;
        elementClassName: classProxy asTopezProxy proxyClassName;
        selector: #'the newMethodTemplate';
        category: ClassOrganizer default;
        source: Object sourceCodeTemplate;
        yourself.
    ^ self
        editList: (self classSelectors: classProxy asTopezProxy)
        selection: nil
        templateElement: templateElement asTopezProxy
        label: classProxy asTopezProxy proxyPrintString asTopezNative , ' class'
        inWindow: windowIdOrNil
        at: windowLocation