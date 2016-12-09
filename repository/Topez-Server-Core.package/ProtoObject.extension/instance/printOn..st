*topez-server-core
printOn: aStream

"Puts a displayable representation of the receiver on the given stream."

"For classes whose instances can be literals, the result should contain
 formatting information.  For example, the following expression should
 evaluate to true:

 #abc asString = String withAll: '#abc'."

aStream nextPutAll: self asString
