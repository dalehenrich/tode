as yet unclassified
logout
	| sess |
	session ifNil: [ ^ self ].
	sess := session.
	session := nil.
	sess logout.
	self shell autoCommitEnabled	"re-enable autoCommit after logout"