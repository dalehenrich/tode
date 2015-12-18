tests
testCommasInsideQuotes

	tab input:
  '2014-01-26 00:00:00+00,Boeing 737-3B7 (SF),ZK-TLC,"Airwork, NZ,opf. Pacific Air Express",0,Honiara-Henderson International Airport(HIR),Solomon Islands,-9.428056,160.053056,"Brisbane International Airport, QLD (BNE/YBBN), Australia","Honiara-Henderson International Airport (HIR/AGGH), Solomon Islands",Accident resulting in a total loss of the plane,0101000020E6100000691B7FA2B201644091B6F1272ADB22C0,7,2014-07-18 11:46:49.32676+00,2014-07-18 11:47:01.156893+00'
  usingDelimiter: $,.
  self assert: tab numberOfColumns equals: 16