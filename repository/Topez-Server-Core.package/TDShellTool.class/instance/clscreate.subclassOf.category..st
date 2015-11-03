cls
clscreate: newName subclassOf: superClass category: category
  ^ self
    clscreate: newName
    subclassOf: superClass
    instanceVariableNames: ''
    classVariableNames: ''
    category: category