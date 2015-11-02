accessing
newClassTemplateFor: superClassName subclass: className category: category
  ^ superClassName , ' subclass: ' , className printString
    ,
      '
	instVarNames: #()
	classVars: #()
	classInstVars: #()
	poolDictionaries: #()
	inDictionary: ''''
	category: '
    , category printString