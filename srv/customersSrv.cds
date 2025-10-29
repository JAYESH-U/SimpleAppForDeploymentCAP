using {db} from '../db/customers';

// service CustomerService {
//     entity Customers as projection on db.Customers;
    service CustomerService @(requires: 'authenticated-user') {

        entity Customers @(restrict: [
            {
                grant: ['READ'],
                to   : ['CustomerViewer'] // keep empty to allow it to everyone
            },
            {
                grant: ['*'],
                to   : ['CustomerManager']
            }
        ]) as projection on db.Customers;

    annotate Customers with @odata.draft.enabled;
}
