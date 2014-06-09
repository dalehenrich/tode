as yet unclassified
shutdown
	| sess |
	session ifNil: [ ^ self ].
	sess := session.
	sess release.
	self shell
		close;
		exit.
	session := nil.
	self shell autoCommitEnabled	"re-enable autoCommit after logout"