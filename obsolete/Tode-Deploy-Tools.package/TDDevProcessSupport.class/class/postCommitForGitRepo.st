as yet unclassified
postCommitForGitRepo
  <topezCommand: 'postCommitForGitRepo' manPage: #'postCommitForGitRepoManPage'>
  ^ [ :topez :objIn :tokens :command | 
  (TDDevProcessSupport topez: topez objIn: objIn todeCommand: command)
    postCommitForGitRepo ]