as yet unclassified
cityEvolution
	"self new cityEvolution"
	| b |
	b := RTMapBuilder new.
	
	b countries: RTMapBuilder southAmerica.
	b cities: #(
		#('Santiago' #(332724 507296 696231 952075 1353400 1907378 2436398 3650541 4679900 5822316))
		#('Buenos Aires' #(950891 1800000 2200000 2700000 2970000 2966634 2972453 2922829 2965403 2776138))
		#('Sao Paulo' #(240000 400000 900000 1300000 2000000 3700000 5800000 8400000 9500000 10300000))
		#('Lima' #(120000 198875 400000 661508 1200000 1901927 3418452 4835793 6386308 7000000))
		#('Bogota' #(0 0 0 325650 715250 1697311 2855065 4000000 5200000 7000000))
		) named: [ :c | c at: 1 ].
		
	b cities evolveAt: 2
		through: #(1910 1920 1930 1940 1950 1960 1970 1980 1990 2000). " This list is only used for changing a label "
	
	" Cities' pop-ups show their population "
	b cities withPopup: [ :c |
		|population|
		population := (c at: 2) currentValue.
		(c at: 1), ': ', (population = 0 ifTrue: ['no data'] ifFalse: [((population / 1000000 roundTo: 0.01) asString), 'M'])
	].
	
	" Cities' size and color depend on the population "
	b cities shape
		size: [ :c | (c at: 2) currentValue /50000 + 10 ];
		if: [ :c | (c at: 2) currentValue < 1000000 ] fillColor: (Color green alpha: 0.5);
		if: [ :c | (c at: 2) currentValue >= 1000000 and: (c at: 2) currentValue < 5000000 ] fillColor: (Color yellow alpha: 0.5);
		if: [ :c | (c at: 2) currentValue >= 5000000 ] fillColor: (Color red alpha: 0.5);
		if: [ :c | (c at: 2) currentValue = 0 ] fillColor: (Color black alpha: 0.5).
	
	" We set the countries' colors, scale, and pop-up "
	b color: Color veryVeryLightGray.
	b scale: 3.
	b withPopup.
	
	b open.