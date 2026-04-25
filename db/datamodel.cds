namespace shubham.db;

using { cuid, managed, temporal } from '@sap/cds/common';
using { shubham.common } from './common';


context master {
    entity SalesOrders{
        key soNumber: String;
        orderDate: Date;
        customerName: localized String;
        customerNumber: String;
        PoNumber: String;
        inquiryNumber: String;
        totalOrderItems: Integer;
        Note: String(256);
        status: String;

        Items:Composition of many SalesOrderItems on Items.soNumber= soNumber;
    }

    annotate SalesOrders {
        customerName @title: '{i18n>CustomerName}';
        customerNumber @title: '{i18n>CustomerNumber}';
    }

    entity SalesOrderItems{
        key itemId: String;
        soNumber: String;
        productId: String;
        quantity: Integer;
        price: Decimal(10, 2);

        Parent: Association to SalesOrders on Parent.soNumber= soNumber;
    }

    entity customer : cuid, managed, temporal {
        name : String;
        email : common.Email;
        phone : common.PhoneNumber;
        gender : common.Gender;

    }



}