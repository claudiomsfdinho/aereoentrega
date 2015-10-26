function DataHora() {
    var data = new Date();
    tempo.innerHTML = data;
    setTimeout("DataHora()", 1000)
}
