<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="4-678_TextServerControls.aspx.cs" Inherits="exp4._4_678_TextServerControls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>ASP.NET 服务器控件</h1>
    <ol class="list-group list-group-numbered">
        <li class="list-group-item"><asp:Label ID="label" Text="标签控件" runat="server" /></li>
        <li class="list-group-item"><asp:Literal ID="literal" Text="literal控件" runat="server"></asp:Literal></li>
        <li class="list-group-item"><asp:TextBox ID="textbox" Text="textbox控件" runat="server"></asp:TextBox></li>
        <li class="list-group-item"><asp:HyperLink ID="link" runat="server" ImageUrl="~/Content/img/dog.jpg" NavigateUrl="~/Default.aspx">超链接</asp:HyperLink></li>
    </ol>
</asp:Content>
