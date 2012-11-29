*topez-common-core
renderNameTextOn: textStream
    textStream nextPutAll: (Text string: self printName attributes: {(TextColor color: Color blue)})