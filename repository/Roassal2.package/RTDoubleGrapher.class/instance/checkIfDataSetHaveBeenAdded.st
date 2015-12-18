utility
checkIfDataSetHaveBeenAdded
	datasets ifEmpty: [ self error: 'No dataset has been added?' ]