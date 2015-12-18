examples
example04

	"self new example04"
	"The data shows the average publication for person in the country"
	| b data |
	b := RTMetricMap new.
	data := RTTabTable new input: 'Switzerland	0.04948049
Sweden	0.03949838
Denmark	0.03724673
Finland	0.03512776
Iceland	0.03384176
Netherlands	0.03266005
Norway	0.03235590
Monaco	0.03153357
United Kingdom	0.03034517
Australia	0.03013565
New Zealand	0.02928470
Canada	0.02848185
Israel	0.02841134
Singapore	0.02814340
Belgium	0.02684193
Austria	0.02538793
Slovenia	0.02456816
Liechtenstein	0.02302488
Ireland	0.02280205
United States	0.02250084
Germany	0.02177218
France	0.01953477
Spain	0.01643973
Greece	0.01601820
Italy	0.01575377
Czech Republic	0.01557232
Estonia	0.01429077
Japan	0.01392641
Croatia	0.01346473
Portugal	0.01319425
Luxembourg	0.01267497
Korea	0.01157157
Hungary	0.01128115
Greenland	0.01071429
Cyprus	0.00913291
Poland	0.00899290
Lithuania	0.00829172
Bermuda	0.00745301
Faeroe Islands	0.00668606
Bulgaria	0.00620812
New Caledonia	0.00605143
Malta	0.00601626
Grenada	0.00528995
Palau	0.00510745
Latvia	0.00497760
Romania	0.00432618
Kuwait	0.00423781
Barbados	0.00421932
Turkey	0.00414781
Russian Federation	0.00408719
Serbia	0.00399812
Chile	0.00394931
San Marino	0.00374436
Seychelles	0.00373640
Guam	0.00360543
Tunisia	0.00355685
French Polynesia	0.00341107
Malaysia	0.00339218
Brunei Darussalam	0.00326268
Armenia	0.00315417
Jordan	0.00314134
Lebanon	0.00309093
Puerto Rico	0.00305665
Cayman Islands	0.00297030
Argentina	0.00288041
Qatar	0.00282271
Uruguay	0.00281334
Trinidad and Tobago	0.00279863
Macedonia	0.00273227
Iran	0.00265369
Belarus	0.00262056
Oman	0.00247495
Bahrain	0.00247073
South Africa	0.00244784
Ukraine	0.00241902
Brazil	0.00232119
Cuba	0.00218313
Dominica	0.00216227
Saudi Arabia	0.00208004
United Arab Emirates	0.00206949
American Samoa	0.00204978
China	0.00198446
Montenegro	0.00175661
Fiji	0.00174223
Botswana	0.00172363
Georgia	0.00166009
Virgin Islands (U.S.)	0.00164332
Tuvalu	0.00152130
Mexico	0.00137863
Costa Rica	0.00135080
Andorra	0.00132721
Jamaica	0.00128646
Moldova	0.00127910
Thailand	0.00123095
Marshall Islands	0.00119874
Bosnia and Herzegovina	0.00116017
Egypt	0.00110861
Mauritius	0.00110573
Samoa	0.00093706
Panama	0.00093654
Northern Mariana Islands	0.00091924
Gabon	0.00091696
Venezuela	0.00090597
Turks and Caicos Islands	0.00089432
Vanuatu	0.00086952
Antigua and Barbuda	0.00084204
Gambia	0.00084188
Morocco	0.00083801
Azerbaijan	0.00080366
Tonga	0.00077186
Mongolia	0.00076525
Colombia	0.00075234
Belize	0.00069432
Bahamas	0.00069362
Algeria	0.00066821
Namibia	0.00064132
India	0.00060709
Swaziland	0.00056459
Guyana	0.00053183
Albania	0.00048797
Congo	0.00047290
Sri Lanka	0.00040530
Solomon Islands	0.00040393
Maldives	0.00039889
Bhutan	0.00039767
Aruba	0.00039069
Kenya	0.00038740
Zimbabwe	0.00038282
Senegal	0.00036806
Suriname	0.00035732
Cameroon	0.00034761
Kazakhstan	0.00033660
Pakistan	0.00032448
Peru	0.00029889
Ecuador	0.00029486
Ghana	0.00026906
Uzbekistan	0.00025359
Benin	0.00025232
Bolivia	0.00024428
Nigeria	0.00024256
Papua New Guinea	0.00023985
Nepal	0.00022093
Malawi	0.00021098
Burkina Faso	0.00020486
Uganda	0.00020330
Sao Tome and Principe	0.00020202
Guinea-Bissau	0.00019536
Vietnam	0.00018557
Zambia	0.00018529
Iraq	0.00017914
Syrian Arab Republic	0.00017648
Tanzania	0.00016707
Nicaragua	0.00016106
Lesotho	0.00015549
Djibouti	0.00015471
Togo	0.00015159
Equatorial Guinea	0.00014804
Paraguay	0.00014026
Philippines	0.00013611
El Salvador	0.00012751
Bangladesh	0.00012593
Mali	0.00011910
Kiribati	0.00011906
Tajikistan	0.00010988
Sudan	0.00010700
Cambodia	0.00010468
Guatemala	0.00010131
Madagascar	0.00010097
Mauritania	0.00009194
Central African Republic	0.00008817
Ethiopia	0.00008738
Honduras	0.00008720
Comoros	0.00008223
Indonesia	0.00008169
Rwanda	0.00007864
Yemen	0.00007203
Niger	0.00006895
Dominican Republic	0.00006860
Eritrea	0.00006035
Mozambique	0.00005971
Sierra Leone	0.00005720
Haiti	0.00004305
Turkmenistan	0.00004156
Timor-Leste	0.00004131
Guinea	0.00003336
Burundi	0.00002853
Liberia	0.00002792
Chad	0.00002249
Angola	0.00002123
Myanmar	0.00002040
Afghanistan	0.00001626
Somalia	0.00000589
'.
	data convertColumn: 2 to: [ :t | Float readFrom: t ].
	b countries: data values named: #first metric: #second.
	b open