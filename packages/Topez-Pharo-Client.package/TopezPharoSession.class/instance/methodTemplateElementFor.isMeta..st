as yet unclassified
methodTemplateElementFor: classProxy isMeta: isMeta
    | theClass |
    theClass := classProxy asTopezProxy native theNonMetaClass.
    ^ TZTemplateMethodElement new
        elementClass: theClass;
        isMeta: isMeta;
        elementClassName: theClass name;
        selector: #'the newMethodTemplate';
        category: ClassOrganizer default;
        source: Object sourceCodeTemplate;
        yourself