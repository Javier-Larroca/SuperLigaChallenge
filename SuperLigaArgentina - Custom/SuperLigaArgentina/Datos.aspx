<%@ Page Title="SuperLiga" Language="C#" MasterPageFile="~/Interfaces/Interfaz.Master" AutoEventWireup="true" CodeBehind="Datos.aspx.cs" Inherits="SuperLigaArgentina.Datos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h5>Cantidad</h5>
    <p>Cantidad total de personas registradas: <b><% =cantidad %></b> personas</p>
    <h5>Promedio de edad</h5>
    Seleccione un equipo
  <asp:DropDownList AutoPostBack="true" OnSelectedIndexChanged="selectEquipoProm_SelectedIndexChanged" ID="selectEquipoProm" CssClass="dropdown-menu-dark dropdown-posicion" runat="server">
      <asp:ListItem Value="Boca">Boca</asp:ListItem>
      <asp:ListItem Value="Estudiantes">Estudiantes</asp:ListItem>
      <asp:ListItem Value="Gimnasia LP">Gimnasia LP</asp:ListItem>
      <asp:ListItem Value="Hurac�n">Huracán</asp:ListItem>
      <asp:ListItem Value="Independiente">Independiente</asp:ListItem>
      <asp:ListItem Value="Newells">Newells</asp:ListItem>
      <asp:ListItem Value="Racing">Racing</asp:ListItem>
      <asp:ListItem Value="River">River</asp:ListItem>
      <asp:ListItem Value="Rosario Central">Rosario Central</asp:ListItem>
      <asp:ListItem Value="San Lorenzo">San Lorenzo</asp:ListItem>
      <asp:ListItem Value="Velez">Velez</asp:ListItem>
  </asp:DropDownList>
    <br />
    <br />
    <p>Promedio de edad del equipo seleccionado: <b><% =prom %></b> años</p>

    <h5>Listado:</h5>
    Seleccione estado civil: 
    <asp:DropDownList AutoPostBack="true" OnSelectedIndexChanged="estadoCivil_SelectedIndexChanged" ID="estadoCivil" CssClass="dropdown-menu-dark dropdown-posicion" runat="server">
        <asp:ListItem Value="Casado"></asp:ListItem>
        <asp:ListItem Value="Soltero"></asp:ListItem>
    </asp:DropDownList>

    Seleccione nivel de estudios: 
    <asp:DropDownList AutoPostBack="true" OnSelectedIndexChanged="nivelEstudios_SelectedIndexChanged" ID="nivelEstudios" CssClass="dropdown-menu-dark dropdown-posicion" runat="server">
        <asp:ListItem Value="Secundario"></asp:ListItem>
        <asp:ListItem Value="Terciario"></asp:ListItem>
        <asp:ListItem Value="Universitario"></asp:ListItem>
    </asp:DropDownList>

    <br />
    <br />
    <p>Primeras 100 personas. Ordenadas de menor a mayor segun edad.</p>
    <table class="table table-striped table-bordered">
        <thead class="table-dark">
            <tr>
                <th scope="col">Nombre</th>
                <th scope="col">Edad</th>
                <th scope="col">Equipo</th>
            </tr>
        </thead>
        <tbody>
            <%foreach (var s in listaEstadoCivilEstudios)
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
    <p>Los 5 nombres más repetidos por equipo</p>
    Seleccione un equipo: 
      <asp:DropDownList AutoPostBack="true" OnSelectedIndexChanged="equipoNombres_SelectedIndexChanged" ID="equipoNombres" CssClass="dropdown-menu-dark dropdown-posicion" runat="server">
          <asp:ListItem Value="Boca">Boca</asp:ListItem>
          <asp:ListItem Value="Estudiantes">Estudiantes</asp:ListItem>
          <asp:ListItem Value="Gimnasia LP">Gimnasia LP</asp:ListItem>
          <asp:ListItem Value="Hurac�n">Huracán</asp:ListItem>
          <asp:ListItem Value="Independiente">Independiente</asp:ListItem>
          <asp:ListItem Value="Newells">Newells</asp:ListItem>
          <asp:ListItem Value="Racing">Racing</asp:ListItem>
          <asp:ListItem Value="River">River</asp:ListItem>
          <asp:ListItem Value="Rosario Central">Rosario Central</asp:ListItem>
          <asp:ListItem Value="San Lorenzo">San Lorenzo</asp:ListItem>
          <asp:ListItem Value="Velez">Velez</asp:ListItem>
      </asp:DropDownList>
    <br />
    <br />

    <div class="tablaNombres">
        <table class="table table-striped table-bordered">
            <thead class="table-dark">
                <tr>
                    <th scope="col">Nombre</th>
                </tr>
            </thead>
            <tbody>
                <%foreach (var nombre in nombresEquipos)
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
                <td class="center">
                    <img class="imagenescudo" src="<%=e.EscudoRuta %>" alt="Escudo" /></td>
            </tr>
            <%} %>
        </tbody>
    </table>

    <br />
    <a href="Inicio" class="btn btn-primary ">Volver a pagina principal</a>

</asp:Content>
