identity
testIdentityModulo
	"This checks that there is no exception if there are more identities than colors"

	1 to: 150 do: [:index | RTNIdentityNormalizer new rtValue: index]