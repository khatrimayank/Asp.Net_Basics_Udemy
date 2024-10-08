<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Calendar.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Working with the Calendar Server Control<br />
        <asp:Calendar ID="CalMy" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="CalMy_SelectionChanged" SelectionMode="DayWeek" ShowGridLines="True" Width="220px">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
        <asp:Label ID="LblCalendar" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="BtnGet" runat="server" OnClick="BtnGet_Click" style="height: 26px" Text="Get Date" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnSet" runat="server" OnClick="BtnSet_Click" Text="Set Date" />
&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="LblResult" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
