<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Finish.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table style="width: 100%">
    <tr>
        <td style="width: 36px">
            &nbsp;</td>
        <td colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" colspan="4" style="height: 71px">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                ForeColor="#006600" Text="THANK YOU!"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 36px">
            &nbsp;</td>
        <td style="width: 149px">
            &nbsp;</td>
        <td style="width: 504px">
            &nbsp;</td>
        <td align="center">
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="37px" 
                onclick="Button1_Click" Text="LOGOUT" Width="91px" />
        </td>
    </tr>
    <tr>
        <td style="width: 36px">
            &nbsp;</td>
        <td colspan="3">
            &nbsp;</td>
    </tr>
</table>


</asp:Content>

