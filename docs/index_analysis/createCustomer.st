| nsc |
nsc := IdentityBag new.
2 timesRepeat: [nsc add: (LMCustomer createSample)].
nsc
