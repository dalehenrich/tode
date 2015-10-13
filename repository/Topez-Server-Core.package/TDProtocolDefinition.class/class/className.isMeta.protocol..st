instance creation
className: className isMeta: isMeta protocol: protocol
  ^ self new
    className: className;
    isMeta: isMeta;
    protocol: protocol;
    yourself