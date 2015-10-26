<!DOCTYPE html>
<head>
  <title>Comprar Passagem</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> <BODY BACKGROUND="Boeing.jpg">
</head>
<body>

<div id="page-wrapper">
          
            
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <form method ="post" action = "Comprar">
						<div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form">
                                        <div class="form-group">
                                        
            <p style="text-align: center;" class = "bg-danger"> Voo </p>
            
            
         <label> <input name="carregarVoo" type="checkbox" value="carregar_voo">Carregar</label>
         <br>
         
         
         <tr> <td> <label for="vooIda">Ida:</label>
		</td> <td> </td> <td><select class="form-control" name = "Voo Ida" id = "voo_Ida">
		
                                                <option value = ""></option>
                                                
                                                </select> </td> </tr>
                                                <hr>
                                                
                                                <tr> <td> <label for="vooVolta">Volta:</label>
		</td> <td> </td> <td><select class="form-control" name = "Voo Volta" id = "voo_Volta">
		
                                                <option value = ""></option>
                                                
                                                </select> </td> </tr>
                                                <hr>
                                                
          <p style="text-align: center;" class = "bg-danger"> Forma de Pagamento </p>
         
            <input type="radio" name = "cartaodeb" > Cartão de Débito </label >
            <input type="radio" name = "cartaocred" > Cartão de Crédito </label >
            <hr>
            
            <p style="text-align: center;" class = "bg-danger"> Requisitos </p>
		<tr> <td> <label for="quantidadePass ">Quantidade:</label>
		</td> <td> </td> <td><select class="form-control" name = "Quantidade de Passagens" id = "quantidade_pass">
		
                                                <option value = "1">1</option>
                                                <option value = "2">2</option>
                                                <option value = "3" >3</option>
                                                <option value = "4">4</option>
                                                <option value = "5">5</option>
                                                <option value = "6" >6</option>
                                                <option value = "7">7</option>
                                                <option value = "8">8</option>
                                                <option value = "9" >9</option>
                                                <option value = "10" >10</option>
                                                </select> </td> </tr>
		
		
		
		<tr> <td><label>Data</label>
		</td> <td><input class="form-control" name="txtdataPass" class="txt"/> </td> </tr>
		
		
		<tr> <td> <label for="destinoPass">Destino:</label>
		</td> <td> </td> <td><select class="form-control" name = "Destino" id = "destino_Pass">
		
                                                <option value = ""></option>
                                                
                                                </select> </td> </tr>
                                                
                                                <tr> <td> <label for="Origem">Tipo de Passageiro:</label>
		</td> <td> </td> <td><select class="form-control" name = "Tipo de Passageiro" id = "tipo_passageiro">
		
                                                <option value = "Bebe">Bebe</option>
                                                <option value = "Crianca">Criança</option>
                                                <option value = "Adulto" >Adulto</option>
                                               </select> </td> </tr>
	
		<tr> <td> <label for="Total">Total:</label>
	
		<tr> <td> <label for="valorTot">0,00:</label>
		<hr>
		<p style="text-align: center;" class = "bg-danger"> Dados do Passageiro </p>
		
		
		<tr> <td><label>Nome</label>
		</td> <td><input class="form-control" name="txtsnomePassageiro" class="txt"/> </td> </tr>
		
		<tr> <td><label>Sobrenome</label>
		</td> <td><input class="form-control" name="txtsobrenomePassageiro" class="txt"/> </td> </tr>
		
		</select> </td> </tr>
		<tr> <td> <label for="Origem">Tipo de Passageiro:</label>
		</td> <td> </td> <td><select class="form-control" name = "Tipo de Passageiro" id = "tipo_passageiro">
		
                                                <option value = "Bebe">Bebe</option>
                                                <option value = "Crianca">Criança</option>
                                                <option value = "Adulto" >Adulto</option>
                                                </select> </td> </tr>
                                                
                                                
		<tr> <td><label>Data de Nascimento</label>
		</td> <td><input class="form-control" name="txtdataNascimento" class="txt"/> </td> </tr>
		
		</select> </td> </tr>
		<tr> <td> <label for="Origem">Forma de Tratamento:</label>
		</td> <td> </td> <td><select class="form-control" name = "Forma de Tratamento" id = "forma_tratamento	">
		
                                                <option value = "Senhor">Senhor</option>
                                                <option value = "Senhora">Senhora</option>
                                                <option value = "Senhorita">Senhorita</option>
                                                </select> </td> </tr>
                                                <hr>
                                                
                                                
                                                <p style="text-align: center;" class = "bg-danger"> Responsável </p>
                                                
                                                
                                                <tr> <td><label>Telefone</label>
		</td> <td><input class="form-control" name="txtTelefone" class="txt"/> </td> </tr>
		
		<tr> <td><label>E-mail</label>
		</td> <td><input class="form-control" name="txtEmail" class="txt"/> </td> </tr>
		<hr>
		<br>
		
		<button type="button" type="submit" class="btn btn-primary">Adicionar</button>
		
		<hr>
		<br>
		
		
		  <table class="table table-condensed">
    <thead>
      <tr>
        <th>Nome</th>
        <th>Sobrenome</th>
        <th>Data de Nascimento</th>
        <th>Tipo de Passageiro</th>
        <th>Forma de Tratamento</th>
        <th>Telefone</th>
        <th> E-mail</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>.</td>
        <td>.</td>
        <td>.</td>
        <d>.</td>
      </tr>
      <tr>
        <td>.</td>
        <td>.</td>
        <td>.</td>
      </tr>
      <tr>
        <td>.</td>
        <td>.</td>
        <td>.</td>
      </tr>
      <tr>
        <td>.</td>
        <td>.</td>
        <td>.</td>
      </tr>
      
      <tr>
        <td>.</td>
        <td>.</td>
        <td>.</td>
      </tr>
      
      <tr>
        <td>.</td>
        <td>.</td>
        <td>.</td>
      </tr>
      <tr>
        <td>.</td>
        <td>.</td>
        <td>.</td>
      </tr>
    </tbody>
  </table>
		
        <div class="footer">
          <button type="button" type="submit" class="btn btn-default">Comprar</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Limpar</button>
          <button type="button" type="submit" class="btn btn-danger" data-dismiss="modal">Sair</button>
   
   
        
          </div>
       
      </div>
      
    </div>
  </div>
  
</div>



</body>
</html>
 	