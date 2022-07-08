<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="4-2_buttonHTMLControl.aspx.cs" Inherits="exp4._4_2_buttonHTMLControl" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>HTML 服务器控件 - button control</h1>
        <table class="table table-striped table-hover">
            <tr>
                <th>Button 属性</th>
                <th>描述</th>
            </tr>
            <tr><td>id</td><td>访问此控件的标识符</td></tr>
            <tr><td>runat</td><td>值必须为server才被ASP.NET识别为服务器控件（经由CGI程序处理）</td></tr>
            <tr><td>innerHTML</td><td>设置或返回Button tag HTML元素间的内容，html关键字识别为html实体</td></tr>
            <tr><td>innertext</td><td>设置或返回Button tag HTML元素间的内容，html关键字识别为普通字符文本</td></tr>
        </table>
        <div>
            <label>账户</label>
            <input id="accountCode" type="text" size="15" maxlength="2" runat="server" />
            <br />
            <label>密码</label>
            <input id="accountPassword" type="password" size="20" maxlength="1" runat="server" />
            <br />
            <button id="login" onserverclick="LoginSuccessfully" runat="server">点 击</button>
        </div>
</asp:Content>
