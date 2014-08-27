as yet unclassified
shutdown
	| sess |
	self class removeDependent: self.
	session ifNil: [ ^ self ].
	sess := session.
	sess release.
	self shell
		close;
		exit.
	session := nil.
	self shell autoCommitEnabled	"re-enable autoCommit after logout"