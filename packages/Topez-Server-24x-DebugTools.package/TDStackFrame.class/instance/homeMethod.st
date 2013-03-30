as yet unclassified
homeMethod
 	(self receiver isKindOf: ExecutableBlock) ifFalse: [ ^self method ].
	^(self next finalBlockHomeFor: self) method