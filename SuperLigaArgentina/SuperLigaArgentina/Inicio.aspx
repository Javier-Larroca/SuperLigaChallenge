<%@ Page Title="SuperLiga" Language="C#" MasterPageFile="~/Interfaces/Interfaz.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="SuperLigaArgentina.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="containner">
    <div class="card text-white bg-secondary mb-3">
        <h5 class="card-header">Añadir tus archivos</h5>
        <div class="card-body">
            <h5 class="card-title">¡Procesa tus datos!</h5>
            <p class="card-text">Carga tu archivo de datos y obtene diferentes informes sobre los socios registrados y los clubes.</p>
            <p class="card-text">Selecciona tu archivo con extension .CSV</p>
            <form action="/" method="post">
                <div class="card-text">
                    <input type="file" id="archivoCsv" accept=".csv" runat="server" required="true">
                </div>
                <br />
                <asp:Button CssClass="btn btn-primary" OnClick="enviarArchivo_Click" Text="Procesar" runat="server" />
            </form>
        </div>
    </div>


    <div id="myCarousel" class="carousel slide tamañoCar" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
            <li data-target="#myCarousel" data-slide-to="4"></li>
            <li data-target="#myCarousel" data-slide-to="5"></li>
            <li data-target="#myCarousel" data-slide-to="6"></li>
            <li data-target="#myCarousel" data-slide-to="7"></li>
            <li data-target="#myCarousel" data-slide-to="8"></li>
            <li data-target="#myCarousel" data-slide-to="9"></li>
            <li data-target="#myCarousel" data-slide-to="10"></li>
            <li data-target="#myCarousel" data-slide-to="11"></li>
        </ol>

        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="img/equipos/boca.png" alt="BOCA" />
            </div>

            <div class="item">
                <img src="img/equipos/Estudiantes.png" alt="ESTUDIANTES" />
            </div>

            <div class="item">
                <img src="img/equipos/gimnasia.png" alt="GIMNASIA" />
            </div>

            <div class="item">
                <img src="img/equipos/huracan.png" alt="HURACAN" />
            </div>
            <div class="item">
                <img src="img/equipos/independiente.png" alt="INDEPENDIENTE" />
            </div>
            <div class="item">
                <img src="img/equipos/newells.png" alt="NEWELLS" />
            </div>
            <div class="item">
                <img src="img/equipos/racing.png" alt="RACING" />
            </div>
            <div class="item">
                <img src="img/equipos/river.png" alt="RIVER" />
            </div>
            <div class="item">
                <img src="img/equipos/rosariocentral.png" alt="ROSARIO CENTRAL" />
            </div>
            <div class="item">
                <img src="img/equipos/sanlorenzo.png" alt="SAN LORENZO" />
            </div>
            <div class="item">
                <img src="img/equipos/velez.png" alt="VELEZ" />
            </div>
        </div>
    </div>
        </div>
</asp:Content>


