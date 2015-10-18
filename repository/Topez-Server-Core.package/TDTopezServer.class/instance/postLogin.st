login
postLogin
  "Message sent by client when login process is completed on the client, server
   can now perform any post login initialization.
   Should eventually have a post login announcement ... "

  | gitRootPath |
  gitRootPath := self sessionDescription serverGitRoot.
  (gitRootPath notNil and: [ gitRootPath isEmpty not ])
    ifTrue: [ TDProjectEntryDefinition defaultGitRootPath: gitRootPath ]