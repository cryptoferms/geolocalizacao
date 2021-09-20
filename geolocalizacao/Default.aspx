<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="geolocalizacao.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pegar localização do user</title>
    <script>
        var x = document.getElementById("demo");

        function pegarLocalizacao() {
            //verifica se o navegador suporta a localização - Exibindo o popup para permitir
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(showPosition);
            }
            else {
                x.innerHTML = "Geolocalização não é suportada por este navegador.";
            }
        }
        function showPosition(position) {
            var lat = position.coords.latitude;
            var long = position.coords.longitude;

            alert("Latitude: " + lat +
                "\nLongitude: " + long);
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Clique no botão para capturar as coordenadas</h1>
            <asp:Button ID="Button1" OnClientClick="pegarLocalizacao(); return false;" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
