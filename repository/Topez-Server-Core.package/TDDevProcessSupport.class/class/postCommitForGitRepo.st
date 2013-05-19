as yet unclassified
postCommitForGitRepo
  <topezCommand: 'postCommitForGitRepo' manPage: #'postCommitForGitRepoManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  (TDDevProcessSupport
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) postCommitForGitRepo ]