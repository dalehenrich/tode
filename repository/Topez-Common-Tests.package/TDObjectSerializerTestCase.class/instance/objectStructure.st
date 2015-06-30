private
objectStructure
  ^ Dictionary new
    at: 'string' put: 'élève en Français';
    at: 'unicode16' put: self unicode16TestString;
    at: 'unicode32' put: self unicode16TestString;
    at: 'text' put: 'élève en Français' asText allBold;
    yourself