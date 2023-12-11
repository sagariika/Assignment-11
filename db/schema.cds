namespace books;
using {Currency,managed,cuid} from '@sap/cds/common';

entity Books : managed, cuid {
    key ID :Integer;
    criticality: Integer;
    title   : String;
    descr   : String;
    stock   : Integer;
    price   : Decimal;
    currency: Currency;

    authors : Association to one Authors;
}

entity Authors : managed, cuid {
    key ID: Integer;
    name : String;
}