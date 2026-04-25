namespace shubham.db;

using { shubham.db.master } from '../db/datamodel';

context CDSViews {
    define view SOWorkList as select from master.SalesOrders {
        key ID as soID,
        orderDate as OrderDate,
        customerName as CustomerName,
        customerNumber as CustomerNumber,
        PoNumber as PoNumber,
        inquiryNumber as InquiryNumber,
        totalOrderItems as TotalOrderItems,
        key Items.ID as ItemID,
        Items.productId as ProductId,
        Items.quantity as Quantity,
        Items.price as Price
    }
}