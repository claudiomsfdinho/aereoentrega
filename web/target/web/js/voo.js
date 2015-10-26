jQuery(function($) {
    initDateTimePicker();
    initSuccessMessage();

    $('form#consultar-aeronave').submit(function(e) {
        e.preventDefault();
        AsynchronousRequestHandler.get(
            this,
            Serialize.serializePath(this),
            ConsultaHelper.appendTableRowsDataonly
        );
        $('#aeronave-id').val('');
    });

    $('#consultar-aeronave .table-responsive').on('click', 'tr', function(e) {
        e.preventDefault();
        var data = $(this).data();

        if ($(this).hasClass('info')) {
            $(this).removeClass('info');
            $('#aeronave-id').val('');
        } else {
            $(this).closest('.table-responsive').find('tr').removeClass('info');
            $(this).addClass('info');
            $('#aeronave-id').val(data.id);
        }
    });

    $('#cadastrar-voo').submit(function(e) {
        e.preventDefault();
        AsynchronousRequestHandler.submitForm(this, formAtualizarCallback);
    });
});

var formAtualizarCallback = function(response) {
    console.log(response);
    if (response.status === true) {
        sessionStorage.setItem(
            'successMessage',
            'Vôo cadastrado com sucesso!'
        );
        location.reload();
    } else {}
}

var initDateTimePicker = function() {
    $('#datetimepicker')
        .datetimepicker({ format: 'YYYY-MM-DD HH:mm:ss' });
}

var initSuccessMessage = function() {
    var successMessage = sessionStorage.getItem('successMessage') || undefined;
    if (successMessage) {
        $('#success-alert')
            .text(successMessage)
            .removeClass('hide');

        sessionStorage.removeItem('successMessage');
    }
}
