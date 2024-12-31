<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Account.aspx.cs" Inherits="_Default" Title="Untitled Page" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 100%; background-color: #FFFFFF;">
    <tr>
        <td style="width: 86px; height: 40px">
        </td>
        <td style="width: 344px; height: 40px">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
                Text="Create a New Account With Us"></asp:Label>
        </td>
        <td align="center" colspan="2" style="height: 40px">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
                Text="Sign in To Your Account"></asp:Label>
            <asp:Button ID="Button3" runat="server" Text="Button" />
        </td>
    </tr>
    <tr>
        <td style="width: 86px">
            &nbsp;</td>
        <td style="width: 344px">
            <asp:Label ID="Label4" runat="server" Font-Bold="True" 
                Text="Create an account with us and you'll be able to:"></asp:Label>
        </td>
        <td style="width: 129px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 86px; height: 33px">
        </td>
        <td style="width: 344px; height: 33px">
            <asp:Label ID="Label5" runat="server" Text="&gt;&gt; Check out faster"></asp:Label>
        </td>
        <td style="width: 129px; height: 33px">
            <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="User ID"></asp:Label>
        </td>
        <td style="height: 33px">
            <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="176px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 86px; height: 32px">
        </td>
        <td style="width: 344px; height: 32px">
            <asp:Label ID="Label6" runat="server" 
                Text="&gt;&gt; Save multiple shipping addresses"></asp:Label>
        </td>
        <td style="width: 129px; height: 32px">
        </td>
        <td style="height: 32px">
        </td>
    </tr>
    <tr>
        <td style="width: 86px; height: 36px">
        </td>
        <td style="width: 344px; height: 36px">
            <asp:Label ID="Label7" runat="server" Text="&gt;&gt; Access your order history"></asp:Label>
        </td>
        <td style="width: 129px; height: 36px">
            <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Password"></asp:Label>
        </td>
        <td style="height: 36px">
            <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="179px" 
                TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 86px; height: 32px">
        </td>
        <td style="width: 344px; height: 32px">
            <asp:Label ID="Label8" runat="server" Text="&gt;&gt; Track new orders"></asp:Label>
        </td>
        <td style="width: 129px; height: 32px">
        </td>
        <td style="height: 32px">
        </td>
    </tr>
    <tr>
        <td style="width: 86px; height: 36px">
        </td>
        <td style="width: 344px; height: 36px">
            <asp:Label ID="Label9" runat="server" 
                Text="&gt;&gt; Save items to your wish list"></asp:Label>
        </td>
        <td style="width: 129px; height: 36px">
        </td>
        <td style="height: 36px">
            <asp:Button ID="Button1" runat="server" Text="Sign in" Font-Bold="True" 
                Height="31px" Width="91px" onclick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td style="width: 86px; height: 48px">
        </td>
        <td style="width: 344px; height: 48px">
            <asp:LinkButton ID="LinkButton6" runat="server" onclick="LinkButton6_Click" 
                PostBackUrl="~/newuser.aspx" Font-Bold="True">Click Here To Create a New 
            Account</asp:LinkButton>
        </td>
        <td style="width: 129px; height: 48px">
        </td>
        <td style="height: 48px">
            <asp:LinkButton ID="LinkButton7" runat="server" onclick="LinkButton7_Click" 
                Font-Bold="True">Forgot Password?</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td style="width: 86px">
            &nbsp;</td>
        <td style="width: 344px">
            &nbsp;</td>
        <td style="width: 129px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 86px">
            &nbsp;</td>
        <td style="width: 344px" align="center">
            <asp:Label ID="Label12" runat="server" Font-Bold="True" 
                Text="Enter Your Mail ID"></asp:Label>
        </td>
        <td colspan="2">
            <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="141px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 86px; height: 45px;">
            </td>
        <td style="width: 344px; height: 45px;">
            </td>
        <td style="width: 129px; height: 45px;">
            <asp:Button ID="Button2" runat="server" Text="Retrive" Font-Bold="True" 
                Height="25px" Width="93px" onclick="Button2_Click" />
        </td>
        <td align="center" style="height: 45px">
            <asp:Label ID="Label14" runat="server" Font-Bold="True" Text="Password Is: "></asp:Label>
            <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Password"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 86px">
            &nbsp;</td>
        <td style="width: 344px">
            &nbsp;</td>
        <td style="width: 129px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 86px">
            &nbsp;</td>
        <td style="width: 344px">
            &nbsp;</td>
        <td style="width: 129px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 86px">
            &nbsp;</td>
        <td style="width: 344px">
            &nbsp;</td>
        <td style="width: 129px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>

</asp:Content>

