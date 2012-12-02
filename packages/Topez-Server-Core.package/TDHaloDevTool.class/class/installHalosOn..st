as yet unclassified
installHalosOn: aTDTopezServer
    aTDTopezServer
        installHalo: '.self'
            block: [ :theNode | 
                    (theNode dotSelfObject asTDObjectNode: self aspect: #'self')
                        name: '.self';
                        parent: theNode;
                        yourself ];
        installHalo: '.node'
            block: [ :theNode | 
                    (theNode asTDObjectNode: self aspect: #'self')
                        name: '.node';
                        parent: theNode;
                        yourself ];
        installHalo: '.readme'
            block: [ :theNode | 
                    TDTxtLeafNode new
                        name: '.readme';
                        parent: theNode;
                        contents: theNode readMe;
                        yourself ];
        installHalo: '.window' block: (self haloWindowBlock: aTDTopezServer);
        installHalo: '.run' block: (self haloRunBlock: aTDTopezServer);
        installHalo: '.ex' block: (self haloExceptionBlock: aTDTopezServer);
        yourself