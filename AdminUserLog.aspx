<%@ Page Language="C#" MasterPageFile="~/shipping.master" AutoEventWireup="true" CodeFile="AdminUserLog.aspx.cs" Inherits="AdminUserLog" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

* { margin:0px auto;
    padding:0;
    
}

    .style2
    {
        width: 11px;
    }
        .style3
        {
            width: 1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" 
            DynamicHorizontalOffset="2" Font-Bold="True" Font-Names="Times New Roman" 
            Font-Size="Large" ForeColor="#990000" Height="54px" Orientation="Horizontal" 
            StaticSubMenuIndent="10px" Width="754px">
            <StaticSelectedStyle BackColor="#FFCC66" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
            <DynamicMenuStyle BackColor="#FFFBD6" />
            <DynamicSelectedStyle BackColor="#FFCC66" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticHoverStyle BackColor="#990000" ForeColor="White" />
            <Items>
                <asp:MenuItem NavigateUrl="~/AdminViewProdRank.aspx" Text="PRODUCT RANKING" Value="HOME">
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/AdminUserLog.aspx" Text="VIEW USERS LOG" 
                    Value="VIEW USERS LOG"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="AdminHackerDetail.aspx" Text="VIEW HACKER DETAILS" 
                    Value="VIEW HACKERS"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Login.aspx" Text="LOGOUT" Value="LOGOUT">
                </asp:MenuItem>
            </Items>
        </asp:Menu>
        <br />
    </p>
<table cellpadding="8" cellspacing="8">
    <tr>
        <td class="style3">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
                CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal" 
                Height="210px" Width="593px">
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <Columns>
                    <asp:BoundField DataField="email" HeaderText="E-Mail Address" SortExpression="email" />
                    <asp:BoundField DataField="UserName" HeaderText="User Name" 
                        SortExpression="UserName" />
                    <asp:BoundField DataField="UserIP" HeaderText="User IP" 
                        SortExpression="UserIP" />
                    <asp:BoundField DataField="TimeIn" HeaderText="TimeIn" 
                        SortExpression="TimeIn" />
                    <asp:BoundField DataField="TimeOut" HeaderText="TimeOut" 
                        SortExpression="TimeOut" />
                    <asp:BoundField DataField="uCnt" HeaderText="User Count" SortExpression="uCnt" />
                </Columns>
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ElectronicShoppingConnectionString %>" 
                SelectCommand="SELECT L.email, L.UserName, L.UserIP, L.TimeIn, L.TimeOut, U.uCnt FROM LogDetails AS L INNER JOIN users AS U ON U.email = L.email">
            </asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
    <p>
    </p>
</asp:Content>

