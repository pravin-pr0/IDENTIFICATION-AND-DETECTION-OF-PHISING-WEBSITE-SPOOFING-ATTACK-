<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CART.aspx.cs" Inherits="CART" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1" frame="box" 
            style="background-image: none; background-color: #99CCFF;">
            <tr>
                <td class="style4">
                </td>
                <td align="center" class="style5" style="width: 225px">
                    </td>
                <td align="center" bgcolor="#006699" class="style6" style="width: 314px">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        ForeColor="White" Text="PURCHASE CART"></asp:Label>
                </td>
                <td align="center" class="style6" style="width: 68px">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
            </tr>
            
            <tr>
                <td class="style7" colspan="5">
                
                                <asp:GridView ID="GridView1" runat="server" 
        AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="prodid" 
        EmptyDataText="&lt;center&gt; CART IS EMPTY.SHOP TO ADD ITEMS TO THE CART &lt;/center&gt;" 
        OnPageIndexChanging="GridView1_PageIndexChanging" 
        OnRowCancelingEdit="GridView1_RowCancelingEdit" 
        OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" 
        OnRowUpdating="GridView1_RowUpdating" PageSize="5" 
        
        style="Z-INDEX: 100; LEFT: 261px; TOP: 74px; bottom: 191px; width: 648px; height: 269px;" 
        Width="665px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <Columns>
            <asp:BoundField DataField="prodname" HeaderText="PRODUCT NAME" ReadOnly="True">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
          
            <asp:BoundField DataField="prodid" HeaderText="PRODUCT ID" ReadOnly="True">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="prodrs" DataFormatString="{0:dd-MMM-yyyy}" 
                HeaderText="PRODUCT COST" HtmlEncode="False" ReadOnly="True">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
           
            <asp:TemplateField HeaderText="QUANTITY">
                <ItemTemplate>
                    <asp:DropDownList ID="st" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        
                    </asp:DropDownList>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
    
             

        <asp:BoundField DataField="tot" HeaderText="TOTAL" ReadOnly="True">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
    </asp:GridView>                                                            
                    
                    </td>
            </tr>
            <tr>
                <td class="style13" style="height: 59px">
                    </td>
                <td class="style2" style="width: 225px; height: 59px">
                    </td>
                <td class="style3" align="right" style="height: 59px; width: 314px;">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
                        Text="Grand Total:"></asp:Label>
                </td>
                <td align="center" style="height: 59px; width: 68px">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
                        Text="   total"></asp:Label>
                </td>
                <td class="style9" style="height: 59px">
                    </td>
            </tr>
            <tr>
                <td class="style13" style="height: 49px">
                    </td>
                <td class="style2" style="width: 225px; height: 49px;">
                    </td>
                <td class="style3" align="center" style="width: 314px; height: 49px">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" 
                        Text="Continue Shopping" Width="169px" Height="42px" 
                        onclick="Button1_Click" />
                </td>
                <td style="width: 68px; height: 49px;">
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Text="Purchase" 
                        Width="169px" Height="42px" onclick="Button2_Click" />
                </td>
                <td class="style9" style="height: 49px">
                    </td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style2" style="width: 225px">
                    &nbsp;</td>
                <td class="style3" align="right" style="width: 314px">
                    &nbsp;</td>
                <td style="width: 68px">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style2" style="width: 225px">
                    &nbsp;</td>
                <td class="style3" style="width: 314px">
                    &nbsp;</td>
                <td style="width: 68px">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
            </tr>
        </table>
</asp:Content>

