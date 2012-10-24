metacello
frameMethodElementFor: aBehavior selector: selector
    | theClass |
    theClass := aBehavior theNonMetaClass.
    ^ self elementCache
        add:
            (TZFrameMethodElement new
                isMeta: aBehavior isMeta;
                elementClass: theClass;
                elementClassName: theClass name;
                selector: selector;
                category: (aBehavior categoryOfSelector: selector asSymbol);
                setSource;
                yourself)