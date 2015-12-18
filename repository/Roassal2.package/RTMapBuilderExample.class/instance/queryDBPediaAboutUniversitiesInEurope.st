dbPedia
queryDBPediaAboutUniversitiesInEurope

"
| map locations rawData rawData2 rawData3 |
map := RTMapBuilder new.

map countries: #('France' 'Spain' 'Italy').
map color: Color veryVeryLightGray.

rawData := DBPediaSearch universitiesIn: 'France'.
rawData2 := ((NeoJSONReader fromString: rawData) at: #results) at: #bindings.
rawData3 := rawData2 select: [ :d | d keys includesAll: #('label' 'long' 'lat') ] thenCollect: [ :d | { (Float readFrom: ((d at: 'long') at: 'value')) . (Float readFrom: ((d at: 'lat') at: 'value')) . (d at: 'label' ) at: 'value' } ].
locations := rawData3.
locations do: [ :array |
	map cities addCityNamed: array third location: array second @ array first ].
map cities shape size: 8; color: (Color blue alpha: 0.03).
map cities: (locations collect: #third).



rawData := DBPediaSearch universitiesIn: 'Italy'.
rawData2 := ((NeoJSONReader fromString: rawData) at: #results) at: #bindings.
rawData3 := rawData2 select: [ :d | d keys includesAll: #('label' 'long' 'lat') ] thenCollect: [ :d | { (Float readFrom: ((d at: 'long') at: 'value')) . (Float readFrom: ((d at: 'lat') at: 'value')) . (d at: 'label' ) at: 'value' } ].
locations := rawData3.
locations do: [ :array |
	map cities addCityNamed: array third location: array second @ array first ].
map cities shape size: 8; color: (Color blue alpha: 0.03).
map cities: (locations collect: #third).

rawData := DBPediaSearch universitiesIn: 'Spain'.
rawData2 := ((NeoJSONReader fromString: rawData) at: #results) at: #bindings.
rawData3 := rawData2 select: [ :d | d keys includesAll: #('label' 'long' 'lat') ] thenCollect: [ :d | { (Float readFrom: ((d at: 'long') at: 'value')) . (Float readFrom: ((d at: 'lat') at: 'value')) . (d at: 'label' ) at: 'value' } ].
locations := rawData3.
locations do: [ :array |
	map cities addCityNamed: array third location: array second @ array first ].
map cities shape size: 8; color: (Color blue alpha: 0.03).
map cities: (locations collect: #third).


map scale: 5.

map render.
map view openInWindowSized: 1000 @ 500.
"