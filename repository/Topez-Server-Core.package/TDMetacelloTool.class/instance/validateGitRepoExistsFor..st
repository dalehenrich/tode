project api
validateGitRepoExistsFor: registration
  registration hasFileTreeRepo
    ifFalse: [ 
      self
        error:
          'Project must be using a FileTree repo and git to obtain a commit log' ]