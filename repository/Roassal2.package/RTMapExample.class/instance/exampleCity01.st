sources
exampleCity01

	| b |
	b := RTMapBuilder new.
	
	b countries: RTMapBuilder southAmerica.
	b cities: #( " (name, population) pairs "
		#('Santiago' 6027000)
		#('Bogota' 6763000)
		#('Buenos Aires' 12801365)
		#('Brasilia' 2481000)
		#('Montevideo' 1338000)
		#('Lima' 8473000)
		#('La Paz' 789585)
		#('Quito' 1608000)
		#('Sao Paulo' 19889559)
		#('Caracas' 2104000))
		named: [ :c | c at: 1 ].
	
	" Cities' pop-ups show their population "
	b cities
		withPopup: [ :c | (c at: 1), ': ', (((c at: 2) / 1000000 roundTo: 0.01) asString), 'M'].
	
	" Cities' size and color depend on the population "
	b cities shape
		size: [ :c | (c at: 2)/300000 + 10 ];
		if: [ :c | (c at: 2) < 1000000 ] fillColor: (Color green alpha: 0.5);
		if: [ :c | (c at: 2) >= 1000000 and: (c at: 2) < 5000000 ] fillColor: (Color yellow alpha: 0.5);
		if: [ :c | (c at: 2) >= 5000000 ] fillColor: (Color red alpha: 0.5).
	
	" We define some routes and color them, then we set the pop-ups to show each route's length "
	b routes
		from: 'Santiago' toAll: #('Buenos Aires' 'Lima' 'Sao Paulo');
		from: 'Bogota' toAll: #('Sao Paulo' 'Brasilia' 'Quito');
		ifRoute: [ :r | r fromCityName = 'Bogota' ] lineColor: (Color brown);
		ifRoute: [ :r | r fromCityName = 'Santiago' ] lineColor: (Color blue);
		withPopup: #lengthString.
	
	" We set the countries' colors, scale, and pop-up "
	b color: Color veryVeryLightGray.
	b scale: 3.
	b withPopup.
	b build.
	^ b view