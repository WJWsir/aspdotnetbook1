<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="exCalendar.Calendar_SelectionChanged.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
            <br />
            <asp:Label ID="lblCount" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblTodaysDate" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblSelected" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
