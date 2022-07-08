<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="4-3_selectHTMLControl.aspx.cs" Inherits="exp4._4_3_selectHTMLControl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <h1>HTML 服务器控件 - select control</h1>
        <table class="table table-striped table-hover">
            <tr>
                <th>Select 属性</th>
                <th>描述</th>
            </tr>
            <tr><td>id</td><td>访问此控件的标识符</td></tr>
            <tr><td>runat</td><td>值必须为server才被ASP.NET识别为服务器控件（经由CGI程序处理）</td></tr>
            <tr><td>style</td><td>设置或返回应用于Select tag Html元素的样式</td></tr>
        </table>
        <div>
            <label>账户</label>
            <input id="accountCode" type="text" size="20" maxlength="12" runat="server" />
            <br />
            <label>密码</label>
            <input id="accountPassword" type="password" size="20" maxlength="12" runat="server" />
            <br />
            <label>角色</label>
            <select id="role" runat="server" style="width: calc(20 * 8.9px); height: 26px">
                <option value="student">学生</option>
                <option value="teacher">教师</option>
            </select>
            <br />
            <button id="login" onserverclick="LoginSuccessfully" runat="server">点 击</button>
        </div>
</asp:Content>
