coding
addElement: element toClassElement: classElement
    "Poor man's double dispatching"

    self flag: #'hack'.	"deserves place in clickBlock land"
    (#('TZMethodElement' 'TZMessageElement') includes: element asTopezProxy proxyClassName)
        ifFalse: [ ^ false ].
    ^ self addMethodElement: element toClassElement: classElement