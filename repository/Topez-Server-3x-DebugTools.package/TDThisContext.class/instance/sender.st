synthetic fields
sender
  ^ parentFrame next ifNotNil: [ :frame | frame thisContext ]