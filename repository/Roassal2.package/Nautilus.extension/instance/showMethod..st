*roassal2
showMethod: aCompiledMethod

	self ui selectedPackage: aCompiledMethod methodClass package;
								selectedClass: aCompiledMethod methodClass;
								forceSelectedMethod: aCompiledMethod;
								updateBothView.
								
	self selectedPackage: aCompiledMethod methodClass package;
								selectedClass: aCompiledMethod methodClass;
								selectedMethod: aCompiledMethod.

	self selectedMethod: aCompiledMethod.
	self ui selectedMethod: aCompiledMethod.


								
"	| class |
	class := aMethod methodClass.
	
	self 
		browsedEnvironment: self class defaultBrowsedEnvironment;
		showInstance: class isMeta not;
		showGroups: false;
		package: (self parentOfClass: class) 
			class: class 
			category: aMethod protocol asString 
			method: aMethod;
		open.
		
	 self ui 
		showPackages: (self switchClassesAndPackages not);
		giveFocusToMethod.
	^ self"