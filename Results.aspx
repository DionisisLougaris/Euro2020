<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Results.aspx.cs" Inherits="Results" %>

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
        <asp:HyperLink NavigateUrl="Stadiums.aspx" ID="stadiums" runat="server">Stadiums - </asp:HyperLink>
        <asp:HyperLink NavigateUrl="Results.aspx" ID="gameResults" runat="server">Game Results</asp:HyperLink>
        <br />
    </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="59px"></asp:TextBox>
&nbsp;<br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <br />
        <br />
        <br />
        <asp:DropDownList ID="lstTeamNames" runat="server" Width="111px">
        </asp:DropDownList>
&nbsp;
        <asp:Label ID="lblScore1" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblPen1" runat="server" Text="Label"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblPenalty" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:DropDownList ID="lstTeam2Names" runat="server" Width="108px">
        </asp:DropDownList>
&nbsp;
        <asp:Label ID="lblScore2" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblPen2" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
