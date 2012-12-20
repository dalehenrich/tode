*topez-common-core
fromSton: stonReader
    "workaround for https://github.com/svenvc/ston/issues/4"

    ^ self new
        fromSton: stonReader;
        yourself