<%
  Dim strMsgSucesso, strMsgTipo
      strMsgTipo = "danger"
      strMsgSucesso = "Nome de usuário incorreto ou senha incorreta!"

  for each item in request.form
    execute(item & " = """ & request.form(item) & """")
  next

  if login = "rodrigo@mail.com" and senha = "123456" then
    strMsgTipo = "success"
    strMsgSucesso = "Usuário logado com sucesso!"
  else
    strMsgSucesso = strMsgSucesso & "<br /> - login: <strong>" & login & "</strong>"
    strMsgSucesso = strMsgSucesso & "<br /> - senha: <strong>" & senha & "</strong>"
  end if
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

    <title>TestASP - Resultado de Login</title>

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
      <div class="alert alert-<%=strMsgTipo%>"><%=strMsgSucesso%></div>
<%
  end if
%>
    </div> <!-- /container -->

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
  </body>
</html>
