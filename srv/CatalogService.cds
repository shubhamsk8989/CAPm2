using { shubham.db.master } from '../db/datamodel';

service CatalogService @(path: '/CatalogService'){

    @Capabilities: {
        Insertable,
        Readable,
        Updatable,
        Deletable
    }
    entity SalesOrders as projection on master.SalesOrders;
    entity SalesOrderItems as projection on master.SalesOrderItems;

    @readonly
    entity Customer as projection on master.customer {
        ID,
        name,
        email,
        phone,
        gender
    };

    entity SO @(title: '{i18n>SoNumber}', odata.draft.enabled: true) as
        projection on SalesOrders {
            *,
            case status
                when 'N' then 'New'
                when 'D' then 'Delivered'
                when 'B' then 'Blocked'
                end as status: String(20),
            case status
                when 'N' then 2
                when 'D' then 3
                when 'B' then 1
                end as Criticality: Integer,
            customer : redirected to Customer,
            Items : redirected to SOItems
        }
        actions {
            function largestOrder() returns array of SO;
            action   boost()        returns array of SO;
        }

    entity SOItems @(title: '{i18n>SoNumber_SoNumber}') as
        projection on SalesOrderItems {
            *,
            Parent : redirected to SO
        }
}