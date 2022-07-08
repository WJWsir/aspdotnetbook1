<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="4-5_fileInputHTMLControl.aspx.cs" Inherits="exp4._4_5_fileInputHTMLControl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <input id="fileUpload" type="file" runat="server" />
    <input id="button_upload" type="button" value="上传文件" runat="server" onserverclick="UplaodFile" />
</asp:Content>
