instance creation
oop: theOop classOop: theClassOop className: theClassName
    ^ self new
        oop: theOop
            indexedSize: 0
            namedSize: 0
            printString: ''
            classOop: theClassOop
            className: theClassName;
        yourself