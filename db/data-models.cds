namespace wb;

entity Products {
    key ID          : Int16;
        Product     : String(100);
        Description : String(200);
        Ranking     : Integer;
        CategoryID  : Int16;
}
