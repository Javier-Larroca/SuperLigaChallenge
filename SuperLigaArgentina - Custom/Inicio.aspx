<%@ Page Title="SuperLiga" Language="C#" MasterPageFile="~/Interfaces/Interfaz.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="SuperLigaArgentina.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="card">
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


</asp:Content>


