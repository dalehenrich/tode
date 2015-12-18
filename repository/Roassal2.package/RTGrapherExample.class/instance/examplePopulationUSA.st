sources
examplePopulationUSA

| b  tab |
tab := RTTabTable new input: (TRPlatform current download: 'https://www.census.gov/popest/data/state/asrh/2013/files/SCPRC-EST2013-18+POP-RES.csv') contents usingDelimiter: $,.
tab removeFirstRow.
tab convertColumnsAsInteger: #('POPESTIMATE2013' 'POPEST18PLUS2013').

b := RTDoubleBarBuilder new.
b pointName: [ :row | row at: (tab indexOfName: 'NAME') ].
b points: tab values allButFirst. 
b bottomValue: [ :row | ((row at: (tab indexOfName: 'POPESTIMATE2013')) / 1000) asInteger ] titled: 'Pop estimate'.
b topValue: [ :row | ((row at: (tab indexOfName: 'POPEST18PLUS2013')) / 1000) asInteger ] titled: 'Pop +18 estimate'.
b build.
^ b view