const cds = require('@sap/cds');

cds.on('bootstrap', app => {
    app.get('/', (req, res) => {
        res.redirect('/CatalogService/$metadata'); 
    });
});

module.exports = cds.server;