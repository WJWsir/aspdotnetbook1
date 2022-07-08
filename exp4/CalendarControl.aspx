<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CalendarControl.aspx.cs" Inherits="exp4.CalendarControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <asp:Calendar class="col" ID="Calendar1" OnSelectionChanged="Calendar_SelectionChanged" OnDayRender="Calendar_DayRender" runat="server">
            <SelectedDayStyle BackColor="#D1D0D0" Font-Bold="True"></SelectedDayStyle>
            <TitleStyle BackColor="White" ForeColor="Black" BorderWidth="1px" BorderColor="#3366CC" Font-Size="10pt" Font-Bold="True"></TitleStyle>
            <OtherMonthDayStyle ForeColor="#999999" CssClass="Calendar"></OtherMonthDayStyle>
        </asp:Calendar>
        <asp:Calendar class="col" ID="Calendar2" OnSelectionChanged="Calendar_SelectionChanged" OnDayRender="Calendar_DayRender" runat="server">
            <SelectedDayStyle BackColor="#D1D0D0" Font-Bold="True"></SelectedDayStyle>
            <TitleStyle BackColor="White" ForeColor="Black" BorderWidth="1px" BorderColor="#3366CC" Font-Size="10pt" Font-Bold="True"></TitleStyle>
            <OtherMonthDayStyle ForeColor="#999999" CssClass="Calendar"></OtherMonthDayStyle>
        </asp:Calendar>
        <asp:Calendar class="col" ID="Calendar3" OnSelectionChanged="Calendar_SelectionChanged" OnDayRender="Calendar_DayRender" runat="server"></asp:Calendar>
    </div>
    <div class="row">
        <asp:Calendar class="col" ID="Calendar4" OnSelectionChanged="Calendar_SelectionChanged" OnDayRender="Calendar_DayRender" runat="server"></asp:Calendar>
        <asp:Calendar class="col" ID="Calendar5" OnSelectionChanged="Calendar_SelectionChanged" OnDayRender="Calendar_DayRender" runat="server"></asp:Calendar>
        <asp:Calendar class="col" ID="Calendar6" OnSelectionChanged="Calendar_SelectionChanged" OnDayRender="Calendar_DayRender" runat="server"></asp:Calendar>
    </div>
    <div class="row">
        <asp:Calendar class="col" ID="Calendar7" OnSelectionChanged="Calendar_SelectionChanged" OnDayRender="Calendar_DayRender" runat="server"></asp:Calendar>
        <asp:Calendar class="col" ID="Calendar8" OnSelectionChanged="Calendar_SelectionChanged" OnDayRender="Calendar_DayRender" runat="server"></asp:Calendar>
        <asp:Calendar class="col" ID="Calendar9" OnSelectionChanged="Calendar_SelectionChanged" OnDayRender="Calendar_DayRender" runat="server"></asp:Calendar>
    </div>
    <div class="row">
        <asp:Calendar class="col" ID="Calendar10" OnSelectionChanged="Calendar_SelectionChanged" OnDayRender="Calendar_DayRender" runat="server"></asp:Calendar>
        <asp:Calendar class="col" ID="Calendar11" OnSelectionChanged="Calendar_SelectionChanged" OnDayRender="Calendar_DayRender" runat="server"></asp:Calendar>
        <asp:Calendar class="col" ID="Calendar12" OnSelectionChanged="Calendar_SelectionChanged" OnDayRender="Calendar_DayRender" runat="server"></asp:Calendar>
    </div>
</asp:Content>
