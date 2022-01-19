<%@ Page Title="SuperLiga" Language="C#" MasterPageFile="~/Interfaces/Interfaz.Master" AutoEventWireup="true" CodeBehind="Datos.aspx.cs" Inherits="SuperLigaArgentina.Datos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
  <h5>Cantidad</h5>
  <p>Cantidad total de personas registradas: <b><% =cantidad %></b> personas</p>
  <h5>Promedio de edad</h5>
  <p>Promedio de edad de los socios de Racing: <b><% =prom %></b> años</p>
  <h5>Listado:</h5>
    <p>Primeras 100 personas casadas, con estudios Universitarios. Ordenadas de menor a mayor segun edad.</p>


        <table class="table table-striped table-bordered">
            <thead class="table-dark">
                <tr>
                    <th scope="col">Nombre</th>
                    <th scope="col">Edad</th>
                    <th scope="col">Equipo</th>
                </tr>
            </thead>
            <tbody>
                <%foreach (var s in listaCasadosUniversitarios)
                    { %>
                <tr>
                    <td><%=s.Nombre %></td>
                    <td><%=s.Edad %></td>
                    <td><%=s.Equipo %></td>
                </tr>
                <%} %>
            </tbody>
        </table>


    <h5>Nombres</h5>
    <p>Los 5 nombres más repetidos de River</p>

    <div class="tablaNombres">
        <table class="table table-striped table-bordered">
            <thead class="table-dark">
                <tr>
                    <th scope="col">Nombre</th>
                </tr>
            </thead>
            <tbody>
                <%foreach (var nombre in nombresRiver)
                    { %>
                <tr>
                    <td><%=nombre %></td>
                </tr>
                <%} %>
            </tbody>
        </table>
     </div>


    <h5>Equipos</h5>
    <p>Listado de equipos</p>


        <table class="table table-striped table-bordered">
            <thead class="table-dark">
                <tr>
                    <th scope="col">Nombre</th>
                    <th scope="col">Cantidad de socios</th>
                    <th scope="col">Promedio de edad</th>
                    <th scope="col">Menor edad registrada</th>
                    <th scope="col">Mayor edad registrada</th>
                    <th scope="col">Escudo</th>
                </tr>
            </thead>
            <tbody>
                <%foreach (var e in equipos)
                    { %>
                <tr>
                    <td><%=e.Nombre %></td>
                    <td><%=e.CantSocios %></td>
                    <td><%=e.PromEdad %></td>
                    <td><%=e.EdadMenor %></td>
                    <td><%=e.EdadMayor %></td>
                    <td class="center"> <img class="imagenescudo" src="<%=e.EscudoRuta %>" alt="Escudo" /></td>
                </tr>
                <%} %>
            </tbody>
        </table>

    <br />
    <a href="Inicio" class="btn btn-primary ">Volver a pagina principal</a>

</asp:Content>
