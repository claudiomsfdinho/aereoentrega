jQuery(function($) {

    $('#consultar-voo').submit(function(e) {
        e.preventDefault();
        AsynchronousRequestHandler.get(
            this,
            Serialize.serializePath(this),
            VooConsultaHelper.appendTableRowsDataonly
        );
    });

});
