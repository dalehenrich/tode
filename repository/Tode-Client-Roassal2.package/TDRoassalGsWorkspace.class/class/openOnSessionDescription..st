instance creation
openOnSessionDescription: sessionDescription
	^ self
		openOnSessionDescription: sessionDescription
		label:
			'Roassal Workspace: ' , sessionDescription name , ' (' , sessionDescription stoneName , ':' , sessionDescription netLDI
				, ')'