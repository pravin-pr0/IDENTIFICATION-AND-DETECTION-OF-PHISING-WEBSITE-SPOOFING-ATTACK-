<%@ Page Language="C#" MasterPageFile="~/shipping.master" AutoEventWireup="true" CodeFile="payment1.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 233px;
            height: 44px;
        }
        .style3
        {
            width: 129px;
            height: 44px;
        }
        .style4
        {
            width: 236px;
            height: 44px;
        }
        .style5
        {
            height: 44px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width: 100%; background-color: #FFFFFF;">
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
        <td class="style2">
        </td>
        <td class="style3">
            <asp:Label ID="Label3" runat="server" Text="Card Number"></asp:Label>
        </td>
        <td class="style4">
            <asp:TextBox ID="TextBox1" runat="server" Width="157px" MaxLength="16"></asp:TextBox>
        </td>
        <td class="style5">
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
            <asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl="~/images/calder.jpg" onclick="ImageButton1_Click" Width="33px" />
        </td>
        <td style="height: 60px">
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" 
                Font-Size="9pt" ForeColor="Black" NextPrevFormat="ShortMonth" 
                onselectionchanged="Calendar1_SelectionChanged" 
                style="top: 238px; left: 795px; position: absolute; height: 159px; width: 222px">
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TodayDayStyle BackColor="#999999" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <DayStyle BackColor="#CCCCCC" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                    Height="8pt" />
                <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" 
                    Font-Size="12pt" ForeColor="White" Height="12pt" />
            </asp:Calendar>
        </td>
    </tr>
    <tr>
        <td style="width: 233px; height: 55px">
        </td>
        <td style="width: 129px; height: 55px">
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="PREVIOUS" 
                Width="92px" />
        </td>
        <td style="width: 236px; height: 55px">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="NEXT" 
                Width="94px" />
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

