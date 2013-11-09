actions
setUserPassword: listElement selectedIndex: selectedIndex
  | repository username password |
  selectedIndex = 0
    ifTrue: [ ^ false ].
  repository := self repositories at: selectedIndex.
  (repository respondsTo: #'user:')
    ifFalse: [ 
      self
        inform:
          'Repository: ' , repository description printString
            , ' does not accept username/password'.
      ^ false ].
  username := (GsTextInteraction
    prompt: 'Enter user name'
    template: repository user) signal.
  password := (GsTextInteraction requestPassword: 'Enter password') signal.
  self mcTool mrcreds: repository username: username password: password