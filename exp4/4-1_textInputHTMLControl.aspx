<%@ Page Title="例4-1" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="4-1_textInputHTMLControl.aspx.cs" Inherits="exp4._4_1_textInputHTMLControl" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <h1>HTML 服务器控件 - text input control</h1>
        <table class="table table-striped table-hover">
            <tr>
                <th>Text Input 属性</th>
                <th>描述</th>
            </tr>
            <tr><td>id</td><td>访问此控件的标识符</td></tr>
            <tr><td>runat</td><td>值必须为server才被ASP.NET识别为服务器控件（经由CGI程序处理）</td></tr>
            <tr><td>type</td><td>输入框类型, 如password, color, date, text...</td></tr>
            <tr><td>size</td><td>输入框显示宽度</td></tr>
            <tr><td>maxlength</td><td>输入框可输入字符长度</td></tr>
        </table>
        <div>
            <label>账户</label>
            <input id="accountCode" type="text" size="15" maxlength="2" runat="server" />
            <br />
            <label>密码</label>
            <input id="accountPassword" type="password" size="20" maxlength="1" runat="server" />
        </div>
</asp:Content>
