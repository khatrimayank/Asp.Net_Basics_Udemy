<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Conditionals.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Pick your favourite food from the list below<br />
        <br />
        <asp:RadioButton ID="RdoPizza" runat="server" GroupName="Food" Text="Pizza" />
        <br />
        <asp:RadioButton ID="RdoSalad" runat="server" GroupName="Food" Text="Salad" />
        <br />
        <asp:RadioButton ID="RdoPeanutButter" runat="server" GroupName="Food" Text="Peanut Butter" />
        <br />
        <br />
        <asp:Button ID="BtnResult" runat="server" OnClick="BtnResult_Click" Text="Result" />
        <br />
        <br />
        <asp:Label ID="LblResult" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Image ID="ImgFood" runat="server" Height="100px" Width="100px" />
    
        <br />
        <br />
        What Programming languages you know:<br />
        <asp:CheckBox ID="Chk1" runat="server" OnCheckedChanged="Chk1_CheckedChanged" Text="Python" />
        <br />
        <asp:CheckBox ID="Chk2" runat="server" Text="Java" />
        <br />
        <asp:CheckBox ID="Chk3" runat="server" Text="C#" />
        <br />
        <asp:Button ID="Btn" runat="server" Text="Favourite Languages" />
        <br />
    
    </div>
    </form>
</body>
</html>
