metacello
methodTemplateElementFor: aClass isMeta: isMeta
    ^ self elementCache
        add:
            (TZTemplateMethodElement new
                elementClass: aClass;
                isMeta: isMeta;
                elementClassName: aClass name;
                selector: #'the newMethodTemplate';
                category: ClassOrganizer default;
                source: Object sourceCodeTemplate;
                yourself)