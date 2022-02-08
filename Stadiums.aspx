<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Stadiums.aspx.cs" Inherits="Stadiums" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Layoutcss.css">
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:HyperLink NavigateUrl="Default.aspx" ID="home" runat="server">Home - </asp:HyperLink>
        <br />
        <asp:DropDownList ID="listStadiums" runat="server" Width="183px" AutoPostBack="True" OnSelectedIndexChanged="listStadiums_SelectedIndexChanged"></asp:DropDownList>
        <br />
        <br />
        <asp:Label class="labels" ID="lblStadioName" runat="server" Text=""></asp:Label>
        <asp:Label class="labels" ID="lblStadioCity" runat="server" Text=""></asp:Label>
        <asp:Label class="labels" ID="lblStadioSeats" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server">Google Maps: Πατήστε Εδώ </asp:HyperLink>
        <br />
        <asp:HyperLink ID="lnkStWiki" runat="server"> </asp:HyperLink>
        <br />
        <asp:PlaceHolder ID="iFramePH" runat="server"></asp:PlaceHolder>
    </div>
    </form>
</body>
</html>
