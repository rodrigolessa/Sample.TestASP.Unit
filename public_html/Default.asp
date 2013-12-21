<%
  Dim strMsgSucesso
      strMsgSucesso = "Servidor configurado com sucesso!"
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="imgs/favicon.png">

    <title>Signin Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="container">
<%
  if len(strMsgSucesso) > 0 then
%>
      <div class="alert alert-success"><%=strMsgSucesso%></div>
<%
  end if
%>
      <form class="form-signin" role="form" action="Home.asp" method="post">
        <h2 class="form-signin-heading">Acesso ao sistema</h2>
        <input name="login" type="text" class="form-control" placeholder="Email" required autofocus>
        <input name="senha" type="password" class="form-control" placeholder="Senha" required>
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Manter-me logado
        </label>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Logar</button>
      </form>

    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
  </body>
</html>
