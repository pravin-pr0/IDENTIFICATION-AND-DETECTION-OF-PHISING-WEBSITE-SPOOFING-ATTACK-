<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table style="width: 100%">
    <tr>
        <td style="width: 233px; height: 39px">
        </td>
        <td style="width: 129px; height: 39px">
            <asp:Label ID="Label2" runat="server" Text="Card Type"></asp:Label>
        </td>
        <td style="width: 236px; height: 39px">
            <asp:DropDownList ID="DropDownList1" runat="server" Height="28px" Width="152px">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>Visa Card</asp:ListItem>
                <asp:ListItem>Master Card</asp:ListItem>
                <asp:ListItem>American Express</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td style="height: 39px">
        </td>
    </tr>
    <tr>
        <td style="width: 233px; height: 44px">
        </td>
        <td style="width: 129px; height: 44px">
            <asp:Label ID="Label3" runat="server" Text="Card Number"></asp:Label>
        </td>
        <td style="width: 236px; height: 44px">
            <asp:TextBox ID="TextBox1" runat="server" Width="157px"></asp:TextBox>
        </td>
        <td style="height: 44px">
        </td>
    </tr>
    <tr>
        <td style="width: 233px; height: 60px">
        </td>
        <td style="width: 129px; height: 60px">
            <asp:Label ID="Label4" runat="server" Text="Expires On"></asp:Label>
        </td>
        <td style="width: 236px; height: 60px">
            <asp:TextBox ID="TextBox2" runat="server" Width="155px"></asp:TextBox>
        </td>
        <td style="height: 60px">
        </td>
    </tr>
    <tr>
        <td style="width: 233px; height: 55px">
            &nbsp;</td>
        <td style="width: 129px; height: 55px">
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="PREVIOUS" 
                Width="92px" Height="31px" />
        </td>
        <td style="width: 236px; height: 55px">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="NEXT" 
                Width="94px" Height="33px" />
        </td>
        <td style="height: 55px">
        </td>
    </tr>
    <tr>
        <td style="width: 233px">
            &nbsp;</td>
        <td style="width: 129px">
            &nbsp;</td>
        <td style="width: 236px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>


</asp:Content>

