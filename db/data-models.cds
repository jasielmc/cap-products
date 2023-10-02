namespace wb;

using {
    cuid,
    managed
} from '@sap/cds/common';

type Name : String(20);

type Address {
    Street     : String;
    City       : String;
    State      : String(2);
    PostalCode : String(5);
    Country    : String(3);
}

entity Products : cuid {
    // key ID          : Int16;
    @mandatory
    @assert.notNull: false
    Product     : String(100);
    Description : String(200);

    @assert.range  : [
        0,
        5
    ]
    Ranking     : Integer default 0;
    Category    : Association to Categories;
}

entity Categories : cuid {
    Category    : String not null;
    Description : String not null;
    ToProducts  : Composition of many Products
                      on ToProducts.Category = $self;
}
