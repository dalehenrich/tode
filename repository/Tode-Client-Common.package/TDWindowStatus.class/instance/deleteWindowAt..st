accessing
deleteWindowAt: aWindowId
    (self windowAt: aWindowId) ifNotNil: [:window | window delete]