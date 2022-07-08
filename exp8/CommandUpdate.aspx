<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CommandUpdate.aspx.cs" Inherits="exp8_1.CommandUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
        <div>
            <%-- 该 ASP.NET 框架的设计， --%>
            <%-- 1. ID属性 的值命名为page对象对该GridView控件的引用属性名称 --%>
            <%-- 2. OnRowCancelingEdit, OnRowEditing, OnRowUpdating 的值命名为page对象响应该GridView控件事件的方法名 --%>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateEditButton="true" OnRowCancelingEdit="Cancel" OnRowEditing="Edit" OnRowUpdating="Update_zzz"></asp:GridView>
        </div>
    </form>
</body>
</html>
