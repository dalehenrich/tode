examples
example06DeepIntoPharo

	"self new example06DeepIntoPharo"
	"The data shows the country that have bought the book DeepIntoPharo from Sep 2013 until Mar 2014"

	| b data |
	b := RTMetricMap new.
	data := RTTabTable new input: 'Quantité	Région
1	US
1	US
1	US
1	FR
1	US
1	FR
1	DE
2	US
1	DE
1	US
1	IT
1	ES
1	US
-1	US
1	US
1	CA
1	CH
1	US
1	US
2	US
1	EU
1	US
1	FR
3	FR
1	UK
1	ES
2	US
2	UK
1	EU
1	EU
1	US
1	US
1	US
1	US
2	UK
1	FR
5	US
1	UK
1	EU
1	UK
1	DE
1	US
1	NL
1	US
2	DE
1	US
1	US
1	DE
1	US
1	DE
1	DE
1	DE
1	DE
1	US
1	FR
1	AU
1	US
1	US
1	US
1	US
1	US
1	US
1	US
1	NL
1	NL
1	US
1	US
1	US
3	CH
1	US
1	US
1	DE
1	DE
1	IE
1	US
1	UK
1	DE
1	US
1	US
1	US
20	FR
20	FR
1	FR'.
	data removeFirstRow.
	data convertColumn: 1 to: [ :t | Integer readFrom: t ].
	data gather: 2 using: [ :r1 :r2 | Array with: r1 first + r2 first with: r1 second ].
	
	b countries: RTSVGPath countries color: Color white.
	b countries: data values named: #second metric: #first.
	
	b open