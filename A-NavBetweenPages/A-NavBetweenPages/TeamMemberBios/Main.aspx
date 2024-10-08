<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="TeamMemberBios.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 200px;
            height: 200px;
            border-width: 0px;
        }
        .auto-style3 {
            width: 68%;
            margin-left: 145px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
            width: 239px;
        }
        .auto-style6 {
            width: 68%;
            margin-left: 146px;
        }
        .auto-style7 {
            width: 668px;
        }
        .auto-style8 {
            width: 250px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1>Navigating Between Pages</h1>
            <br />
            <br />
            <a href="Team.aspx">Creating an HTML Text Hyperlink</a><br />
            <br />
            <strong>An HTML Image Hyperlink</strong><br />
            <a href="Team.aspx">
            <img alt="raptors" class="auto-style2" src="images/toronto-raptors.png" /></a><br />
            <br />
            An ASP.NET Server Control Hyperlink<br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Team.aspx">Go To Team Page</asp:HyperLink>
            <br />
            <br />
            An ASP.NET Server Control Hyperlink Using An Image
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/images/kyle.png" NavigateUrl="~/Team.aspx">HyperLink</asp:HyperLink>
            <br />
            <br />
            An ASP.NET LinkButton...This is coded in C#<br />
            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="Yellow" BorderColor="#CC0000" BorderStyle="Solid" OnClick="LinkButton1_Click" ToolTip="The Raptors">Go To Team Page</asp:LinkButton>
            <br />
            <br />
            <table border="1" bgcolor="yellow" class="auto-style3">
                <tr>
                    <td class="auto-style5">Login Name </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtUserName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="BtnSignIn" runat="server" Text="Sign In" OnClick="BtnSignIn_Click" />
                    </td>
                </tr>
            </table>
            <br />
            <br />

            <table border="1" bgcolor="green" class="auto-style6">
                <tr>
                    <td class="auto-style8">Login Name</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TxtLoginName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Password</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TxtPassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
