testing
isViewBeenPreparedForDeselection: aView

	^ aView attributeAt: #preparedForDeselection ifAbsent: [ false ]