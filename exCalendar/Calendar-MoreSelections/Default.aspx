<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="exCalendar.Calendar_MoreSelections.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
            <br />
            <table>
                <tr>
                    <td>Select a month</td>
                    <td>
                        <asp:DropDownList ID="ddl" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl_SelectedIndexChanged">
                            <asp:ListItem Text="January" Value="1"></asp:ListItem>
                            <asp:ListItem Text="February" Value="2"></asp:ListItem>
                            <asp:ListItem Text="March" Value="3"></asp:ListItem>
                            <asp:ListItem Text="April" Value="4"></asp:ListItem>
                            <asp:ListItem Text="May" Value="5"></asp:ListItem>
                            <asp:ListItem Text="June" Value="6"></asp:ListItem>
                            <asp:ListItem Text="July" Value="7"></asp:ListItem>
                            <asp:ListItem Text="August" Value="8"></asp:ListItem>
                            <asp:ListItem Text="September" Value="9"></asp:ListItem>
                            <asp:ListItem Text="October" Value="10"></asp:ListItem>
                            <asp:ListItem Text="November" Value="11"></asp:ListItem>
                            <asp:ListItem Text="December" Value="12"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Button ID="btnTgif" runat="server" Text="TGIF" OnClick="btnTgif_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2"><b>Day Range</b></td>
                </tr>
                <tr>
                    <td>Starting Day</td>
                    <td>Ending Day</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtStart" runat="server" Width="25" MaxLength="2" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtEnd" runat="server" Width="25" MaxLength="2" /></td>
                    <td>
                        <asp:Button ID="btnRange" runat="server" Text="Apply" OnClick="btnRange_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
