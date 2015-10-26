<%@ page
  language="java"
  contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Cadastrar Vôo</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/node_modules/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/bower_components/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/voo.css" />
</head>
<body>

  <header>
    <div class="jumbotron">
      <div class="container">
        <h1>Cadastrar Vôo</h1>
      </div>
    </div>
  </header>

  <article>
    <div class="container">

      <div id="error-alert" class="alert alert-danger hide" role="alert">
        <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
        <span class="sr-only">Error:</span>
      </div>

      <div id="success-alert" class="alert alert-success hide" role="alert">
        <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
        <span class="sr-only">Success:</span>
      </div>

      <form id="consultar-aeronave"
        action="${pageContext.request.contextPath}/api/aeronave/list/"
        method="GET"
        class="form-inline form-aeronave"
      >
        <div class="row">
          <h2>Aeronave</h2>
          <div class="col-md-8 col-sm-12">
            <div class="form-group">
              <label class="sr-only" for="input-consulta-codigo-aeronave">Aeronave</label>
              <input id="input-consulta-codigo-aeronave"
                type="text"
                class="form-control"
                placeholder="Código"
                name="codigo"
                required
                autofocus
              />
            </div>
            <button type="submit" class="btn btn-primary">consultar</button>
          </div>

          <div class="col-md-12">
            <div class="table-responsive">
              <table id="consultar-result" class="table table-hover">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Código</th>
                    <th>Nome</th>
                    <th>Quant. Passageiros</th>
                  </tr>
                </thead>
                <tbody></tbody>
              </table>
            </div>
          </div>
        </div>
      </form>

      <form id="cadastrar-voo"
        action="${pageContext.request.contextPath}/api/voo"
        method="PUT"
      >
        <input id="aeronave-id" type="hidden" name="aeronaveId" required />
        <div class="row">
          <h2>Vôo</h2>
          <div class="col-md-3 col-sm-12">
              <div class="form-group">
                <label for="input-codigo-aeronave">Código do Vôo</label>
                <input id="input-codigo-aeronave"
                  type="text"
                  class="form-control"
                  placeholder="Ex: JG58"
                  name="codigo"
                  required
                />
              </div>
          </div>

          <div class="col-md-3 col-sm-12">
              <div class="form-group">
                <label for="input-nome-aeronave">Situação</label>
                <select id="input-nome-aeronave" class="form-control" name="situacao" required>
                  <option value="">Selecione...</option>
                  <option value="Em espera">Em espera</option>
                  <option value="Confirmado">Confirmado</option>
                  <option value="Encerrado">Encerrado</option>
                </select>
              </div>
          </div>

          <div class="col-md-3 col-sm-12">
              <div class="form-group">
                  <label for="input-nome-aeronave">Data e Hora</label>
                  <input id="datetimepicker"
                    type="text"
                    class="form-control"
                    name="datahora"
                    placeholder="Formato: YYYY-MM-DD HH:mm:ss"
                    required
                  />
              </div>
          </div>

          <div class="col-md-3 col-sm-12">
              <div class="form-group">
                <label for="input-nome-aeronave">Escalas</label>
                <input id="input-codigo-aeronave"
                  type="text"
                  class="form-control"
                  placeholder="Ex: 1 (quantidade)"
                  name="escalas"
                  required
                />
              </div>
          </div>
        </div>

        <div class="row">
          <div class="col-md-6 col-sm-12">
              <div class="form-group">
                <label for="origem-aeroporto-list">Origem</label>
                <select id="origem-aeroporto-list" name="origem" class="form-control" required>
                    <option value="">Selecione...</option>
                    <option value="1">Curitiba - Afonso Pena</option>
                    <option value="2">Natal - Augusto Severo</option>
                    <option value="3">Maceió - Campo dos Palmares</option>
                    <option value="4">Foz do Iguaçu-PR - Catarata</option>
                    <option value="5">Belo Horizonte - Confins</option>
                    <option value="6">São Paulo - Congonhas</option>
                    <option value="7">São Paulo - Cumbica</option>
                    <option value="8">Acre - Cruzeiro do Sul</option>
                </select>
              </div>
          </div>

          <div class="col-md-6 col-sm-12">
              <div class="form-group">
                <label for="destino-aeroporto-list">Destino</label>
                <select id="destino-aeroporto-list" name="destino" class="form-control" required>
                    <option value="">Selecione...</option>
                    <option value="1">Curitiba - Afonso Pena</option>
                    <option value="2">Natal - Augusto Severo</option>
                    <option value="3">Maceió - Campo dos Palmares</option>
                    <option value="4">Foz do Iguaçu-PR - Catarata</option>
                    <option value="5">Belo Horizonte - Confins</option>
                    <option value="6">São Paulo - Congonhas</option>
                    <option value="7">São Paulo - Cumbica</option>
                    <option value="8">Acre - Cruzeiro do Sul</option>
                </select>
              </div>
          </div>
        </div> <!-- /row -->

        <div class="row">
          <div class="col-md-3 col-sm-12">
              <div class="form-group">
                <label for="valor">Valor</label>
                <input id="valor"
                  type="text"
                  class="form-control"
                  placeholder="Ex: R$ 90,00"
                  name="valor"
                  required
                />
              </div>
          </div>
        </div> <!-- /row -->

        <div class="row">
          <div class="col-md-12 text-right">
              <a href="${pageContext.request.contextPath}/home.jsp"
                class="btn btn-default"
              >
                cancelar
              </a>
              <button type="submit" class="btn btn-primary">cadastrar</button>
          </div>
        </div> <!-- /row -->
      </form>
    </div> <!-- /container -->
  </article>

  <footer></footer>

</body>

<script type="text/javascript" src="${pageContext.request.contextPath}/node_modules/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bower_components/moment/min/moment.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bower_components/eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/config.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/network/handler/AsynchronousRequestHandler.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/utils/Serialize.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/helper/ConsultaHelper.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/voo.js"></script>

</html>
