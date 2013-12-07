ston
stonExportUsing: stonTool to: dirPath
  self
    childrenDo: [ :child | child stonExportUsing: stonTool to: dirPath , self name , '/' ]