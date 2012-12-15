"expect collection of LMCustomer instances"
self 
    createEqualityIndexOn: 'address.city' withLastElementClass: String;
    createEqualityIndexOn: 'customerName' withLastElementClass: String;
    yourself

