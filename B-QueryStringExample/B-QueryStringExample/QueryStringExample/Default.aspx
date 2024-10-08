<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="QueryStringExample.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Query String Example<br />
        <br />
        <asp:DropDownList ID="DropDownChoices" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        <asp:CheckBox ID="ChkDetails" runat="server" Text="Show Full Details" />
        <br />
        <br />
        <asp:Button ID="BtnView" runat="server" OnClick="BtnView_Click" Text="View Information" />
&nbsp;
        <asp:Label ID="LblError" runat="server"></asp:Label>
        <br />
        <br />
&nbsp;
            
    </div>
    </form>
</body>
</html>
