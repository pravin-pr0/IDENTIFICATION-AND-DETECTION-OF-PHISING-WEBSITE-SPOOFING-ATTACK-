<%@ Page Language="C#" MasterPageFile="~/shipping.master" AutoEventWireup="true" CodeFile="AdminViewProdRank.aspx.cs" Inherits="AdminViewProdRank" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 11px;
    }
* { margin:0px auto;
    padding:0;
    
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" 
            DynamicHorizontalOffset="2" Font-Bold="True" Font-Names="Times New Roman" 
            Font-Size="Large" ForeColor="#990000" Height="49px" Orientation="Horizontal" 
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
        <td>
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
            CellPadding="4" ForeColor="#333333" GridLines="None" Height="214px" 
            Width="538px">
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#EFF3FB" />
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Product Name" />
                <asp:BoundField DataField="price" HeaderText="Product cost" />
                <asp:ImageField DataImageUrlField="imginfo" HeaderText="Image">
                </asp:ImageField>
            </Columns>
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
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

