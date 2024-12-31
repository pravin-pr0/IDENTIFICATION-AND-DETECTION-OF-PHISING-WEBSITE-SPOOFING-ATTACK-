<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="prodinfo1.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center" style="width: 820px">
    <tr>
        <td>
            &nbsp;</td>
        <td align="center" colspan="2">
            <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" 
                Font-Size="Large"></asp:Label>
        </td>
    </tr>
    <tr>
    <td align="center">
        <asp:Label ID="Label4" runat="server" Text="Label" Font-Size="Large"></asp:Label>
        </td><td align="center" colspan="2">
        <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True" 
                Font-Size="Large"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:Image ID="Image2" runat="server" Height="210px" Width="250px" />
        </td>
        <td colspan="2" align="center">
            <asp:Image ID="Image3" runat="server" Height="210px" Width="250px" />
        </td>
    </tr>
    <tr>
        <td style="height: 104px">
            </td>
        <td style="height: 104px">
            <asp:Button ID="Button1" runat="server" Font-Bold="True" 
                Text="CONTINUE SHOPPING" Width="182px" Height="31px" 
                onclick="Button1_Click" />
        </td>
        <td style="height: 104px">
            <asp:Button ID="Button2" runat="server" Font-Bold="True" Text="BUY NOW" 
                Width="182px" onclick="Button2_Click" Height="32px" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

