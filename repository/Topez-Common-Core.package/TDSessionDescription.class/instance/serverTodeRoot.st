accessing
serverTodeRoot
  serverTodeRoot ifNil: [ serverTodeRoot := '/opt/git/webEditionHome/dev/tode' ].
  ^ serverTodeRoot