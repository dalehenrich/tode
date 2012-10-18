metacello
methodElementForClass: aClass isMeta: isMeta selector: selector

	^TZMethodElement new
        isMeta: isMeta;
        elementClass: aClass;
        elementClassName: aClass name;
        selector: selector;
        category: (aClass categoryOfSelector: selector asSymbol);
        setSource;
        yourself