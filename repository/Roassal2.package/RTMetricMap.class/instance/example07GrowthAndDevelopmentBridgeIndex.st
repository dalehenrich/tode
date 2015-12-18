examples
example07GrowthAndDevelopmentBridgeIndex

	"self new example07GrowthAndDevelopmentBridgeIndex"
	"Data from http://www.gdbridge.org/gdb_index"
| b table |
b := RTMetricMap new.
table := RTTabTable new.
table input: 'Hong Kong, China	1	0.631447
Singapore	2	0.5889286
Netherlands	3	0.515425
Switzerland	4	0.5018929
United States	5	0.4871152
Norway	6	0.4851121
Denmark	7	0.4665922
Sweden	8	0.4567912
Finland	9	0.4460537
Korea, Rep.	10	0.4382369
Ireland	11	0.4324097
Luxembourg	12	0.4227912
Germany	13	0.4190357
Belgium	14	0.4022478
Canada	15	0.3983661
Australia	16	0.3982408
United Kingdom	17	0.3930691
Japan	18	0.3904902
Spain	19	0.3876414
Kuwait	20	0.3800776
France	21	0.377015
Brunei Darussalam	22	0.3627484
Austria	23	0.3621858
Israel	24	0.3585244
China	25	0.3560882' usingDelimiters: String tab.
table convertColumn: 3 to: [ :t | Float readFrom: t ].

b allCountriesColor: Color white.
b countries: table values named: #first metric: #third.

b open.
