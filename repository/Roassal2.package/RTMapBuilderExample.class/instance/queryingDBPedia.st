dbPedia
queryingDBPedia
"
Below I describe a small example that fetches some data about the US Universities from DBPedia and visualize them using Roassal2. 

Pick a fresh 3.0 image.

First, you need to load Hernán work, Sven’s NeoJSON, and Roassal 2 (If you are using a Moose Image, there is no need to load Roassal2 since it is already in):
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
Gofer it
  smalltalkhubUser: 'SvenVanCaekenberghe' project:  'Neo';
  package:  'ConfigurationOfNeoJSON';
  load.
((Smalltalk at: #ConfigurationOfNeoJSON) load).

Gofer it
  smalltalkhubUser: 'hernan' project: 'DBPedia';
  package: 'DBPedia';
  load.

Gofer it
  smalltalkhubUser: 'ObjectProfile' project:  'Roassal2';
  package:  'ConfigurationOfRoassal2';
  load.
((Smalltalk at: #ConfigurationOfRoassal2) loadBleedingEdge).

-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

Using Roassal2, I was able to render some data extracted from dbpedia:

-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
| map locations rawData rawData2 rawData3 |
map := RTMapBuilder new.

map countries: #('UnitedStates' 'Canada' 'Mexico').
map color: Color veryVeryLightGray.

rawData := DBPediaSearch universitiesInUS.
rawData2 := ((NeoJSONReader fromString: rawData) at: #results) at: #bindings.
rawData3 := rawData2 select: [ :d | d keys includesAll: #('label' 'long' 'lat') ] thenCollect: [ :d | { (Float readFrom: ((d at: 'long') at: 'value')) . (Float readFrom: ((d at: 'lat') at: 'value')) . (d at: 'label' ) at: 'value' } ].


locations := rawData3.
locations do: [ :array |
	map cities addCityNamed: array third location: array second @ array first ].
map cities shape size: 8; color: (Color blue alpha: 0.03).
map cities: (locations collect: #third).

map scale: 2.

map render.
map view openInWindowSized: 1000 @ 500.
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
"