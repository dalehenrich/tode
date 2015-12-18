as yet unclassified
citiesExample2
	"self new citiesExample2"
	| b |
	b := RTMapBuilder new.	
	
	b countries: RTMapBuilder countries.
	b cities: #(
		#('New York City' 8337000)
		#('Washington, D.C.' 632323)
		#('Paris' 2211000)
		#('Santiago' 6027000)
		#('Shanghai' 23710000))
		named: [ :c | c at: 1 ].
		
	b cities withPopup.
	b cities shape
		size: [ :c | (c at: 2)/300000 + 10 ];
		color: (Color red alpha: 0.5).
	
	b routes
		from: 'Paris' toAll: #('Santiago' 'New York City' 'Washington, D.C.' 'Shanghai');
		color: Color blue;
		withPopup: #lengthString.
	
	b color: Color veryVeryLightGray.
	b open.