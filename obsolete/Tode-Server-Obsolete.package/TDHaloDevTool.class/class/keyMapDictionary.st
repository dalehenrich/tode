as yet unclassified
keyMapDictionary
  | dictionary |
  dictionary := Dictionary new.
  dictionary
    at: 'CMD-i' put: 'db into [debugger shell]';
    at: 'CMD-j' put: 'db up [debugger shell]';
    at: 'CMD-k' put: 'db down [debugger shell]';
    at: 'CMD-t' put: 'db thru [debugger shell]';
    at: 'CMD-b' put: 'browse class';
    at: 'CMD-B' put: 'browse class hierarchy/class def/methods';
    at: 'CMD-C' put: 'spawn window';
    at: 'CMD-L' put: 'list windows';
    at: 'CMD-E' put: 'browse pkg/config classes/methods [pkgs/config]';
    at: 'CMD-N' put: 'find references';
    at: 'CMD-T' put: 'browse pkg/confis tests [pkgs/config]';
    at: 'CMD-b' put: 'browse class';
    at: 'CMD-c' put: 'copy object (class/method)';
    at: 'CMD-l' put: 'refresh';
    at: 'CMD-m' put: 'browse implementors';
    at: 'CMD-n' put: 'browse senders';
    at: 'CMD-N' put: 'references to';
    at: 'CMD-o'
      put:
        'open method template [class/instance list], db over [debugger shell]';
    at: 'CMD-v'
      put: 'paste object (compile method or add class/method to package)';
    at: 'CMD-x' put: 'cut object (remove class/method from system/package)';
    yourself.
  ^ dictionary