as yet unclassified
logout
	| sess |
	self class removeDependent: self.
	session ifNil: [ ^ self ].
	sess := session.
	session := nil.
	sess logout.
	self shell autoCommitEnabled	"re-enable autoCommit after logout"