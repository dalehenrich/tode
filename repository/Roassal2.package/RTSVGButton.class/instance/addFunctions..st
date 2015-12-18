adding
addFunctions: aStream
	aStream
		nextPutAll:
			'
    function button_' , self fixedName
				,
					'(evt) {
      var elements = document.getElementsByClassName("' , self fixedName
				,
					'");
      var color;
      for (e in elements) {
        value = ' , self fixedName
				,
					'_data[elements[e].id];
        ' , self changeFunction
				,
					' = value;
      }
    }
    var ' , self fixedName , '_data = { };'.
	self addContribution: aStream.