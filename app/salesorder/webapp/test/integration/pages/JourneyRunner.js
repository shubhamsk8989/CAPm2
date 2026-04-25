sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"managesalesorder/salesorder/test/integration/pages/SalesOrdersList",
	"managesalesorder/salesorder/test/integration/pages/SalesOrdersObjectPage",
	"managesalesorder/salesorder/test/integration/pages/SalesOrderItemsObjectPage"
], function (JourneyRunner, SalesOrdersList, SalesOrdersObjectPage, SalesOrderItemsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('managesalesorder/salesorder') + '/test/flp.html#app-preview',
        pages: {
			onTheSalesOrdersList: SalesOrdersList,
			onTheSalesOrdersObjectPage: SalesOrdersObjectPage,
			onTheSalesOrderItemsObjectPage: SalesOrderItemsObjectPage
        },
        async: true
    });

    return runner;
});

