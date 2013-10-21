instance creation
message: aString
  ^ self new
    interaction: (TDInform new message: aString);
    signal