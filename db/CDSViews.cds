namespace shubham.db;

using { shubham.db.master } from '../db/datamodel';

context CDSViews {
    define view SOWorkList as select from master.SalesOrders {
        key soNumber as SoNumber,
        orderDate as OrderDate,
        customerName as CustomerName,
        customerNumber as CustomerNumber,
        PoNumber as PoNumber,
        inquiryNumber as InquiryNumber,
        totalOrderItems as TotalOrderItems,
        key Items.itemId as ItemId,
        Items.productId as ProductId,
        Items.quantity as Quantity,
        Items.price as Price
    }
}