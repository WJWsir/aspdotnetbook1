<%@ Page Title="搞什么" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="4-12_13_14_15_ListSelectionServerControls.aspx.cs" Inherits="exp4._4_12_13_14_15_ListSelectionServerControls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="display-4">separate checkbox</h1>
        <hr />
        <asp:CheckBox ID="CheckBox" runat="server" Text="北京人" Checked="true" />
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="运动员" />
        <br />
        <asp:CheckBox ID="CheckBox2" runat="server" Text="婚配否" />
    </div>
    <div class="jumbotron">
        <h1 class="display-4">checkbox group</h1>
        <hr />
        <asp:CheckBoxList ID="CheckBoxList" runat="server">
            <asp:ListItem>恶魔</asp:ListItem>
            <asp:ListItem>妖怪</asp:ListItem>
            <asp:ListItem>神仙</asp:ListItem>
            <asp:ListItem>佛陀</asp:ListItem>
        </asp:CheckBoxList>
    </div>
    <div class="jumbotron">
        <h1 class="display-4">List box</h1>
        <hr />
        <asp:ListBox ID="ListBox" runat="server" Rows="2">
            <asp:ListItem Selected="True">恶魔</asp:ListItem>
            <asp:ListItem>妖怪</asp:ListItem>
            <asp:ListItem>神仙</asp:ListItem>
            <asp:ListItem>佛陀</asp:ListItem>
        </asp:ListBox>
    </div>
    <div class="jumbotron">
        <h1 class="display-4">DropDownList</h1>
        <hr />
        <asp:DropDownList ID="DropDownList" runat="server">
            <asp:ListItem Selected="True">恶魔</asp:ListItem>
            <asp:ListItem>妖怪</asp:ListItem>
            <asp:ListItem>神仙</asp:ListItem>
            <asp:ListItem>佛陀</asp:ListItem>
        </asp:DropDownList>
    </div>
</asp:Content>
