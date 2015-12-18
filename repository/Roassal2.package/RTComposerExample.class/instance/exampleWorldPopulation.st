sources
exampleWorldPopulation

	
	| composer v b countries cn grapher ds |
	composer := RTComposer new.
	v := composer view.
	
	"========"
	b := RTMapBuilder new.	
	b view: v.		
		
	countries := RTMapBuilder countriesPopulation select: [ :c | RTSVGPath countries includes: (c at: 1) ].
	
	cn := RTNColorLinearNormalizer
		inContext: (countries collect: [:c | c at: 2])
		lowColor: (Color r:0.8 g:0.8 b:1)
		highColor: (Color r:0 g:0 b:0.3).
	
	b countries: countries named: [ :c | c at: 1 ].
	b color: [ :dic | cn rtValue: (dic at: 2) ].
	b withPopup: [ :c | (c at: 1) asString, ': ',(((c at: 2) / 1000000 asFloat round: 3) asString, ' Million') ].
	b build.
	composer group: #worldMap.

	"========"
	grapher := RTGrapher new.
	grapher extent: 600 @ 300.
	grapher view: v.
	ds := RTStackedDataSet new.
	ds barShape width: 5; color: Color blue.
	ds points: ((countries reverseSortedAs: #second) copyFrom: 1 to: 50).
	ds y: #second.
	ds interaction popupText.
	grapher add: ds.
	grapher axisX noLabel; noTick; title: 'countries'.
	grapher axisY noDecimal; labelConversion: [ :aValue | (aValue / 1000000) round: 2]; title: 'Millions'.
	grapher build.
	composer group: #graph.
	
	"========"
	composer move: #graph above: #worldMap.
	
	composer nameGroup: #worldMap as: 'Human distribution across the globe'.
	composer nameGroup: #graph as: 'Chart'.
	^ v