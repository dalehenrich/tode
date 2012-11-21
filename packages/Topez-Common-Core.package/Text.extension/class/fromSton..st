*topez-common-core
fromSton: stonReader
    "workaround for https://github.com/svenvc/ston/issues/4"

    stonReader parseMapDo: [ :instVarName :value | self instVarNamed: instVarName put: value ]