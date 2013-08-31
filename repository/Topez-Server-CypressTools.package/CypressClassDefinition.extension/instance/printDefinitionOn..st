*topez-server-cypresstools
printDefinitionOn: stream
  stream
    nextPutAll: self superclassName;
    nextPutAll: self kindOfSubclass;
    nextPut: $#;
    nextPutAll: self className;
    cr;
    tab;
    nextPutAll: 'instanceVariableNames: ';
    store: self instanceVariablesString;
    cr;
    tab;
    nextPutAll: 'classVariableNames: ';
    store: self classVariablesString;
    cr;
    tab;
    nextPutAll: 'poolDictionaries: ';
    store: self poolDictionaryNames;
    cr;
    tab;
    nextPutAll: 'category: ';
    store: self category asString	"do not include   options:   for Smalltalk chunk format"