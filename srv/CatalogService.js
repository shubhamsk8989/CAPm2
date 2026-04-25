module.exports = cds.service.impl(async function () {
    const { SalesOrders, SO } = this.entities;

    this.on('boost', async (req) => {
        try {
            const orderKey = req.params[0];
            const orderId = orderKey.soNumber; 
            console.log(`Attempting to boost Order: ${orderId}`);
            const currentOrder = await SELECT.one.from(SalesOrders).where({ soNumber: orderId });

            await UPDATE(SalesOrders)
                .set({ 
                    totalOrderItems: currentOrder.totalOrderItems + 20, 
                    Note: "Boosted!!" 
                })
                .where({ soNumber: orderId });

            return `Success! Order ${orderId} was boosted from ${currentOrder.totalOrderItems} to ${currentOrder.totalOrderItems + 20} items.`;

        } catch (error) {
            console.error("Boost Action Failed:", error);
            return req.error(500, "Server Error: " + error.message);
        }
    });

    this.on('largestOrder', async (req) => {
        try {
            const topOrder = await SELECT.from(SO).orderBy('totalOrderItems desc');
            return topOrder;
        } catch (error) {
            console.error("LargestOrder Action Failed:", error);
            return req.error(500, "Server Error: " + error.message);
        }
    });
});

// const cds = require('@sap/cds')

// module.exports = class CatalogService extends cds.ApplicationService {
//     init() {
//         this.before('PATCH', 'SalesOrders', async (req) => {
//             console.log("Updating Order:", req.params[0]); 
//             console.log("New Data:", req.data); 

//             if(req.data.totalOrderItems > 20) {
//                 return req.error(400, "Items should not be more than 20");
//             }
//         })
        
//         return super.init()
//     }
// }