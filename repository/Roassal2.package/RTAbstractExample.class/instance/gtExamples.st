accessing
gtExamples
	"Return a list of RTEXampleSelection. This is necessary for "
	^ (self class selectors 
			select: [ :symbol | (symbol beginsWith: 'example') and: [ (symbol endsWith: 'Icon') not ] ])	
				collect: [ :symbol | RTExampleSelection new provider: self; selector: symbol ]