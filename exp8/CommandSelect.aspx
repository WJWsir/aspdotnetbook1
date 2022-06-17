<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CommandSelect.aspx.cs" Inherits="exp8_1.CommandSelect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="font-size: 10pt">
                <tr>
                    <td>请输入姓名：<asp:TextBox ID="txtName" runat="server" Width="80px"></asp:TextBox>
                        <asp:Button ID="selectBtn" runat="server" OnClick="selectBtn_Click" Text="查询" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
