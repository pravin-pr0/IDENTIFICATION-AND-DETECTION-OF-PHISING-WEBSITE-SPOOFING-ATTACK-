<%@ Page Language="C#" MasterPageFile="~/shipping.master" AutoEventWireup="true" CodeFile="newuser1.aspx.cs" Inherits="newuser1" Title="Untitled Page" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width: 100%; background-image: url('images/plain-brown.jpg')">
        <tr>
            <td style="width: 149px">
                <asp:LinkButton ID="LinkButton6" runat="server" Font-Size="Large" 
                    ForeColor="#CC3300" onclick="LinkButton6_Click">BACK...</asp:LinkButton>
            </td>
            <td align="center" colspan="2">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Create an Account" 
                    Font-Size="X-Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 149px; height: 31px;">
            </td>
            <td style="width: 223px; height: 31px;">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Personal Details"></asp:Label>
            </td>
            <td style="height: 32px">
                </td>
        </tr>
        <tr>
            <td style="width: 149px; height: 37px;">
            </td>
            <td style="height: 37px;" colspan="2">
                <asp:Label ID="Label4" runat="server" 
                    Text="Enter your email address and password to create your account." 
                    Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 149px; height: 32px;">
                </td>
            <td style="width: 223px; height: 32px;">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Email Address:"></asp:Label>
            </td>
            <td style="height: 32px">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Valid ID Required" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 149px; height: 30px;">
                </td>
            <td style="width: 223px; height: 30px;">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Password:"></asp:Label>
            </td>
            <td style="height: 30px">
                <asp:TextBox ID="TextBox2" runat="server" Width="200px" TextMode="Password" 
                    ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 149px; height: 29px;">
                </td>
            <td style="width: 223px; height: 29px;">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Confirm Password:"></asp:Label>
            </td>
            <td style="height: 29px">
                <asp:TextBox ID="TextBox3" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                    ErrorMessage="CompareValidator">Not Matched</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 149px; height: 26px;">
                </td>
            <td style="width: 223px; height: 26px;">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Shipping Details"></asp:Label>
            </td>
            <td style="height: 26px">
                </td>
        </tr>
        <tr>
            <td style="width: 149px; height: 27px;">
                </td>
            <td colspan="2" style="height: 27px">
                <asp:Label ID="Label9" runat="server" 
                    Text="Enter the name and address you'd like us to ship your order to." 
                    Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 149px; height: 28px;">
                </td>
            <td style="width: 223px; height: 28px;">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="First Name:"></asp:Label>
            </td>
            <td style="height: 28px">
                <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 149px; height: 29px;">
                </td>
            <td style="width: 223px; height: 29px;">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Text=" Last Name:"></asp:Label>
            </td>
            <td style="height: 29px">
                <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 149px; height: 30px;">
                </td>
            <td style="width: 223px; height: 30px;">
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Text=" Company Name:"></asp:Label>
            </td>
            <td style="height: 30px">
                <asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 149px; height: 27px;">
                </td>
            <td style="width: 223px; height: 27px;">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Text=" Company VAT No:"></asp:Label>
            </td>
            <td style="height: 27px">
                <asp:TextBox ID="TextBox7" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 149px; height: 25px;">
                </td>
            <td style="width: 223px; height: 25px;">
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Text=" Mobile No.:"></asp:Label>
            </td>
            <td style="height: 25px">
                <asp:TextBox ID="TextBox8" runat="server" Width="200px" MaxLength="10" 
                    ValidationGroup="check"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="RegularExpressionValidator" ValidationExpression="^\d+$" ValidationGroup="check">Enter 
                Only Number</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 149px; height: 31px;">
                </td>
            <td style="width: 223px; height: 31px;">
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Text=" Phone No.:"></asp:Label>
            </td>
            <td style="height: 31px">
                <asp:TextBox ID="TextBox9" runat="server" Width="200px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="RegularExpressionValidator" ValidationExpression="^\d+$" ValidationGroup="check" >Enter 
                Only Number</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 149px; height: 32px;">
                </td>
            <td style="width: 223px; height: 32px;">
                <asp:Label ID="Label16" runat="server" Font-Bold="True" Text="Address Line 1:"></asp:Label>
            </td>
            <td style="height: 32px">
                <asp:TextBox ID="TextBox10" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 149px; height: 28px;">
                </td>
            <td style="width: 223px; height: 28px;">
                <asp:Label ID="Label17" runat="server" Font-Bold="True" Text=" Address (Area / Locality):"></asp:Label>
            </td>
            <td style="height: 28px">
                <asp:TextBox ID="TextBox11" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 149px; height: 27px;">
                </td>
            <td style="width: 223px; height: 27px;">
                <asp:Label ID="Label18" runat="server" Font-Bold="True" Text=" City"></asp:Label>
            </td>
            <td style="height: 27px">
                <asp:TextBox ID="TextBox12" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 149px; height: 33px;">
                </td>
            <td style="width: 223px; height: 33px;">
                <asp:Label ID="Label19" runat="server" Font-Bold="True" Text=" State/Province:"></asp:Label>
            </td>
            <td style="height: 33px">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="201px">
                    <asp:ListItem>--Select State--</asp:ListItem>
                    <asp:ListItem>Assam</asp:ListItem>
                    <asp:ListItem>Bihar</asp:ListItem>
                    <asp:ListItem>Chandigarh</asp:ListItem>
                    <asp:ListItem>Chhattisgarh</asp:ListItem>
                    <asp:ListItem>Goa</asp:ListItem>
                    <asp:ListItem>Gujarat</asp:ListItem>
                    <asp:ListItem>Haryana</asp:ListItem>
                    <asp:ListItem>Jharkhand</asp:ListItem>
                    <asp:ListItem>Karnataka</asp:ListItem>
                    <asp:ListItem>Kerala</asp:ListItem>
                    <asp:ListItem>Lakshadweep</asp:ListItem>
                    <asp:ListItem>Maharashtra</asp:ListItem>
                    <asp:ListItem>Manipur</asp:ListItem>
                    <asp:ListItem>Meghalaya</asp:ListItem>
                    <asp:ListItem>Nagaland</asp:ListItem>
                    <asp:ListItem>New Delhi</asp:ListItem>
                    <asp:ListItem>Puducherry</asp:ListItem>
                    <asp:ListItem>Tamil Nadu</asp:ListItem>
                    <asp:ListItem>Uttarakhand</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 149px; height: 28px;">
                </td>
            <td style="width: 223px; height: 28px;">
                <asp:Label ID="Label20" runat="server" Font-Bold="True" Text="Country"></asp:Label>
            </td>
            <td style="height: 28px">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="22px" Width="201px">
                    <asp:ListItem>--Select Country--</asp:ListItem>
                    <asp:ListItem>India</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 149px; height: 30px;">
                </td>
            <td style="width: 223px; height: 30px;">
                <asp:Label ID="Label21" runat="server" Font-Bold="True" Text="Zip/Postcode:"></asp:Label>
            </td>
            <td style="height: 30px">
                <asp:TextBox ID="TextBox13" runat="server" Width="138px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox13" ErrorMessage="RegularExpressionValidator" 
                    ValidationExpression="^\d+$">Enter Only Number</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 149px; height: 99px;">
            </td>
            <td align="center" style="width: 223px; height: 99px;">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" 
                    Text="Create My Account" Width="153px" Height="33px" 
                    onclick="Button1_Click" />
            </td>
            <td style="height: 99px">
                <asp:Button ID="Button2" runat="server" Font-Bold="True" Text="Reset Details" 
                    Width="153px" Height="32px" onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 149px">
                &nbsp;</td>
            <td style="width: 223px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

