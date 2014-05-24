as yet unclassified
createManPage
  ^ TDManPage new
    commandName: self name;
    summary: '  ' , self name , ' - no description available';
    synopsis: '  ' , self name , ' <???>';
    yourself