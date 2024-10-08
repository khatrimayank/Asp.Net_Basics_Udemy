<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MoreControls.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>More Controls Demo</h1>
            Name:
            <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
&nbsp;&nbsp;
            <br />
            <br />
            Select One:
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>Pick One</asp:ListItem>
                <asp:ListItem>Not Started</asp:ListItem>
                <asp:ListItem>In Progress</asp:ListItem>
                <asp:ListItem>Complete</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;
            <asp:Label ID="LblStatus" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            Department<br />
            <asp:RadioButton ID="RdoMarketing" runat="server" GroupName="Department" Text="Marketing" />
            <br />
            <asp:RadioButton ID="RdoAccounting" runat="server" GroupName="Department" Text="Accouting" />
            <br />
            <br />
            <asp:CheckBox ID="ChkApproval" runat="server" Text="Requires Approval" />
&nbsp;&nbsp; <a href="http://www.marketing-interactive.com/about-65-of-multinational-brands-to-increase-spending-on-influencer-marketing-says-wfa/">More Info</a><br />
            <br />
            <asp:Button ID="BtnOK" runat="server" OnClick="BtnOK_Click" Text="OK" />
&nbsp;&nbsp;
            <asp:Label ID="LblOtherStatus" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
