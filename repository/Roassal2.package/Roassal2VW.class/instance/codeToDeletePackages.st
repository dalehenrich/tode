importing
codeToDeletePackages
	"
| b arr list |
list := OrderedCollection new.
list add: 'extentions'; add: 'frompharo'; add: 'fromvw'; add: 'tests-extentions';
	add: 'examples-extentions'.
arr := Array with: 'Roassal2' with: 'Roassal2-Examples' with: 'Roassal2-Tests'.
arr do: [ :ar | 
	b := Registry bundleNamed: ar.
	b leafItems do: [ :pkg | 
		(list includes: pkg name) ifFalse: [
			pkg doUnloadFromImage.
		]. ]. ].



	"
			
			