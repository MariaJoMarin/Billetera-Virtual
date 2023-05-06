<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tarjeta.aspx.cs" Inherits="Billetera_Virtual.Tarjeta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <link rel="stylesheet"
        id="theme_link"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/5.1.2/lux/bootstrap.min.css" />
    <link href="../css/tarjetas.css" rel="stylesheet" />
    <title>Billetera Virtual</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--Inicio Navar--%>
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">Billetera Virtual</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">Tus Tarjetas</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="ATarjetas.aspx">Añadir Tarjeta</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <%--Fin Navar--%>

            <asp:Repeater ID="repTarjetas" runat="server">
                <HeaderTemplate>
                    <div class="container">
                        <div class="row">
                </HeaderTemplate>
                <ItemTemplate>
                    <div id="cardTarjetas" class="card ">
                        <img src="<%# Eval("Foto")%>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%# Eval("Emisor")%></h5>
                            **** **** **** <p class="card-text"><%# Eval("NTarjeta").ToString().Substring(Eval("NTarjeta").ToString().Length - 4)%></p>
                        </div>
                    </div>
                </ItemTemplate>
                <FooterTemplate>
                    </div>
                    </div>
                </FooterTemplate>
            </asp:Repeater>
            <a href="ATarjetas.aspx" class="btn btn-primary">Agregar Tarjeta</a>
        </div>
    </form>
</body>
</html>

