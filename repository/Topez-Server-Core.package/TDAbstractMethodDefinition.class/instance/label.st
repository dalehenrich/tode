as yet unclassified
label
  ^ self isMeta
    ifTrue: [ self theClassName , ' class>>' , self selector ]
    ifFalse: [ self theClassName , '>>' , self selector ]