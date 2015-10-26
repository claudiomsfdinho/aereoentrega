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
  <title>Comprar Passagem</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/node_modules/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/bower_components/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/passagem/comprar.css" />
</head>
<body>

  <header>
    <div class="jumbotron">
      <div class="container">
        <h1>Comprar Passagem</h1>
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

      <form id="consultar-voo"
        action="${pageContext.request.contextPath}/api/voo/list/"
        method="GET"
        class="form-aeronave">

        <div class="row">
          <jsp:include page="/voo/partials/consultar-form-content.jsp" />
          <jsp:include page="/voo/partials/consultar-form-content-buttons.jsp" />
          <jsp:include page="/voo/partials/consultar-disponiveis-table-dataonly.jsp" />
        </div> <!-- /row -->
      </form>

      <form id="cadastrar-voo"
        action="${pageContext.request.contextPath}/api/voo"
        method="PUT">

        <input id="aeronave-id" type="hidden" name="aeronaveId" required />
        <div class="row">
          <h2>
            Passagens
            <small>
              (Adulto: <span id="quantidade-adulto">1</span>,
              Criança: <span id="quantidade-crianca">0</span>,
              Bebê: <span id="quantidade-bebe">0</span>)
            </small>
          </h2>
          <div class="col-md-12 col-sm-12">
              <div class="form-group">
                <label for="input-nome-aeronave">Tipo</label>
                <div class="form-inline">
                  <select id="input-nome-aeronave"
                    class="form-control select-tipo-passagem"
                    name="situacao"
                    required
                  >
                    <option value="">Selecione...</option>
                    <option value="Em espera">Bebê</option>
                    <option value="Confirmado">Criança</option>
                    <option value="Encerrado">Adulto</option>
                  </select>
                  <button type="submit" class="btn btn-success">
                    <span class="glyphicon glyphicon-plus-sign"></span>
                  </button>
                </div>
              </div>
          </div>
        </div>

        <div class="container">
          <section class="passageiro-container">
            <header>
              <div class="row">
                <div class="col-md-12">
                  <h3>Dados do passageiro <small>(Adulto - responsável pela compra)</small></h3>
                </div>
              </div>
            </header>
            <div class="row">
              <div class="col-md-3 col-sm-12">
                  <div class="form-group">
                      <label for="input-nome-aeronave">Forma de tratamento</label>
                        <select id="input-nome-aeronave"
                          class="form-control select-tipo-passagem"
                          name="situacao"
                          required
                        >
                          <option value="">Selecione...</option>
                          <option value="Em espera">Sr.</option>
                          <option value="Confirmado">Sra.</option>
                          <option value="Encerrado">Srta.</option>
                        </select>
                  </div>
              </div>

              <div class="col-md-3 col-sm-12">
                  <div class="form-group">
                    <label for="input-nome-aeronave">Nome</label>
                    <input id="input-codigo-aeronave"
                      type="text"
                      class="form-control"
                      placeholder="Ex: 1 (quantidade)"
                      name="escalas"
                      required
                    />
                  </div>
              </div>

              <div class="col-md-3 col-sm-12">
                  <div class="form-group">
                    <label for="input-nome-aeronave">Sobrenome</label>
                    <input id="input-codigo-aeronave"
                      type="text"
                      class="form-control"
                      placeholder="Ex: 1 (quantidade)"
                      name="escalas"
                      required
                    />
                  </div>
              </div>

              <div class="col-md-3 col-sm-12">
                  <div class="form-group">
                    <label for="input-nome-aeronave">Data de nascimento</label>
                    <input id="datetimepicker"
                      type="text"
                      class="form-control"
                      name="datahora"
                      placeholder="Formato: YYYY-MM-DD"
                      required
                    />
                  </div>
              </div>
            </div>

            <div class="row">
              <div class="col-md-6 col-sm-12">
                  <div class="form-group">
                    <label for="passageiro-email">Email</label>
                    <input id="passageiro-email"
                      type="email"
                      class="form-control"
                      name="datahora"
                      placeholder="Ex: nome@domain.com.br"
                      required
                    />
                  </div>
              </div>

              <div class="col-md-2 col-sm-12">
                  <div class="form-group">
                    <label for="passageiro-email">DDD</label>
                    <input id="passageiro-email"
                      type="email"
                      class="form-control"
                      name="datahora"
                      placeholder="Ex: 11"
                      required
                    />
                  </div>
              </div>

              <div class="col-md-4 col-sm-12">
                  <div class="form-group">
                    <label for="passageiro-email">Telefone/Celular</label>
                    <input id="passageiro-email"
                      type="email"
                      class="form-control"
                      name="datahora"
                      placeholder="Ex: 97777-7777"
                      required
                    />
                  </div>
              </div>
            </div> <!-- /row -->
          </section> <!-- /passageiro-container -->

          <section class="passageiro-container">
            <header>
              <div class="row">
                <div class="col-md-9 col-sm-9 col-xs-9">
                  <h3>Dados do passageiro <small>(Adulto)</small></h3>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-3 text-right">
                  <button class="btn btn-danger btn-sm" title="Remover">
                    <span class="glyphicon glyphicon-remove-sign remover-passageiro"></span>
                  </button>
                </div>
              </div>
            </header>
            <div class="row">
              <div class="col-md-3 col-sm-12">
                  <div class="form-group">
                      <label for="input-nome-aeronave">Forma de tratamento</label>
                        <select id="input-nome-aeronave"
                          class="form-control select-tipo-passagem"
                          name="situacao"
                          required
                        >
                          <option value="">Selecione...</option>
                          <option value="Em espera">Sr.</option>
                          <option value="Confirmado">Sra.</option>
                          <option value="Encerrado">Srta.</option>
                        </select>
                  </div>
              </div>

              <div class="col-md-3 col-sm-12">
                  <div class="form-group">
                    <label for="input-nome-aeronave">Nome</label>
                    <input id="input-codigo-aeronave"
                      type="text"
                      class="form-control"
                      placeholder="Ex: 1 (quantidade)"
                      name="escalas"
                      required
                    />
                  </div>
              </div>

              <div class="col-md-3 col-sm-12">
                  <div class="form-group">
                    <label for="input-nome-aeronave">Sobrenome</label>
                    <input id="input-codigo-aeronave"
                      type="text"
                      class="form-control"
                      placeholder="Ex: 1 (quantidade)"
                      name="escalas"
                      required
                    />
                  </div>
              </div>

              <div class="col-md-3 col-sm-12">
                  <div class="form-group">
                    <label for="input-nome-aeronave">Data de nascimento</label>
                    <input id="datetimepicker"
                      type="text"
                      class="form-control"
                      name="datahora"
                      placeholder="Formato: YYYY-MM-DD"
                      required
                    />
                  </div>
              </div>
            </div>
          </section> <!-- /passageiro-container -->

          <section class="passageiro-container">
            <header>
              <div class="row">
                <div class="col-md-9">
                  <h3>Dados do passageiro <small>(Criança)</small></h3>
                </div>
                <div class="col-md-3 text-right">
                  <button class="btn btn-danger btn-sm" title="Remover">
                    <span class="glyphicon glyphicon-remove-sign remover-passageiro"></span>
                  </button>
                </div>
              </div>
            </header>
            <div class="row">
              <div class="col-md-3 col-sm-12">
                  <div class="form-group">
                      <label for="input-nome-aeronave">Forma de tratamento</label>
                        <select id="input-nome-aeronave"
                          class="form-control select-tipo-passagem"
                          name="situacao"
                          required
                        >
                          <option value="">Selecione...</option>
                          <option value="Em espera">Sr.</option>
                          <option value="Confirmado">Sra.</option>
                          <option value="Encerrado">Srta.</option>
                        </select>
                  </div>
              </div>

              <div class="col-md-3 col-sm-12">
                  <div class="form-group">
                    <label for="input-nome-aeronave">Nome</label>
                    <input id="input-codigo-aeronave"
                      type="text"
                      class="form-control"
                      placeholder="Ex: 1 (quantidade)"
                      name="escalas"
                      required
                    />
                  </div>
              </div>

              <div class="col-md-3 col-sm-12">
                  <div class="form-group">
                    <label for="input-nome-aeronave">Sobrenome</label>
                    <input id="input-codigo-aeronave"
                      type="text"
                      class="form-control"
                      placeholder="Ex: 1 (quantidade)"
                      name="escalas"
                      required
                    />
                  </div>
              </div>

              <div class="col-md-3 col-sm-12">
                  <div class="form-group">
                    <label for="input-nome-aeronave">Data de nascimento</label>
                    <input id="datetimepicker"
                      type="text"
                      class="form-control"
                      name="datahora"
                      placeholder="Formato: YYYY-MM-DD"
                      required
                    />
                  </div>
              </div>
            </div>
          </section> <!-- /passageiro-container -->

          <section class="btn-action-group text-right">
            <div class="row">
              <div class="col-md-12">
                  <a href="${pageContext.request.contextPath}/home.jsp"
                    class="btn btn-default"
                  >
                    cancelar
                  </a>
                  <button type="submit" class="btn btn-primary">comprar</button>
              </div>
            </div> <!-- /row -->
          </section>

        </div> <!-- /container -->
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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/helper/VooConsultaHelper.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/passagem/comprar.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/voo.js"></script>

</html>
