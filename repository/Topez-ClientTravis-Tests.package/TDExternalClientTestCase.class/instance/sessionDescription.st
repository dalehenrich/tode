accessing
sessionDescription
	| sessionDescription |
	sessionDescription := super sessionDescription copy.
	sessionDescription userId: self externalUserId.
	sessionDescription todeUserId: 'DataCurator'.
	^ sessionDescription