<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ATarjetas.aspx.cs" Inherits="Billetera_Virtual.View.ATarjetas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"/>
    <title></title>
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
                                <a class="nav-link active" aria-current="page" href="#">Añadir Tarjeta</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Tarjeta.aspx">Tus Trjetas</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <%--Fin Navar--%>
            <%--Inicio Datos--%>
            <div>
                <br />
                <label class="credit-card-label mb-1 mt-2">Selección del banco:</label>
                <div style=" width:150px">
                <select class="form-select" aria-label="Default select example" id="selectBanco" runat="server">
                    <option selected>Banco</option>
                    <option value="BCR">BCR</option>
                    <option value="Popular">Popular</option>
                    <option value="Nacional">Nacional</option>
                </select>
                <br />
                </div>
                <label class="credit-card-label mb-1 mt-2">Selección del emisor:</label>
                <div style=" width:150px">
                <select class="form-select" aria-label="Default select example" id="selectEmisor" runat="server">
                    <option selected>Emisor</option>
                    <option value="Visa">Visa</option>
                    <option value="Mastecard">Mastercard</option>
                    <option value="American Express">American Express</option>
                </select>
                </div>
                <div>
                    <br />
                    <label class="credit-card-label mb-1 mt-2">Nombre del dueño de la tarjeta</label>
                    <input type="text" name="Propietario" placeholder="Maria Marin" id="txt_propietario" runat="server" />
                    <br />
                </div>
                <div>
                    <br />
                    <label class="credit-card-label mb-1 mt-2">Numero de la tarjeta</label>
                    <input type="text" name="Numero de tarjeta" placeholder="5412 3414 7892 6391" id="txt_numero" runat="server" />
                    <br />
                </div>
                <div>
                    <br />
                    <label class="credit-card-label mb-1 mt-2">Codigo CVV</label>
                    <input type="number" name="Codigo de tarjeta" placeholder="541" min="1" max="999" step="1" id="num_codigo" runat="server" />
                    <br />
                </div>
                <div>
                    <br />
                    <label for="numero">Mes de expiración:</label>
                    <input type="number" id="mes" name="numero" min="1" max="12" step="1" runat="server"/>
                    <label for="numero">Año de expiración:</label>
                    <input type="number" id="year" name="numero" min="2000" max="2050" step="1" runat="server"/>
                    <br />
                </div>
                <div>
                    <br />
                    <button id="btnGuardar" type="button" runat="server" onserverclick="btnGuardar_ServerClick" class="btn btn-secondary">Guardar Tarjeta</button>
                </div>
            </div>

            <%--Fin Datos--%>
        </div>
    </form>
</body>
</html>
