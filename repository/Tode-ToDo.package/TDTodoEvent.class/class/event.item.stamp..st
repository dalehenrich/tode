instance creation
event: event item: item stamp: aDateAndTime
  ^ self new
    stamp: aDateAndTime;
    event: event;
    item: item;
    yourself