instance creation
prompt: prompt confirm: confirm cancel: cancel
  ^ self new
    interaction:
        (TDConfirm new
            prompt: prompt;
            confirm: confirm;
            cancel: cancel);
    signal