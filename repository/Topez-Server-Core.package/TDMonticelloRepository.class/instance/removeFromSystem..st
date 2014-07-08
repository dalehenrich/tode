cut/copy/paste
removeFromSystem: topez
  | mrTool |
  mrTool := topez toolInstanceFor: 'mr'.
  mrTool mrremoveRepository: self repository