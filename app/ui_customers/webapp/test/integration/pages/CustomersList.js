sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'ibm.sap.ux.training.uicustomers',
            componentId: 'CustomersList',
            contextPath: '/Customers'
        },
        CustomPageDefinitions
    );
});