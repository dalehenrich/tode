as yet unclassified
source
    | stonString |
    stonString := self getMessageSend value.
    Transcript
        cr;
        show: 'get: ' , stonString.
    ^ STON fromString: stonString