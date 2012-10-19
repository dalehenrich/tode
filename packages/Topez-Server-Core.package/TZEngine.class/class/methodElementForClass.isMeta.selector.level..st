metacello
methodElementForClass: aClass isMeta: isMeta selector: selector level: level
    | element |
    element := self methodElementForClass: aClass isMeta: isMeta selector: selector.
    ^ self toString: element level: level