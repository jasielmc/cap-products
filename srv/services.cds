using { wb } from '../db/data-models';

service ProdMan {

    entity Products as projection on wb.Products;

}