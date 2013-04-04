| nsc |
nsc := IdentityBag new.
self do: [:customer |
	nsc addAll: nsc orders ].
nsc
