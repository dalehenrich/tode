convenience
put: object onStream: stream withOptions: options
    (self writer on: stream)
        options: options;
        nextPut: object