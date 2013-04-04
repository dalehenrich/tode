writing
writeList: collection
    self writeObject: collection do: [ self encodeList: collection ]