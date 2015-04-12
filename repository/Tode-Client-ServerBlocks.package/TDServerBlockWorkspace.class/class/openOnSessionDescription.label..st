instance creation
openOnSessionDescription: sessionDescription label: aLabel
	^ self new
		sessionDescription: sessionDescription;
		openLabel: aLabel , ': ', sessionDescription name , ' (' , sessionDescription stoneName , ':' , sessionDescription netLDI
				, ')'
		