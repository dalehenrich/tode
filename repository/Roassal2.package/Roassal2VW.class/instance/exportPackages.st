exporting
exportPackages
	"
	self new exportPackages
	"
	"This code export all these packages to my workspace in order to export/import this code"
	| dirpath exporter |
	dirpath := 'c:/Users/azazael/Documents/VisualWorks Projects/roassal2/'.
	exporter := RoassalExporter new
		to: dirpath namespace: self namespace.
	
	exporter exportPackages: self packages.
		