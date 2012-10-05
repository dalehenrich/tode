instance creation
openList: aListOfTextOrStrings label: aLabel
    ^ self new
        openLabel: aLabel;
        list: aListOfTextOrStrings;
        changed: #'list';
        yourself