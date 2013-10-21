instance creation
prompt: promptString template: templateString
  ^ self new
    interaction:
        (TDText new
            prompt: promptString;
            template: templateString);
    signal