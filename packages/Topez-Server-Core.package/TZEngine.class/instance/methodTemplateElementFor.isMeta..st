metacello
methodTemplateElementFor: aClass isMeta: isMeta
    ^ TZTemplateMethodElement new
        elementClass: aClass;
        isMeta: isMeta;
        elementClassName: aClass name;
        selector: #'the newMethodTemplate';
        category: ClassOrganizer default;
        source: Object sourceCodeTemplate;
        yourself