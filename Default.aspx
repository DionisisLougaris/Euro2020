<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Euro 2020</title>
    <link rel="stylesheet" href="Layoutcss.css">
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="titleLabel" runat="server" Text="EURO 2020"></asp:Label>
        <br />
        <br />
        <asp:HyperLink NavigateUrl="Default.aspx" ID="home" runat="server">Home - </asp:HyperLink>
        <asp:HyperLink NavigateUrl="Stadiums.aspx" ID="stadiums" runat="server">Stadiums - </asp:HyperLink>
        <br />
        <br />
        <asp:DropDownList ID="teamsList" runat="server" Width="169px" AutoPostBack="True" OnSelectedIndexChanged="teamsList_SelectedIndexChanged"></asp:DropDownList>
        <br />
        <br />
        <asp:Label class="labels" ID="Label1" runat="server" Text="Team's Players "></asp:Label>
        &nbsp;<asp:Label class="labels" ID="nPlaying" runat="server" Text="():"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="listPLaying" runat="server" Width="180px"  AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label class="labels" ID="Label3" runat="server" Text="Team's Subs "></asp:Label>
        &nbsp;
        <asp:Label class="labels" ID="nNotPlaying" runat="server" Text="():"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="listNotPlaying" runat="server" Width="180px" AutoPostBack="True">
        </asp:DropDownList>
    </div>
    </form>
</body>
</html>
