<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CommandInsert.aspx.cs" Inherits="exp8_1.CommandInsert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
        <div>
            <label>请输入学生姓名</label>：
            <asp:TextBox ID="txtClass" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="btnAdd" runat="server" Text="添加" OnClick="addBtn_Click" />
    </form>
</body>
</html>
