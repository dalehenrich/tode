editting
editInstanceSelectorsFor: classProxy inWindow: windowIdOrNil at: windowLocation
    | templateElement |
    templateElement := TZTemplateMethodElement new
        elementClass: classProxy;
        isMeta: false;
        elementClassName: classProxy asTopezProxy proxyClassName;
        selector: #'the newMethodTemplate';
        category: ClassOrganizer default;
        source: Object sourceCodeTemplate;
        yourself.
    ^ self
        editList: (self instanceSelectors: classProxy asTopezProxy)
        selection: nil
        templateElement: templateElement asTopezProxy
        label: classProxy asTopezProxy proxyClassName asTopezNative
        inWindow: (self windowIdNamed: #'instanceSelectors')
        at: 'instanceSelectors'