namespace db;
using { cuid, managed } from '@sap/cds/common';

entity Customers : cuid, managed {
    name: String(100);
    city: String(10);
    ctry: String(10);
    sales: Decimal(13, 2);
}