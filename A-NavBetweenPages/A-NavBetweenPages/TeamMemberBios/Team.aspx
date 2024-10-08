<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Team.aspx.cs" Inherits="TeamMemberBios.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 332px;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
            <h1>The Toronto Raptors&nbsp;&nbsp;
                <asp:Label ID="LblWelcome" runat="server"></asp:Label>
            </h1>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Click below to choose a player...<asp:Label ID="LblName" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style3" rowspan="2">
                        <asp:Image ID="ImgPlayers" runat="server" Height="282px" Width="292px" ImageUrl="~/images/toronto-raptors.png" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem>Players</asp:ListItem>
                            <asp:ListItem>Jonas</asp:ListItem>
                            <asp:ListItem>OG</asp:ListItem>
                            <asp:ListItem>Kyle</asp:ListItem>
                            <asp:ListItem>Serge</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <div class="auto-style3">
            <br />
                <a href="Main.aspx">Return to Main Menu</a><br />
            </div>
        </div>
    </form>
</body>
</html>
