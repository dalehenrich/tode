convenience
toString: anObject level: level
    ^ self
        toString: anObject
        withOptions:
            (TZTopezOptions new
                level: level;
                yourself)