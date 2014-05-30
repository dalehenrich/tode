accessing
serverGitRoot
	serverGitRoot ifNil: [ serverGitRoot := '/opt/git' ].
	^ serverGitRoot