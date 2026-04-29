namespace shubham.db;

using { cuid, managed, temporal } from '@sap/cds/common';
using { shubham.common } from './common';


context master {
    entity SalesOrders : cuid {
        orderDate: Date;
        customerNumber: UUID; 
        customer: Association to customer on customer.ID = customerNumber;
        customerName: localized String;
        PoNumber: String;
        inquiryNumber: String;
        totalOrderItems: Integer;
        Note: String(256);
        status: String;

        Items: Composition of many SalesOrderItems on Items.soID = ID;
    }

    annotate SalesOrders {
        customerName @title: '{i18n>CustomerName}';
        customerNumber @title: '{i18n>CustomerNumber}';
    }

    entity SalesOrderItems : cuid{
        // key itemId: String;
        soID: UUID;
        productId: String;
        quantity: Integer;
        price: Decimal(10, 2);

        Parent: Association to SalesOrders on Parent.ID= soID;
    }

    entity customer : cuid, managed, temporal {
        name : String;
        email : common.Email;
        phone : common.PhoneNumber;
        gender : common.Gender;
    }

}