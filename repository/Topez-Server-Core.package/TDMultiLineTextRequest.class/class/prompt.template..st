instance creation
prompt: promptString template: templateString
  ^ self new
    interaction:
        (TDMultiLineText new
            prompt: promptString;
            template: templateString);
    signal