<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="4-9_10_11_ButtonServerControl.aspx.cs" Inherits="exp4._4_9_10_11_ButtonServerControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <ol class="list-group list-group-numbered">
        <li class="list-group-item">
            <asp:Button ID="button1" runat="Server" Text="普通按钮"></asp:Button>
        </li>
        <li class="list-group-item">
            <asp:Button ID="button2" runat="Server" Text="超链接按钮"
                PostBackUrl="~/Default.aspx"></asp:Button>
        </li>
        <li class="list-group-item">
            <asp:ImageButton ID="button3" runat="Server" Text="图片按钮"
                ImageUrl="~/Content/img/dog.jpg" PostBackUrl="~/Default.aspx"></asp:ImageButton>
        </li>
    </ol>



</asp:Content>
