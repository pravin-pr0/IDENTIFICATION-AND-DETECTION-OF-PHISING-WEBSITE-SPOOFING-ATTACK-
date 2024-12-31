<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prodinfo.aspx.cs" Inherits="prodinfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <link type="text/css" href="menu.css" rel="stylesheet" />
    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="menu.js"></script>
    <style> 
        A.menulink {
display: block;
width: 198px;
height: 40px;
text-align: left;
text-decoration: none;
font-family:arial;
font-size:16px;
color: black;
BORDER: none;
}

A.menulink:hover 
{
font-family:arial;
font-size:16px;
color:white;
border: solid 1px #56A5EC;
background-color:#56A5EC;
}

</style>

<script>

/*
CSS Menu highlight- By Marc Boussard (marc.boussard@syntegra.fr)
Modified by DD for NS4 compatibility
Visit http://www.dynamicdrive.com for this script
*/

var ns4class=''
</script>
      <style type="text/css">
        h2
	{margin-right:0cm;
	margin-left:0cm;
	font-size:18.0pt;
	font-family:"Times New Roman","serif"; 
	}
        .style2
        {
            width: 395px;
            height: 305px;
        }
        </style>
    
    <style type="text/css">

.magnifyarea
{

-webkit-box-shadow: 5px 5px 7px #818181;
-moz-box-shadow: 5px 5px 7px #818181;

background: white;
}

        .style7
        {
            height: 305px;
            width: 479px;
        }
        .MsoNormal
        {
            height: 18px;
        }

    </style>

<script type="text/javascript" src="jquery.min.js"></script>

<script type="text/javascript" src="featuredimagezoomer.js">

/***********************************************
* Featured Image Zoomer (w/ adjustable power)- By Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for this script and 100s more
***********************************************/

</script>

<script type="text/javascript">

jQuery(document).ready(function($){

	$('#image1').addimagezoom({
		zoomrange: [3, 10],
		magnifiersize: [300,300],
		magnifierpos: 'right',
		cursorshade: true,
		largeimage: '473793-bigthumbnail.jpg' //<-- No comma after last option!
	})
	
	$('#image2').addimagezoom({
		zoomrange: [5, 5],
		magnifiersize: [400,400],
		magnifierpos: 'right',
		cursorshade: true,
		cursorshadecolor: 'white',
		cursorshadeopacity: 0.3,
		cursorshadeborder: '1px solid red',
		largeimage: '2626623-320199-beautiful-red-rose-with-dew-drops-isolated-on-white.jpg' //<-- No comma after last option!
	})

	$('#image3').addimagezoom()

})

</script>
</head>
<body>
    <form id="form1" runat="server">
    
<style type="text/css" >
* { margin:0px auto;
    padding:0;
    
}

body {

    width:920px;
    height:410px;
     
}
div#menu {

}

div#copyright { display: none; }
    </style>
  
<table align="center" frame="box" 
        
        style="background-image: none; background-repeat: no-repeat; background-color: white; font-family :Algerian"   ><tr ><td>
    <asp:Image ID="Image1" ImageUrl ="~/images/ourbanner.jpg" Height ="210px"  
        Width ="1051px" runat="server" /></td></tr>
        <tr><td id="menu">

    <ul class="menu">
        <li><a href="#" class="parent"><span>Home</span></a>
            
        </li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <li><a href="#" class="parent"><span>Products</span></a>
            <div><ul>
                <li><a href="Laptop.aspx"><span>Laptop</span></a></li>
             <li><a href="Mobiles.aspx"><span>Mobiles</span></a></li>
              <li><a href="Pendrive.aspx"><span>Pendrives</span></a></li>
               <li><a href="Mouse.aspx"><span>Mouse</span></a></li>
                <li><a href="Speaker.aspx" ><span>Speakers</span></a></li>
            </ul></div>
        </li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <li><a href="Login.aspx"><span>My Account</span></a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <li class="last"><a href="CART.aspx"><span>View Cart</span></a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <li class="last"><a href="#"><span>Contact Us</span></a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </ul>

</td>
</tr>
<tr><td>

<table ><tr valign=top ><td>

<table style="vertical-align:top; width: 204px;"  >
<tr >
<td width="100%" height="60px"  bgcolor="#56A5EC" align="center" style="font-family :Algerian"><b>PRODUCTS<b></td></tr>
  <tr style="font-family :Algerian">
    <td width="100%"  align="center"><a href="laptop.aspx" class="menulink" class=&{ns4class};>LAPTOP</a></td>
  </tr>
  <tr style="font-family :Algerian">
    <td width="100%" align="center"><a href="Mobiles.aspx" class="menulink" class=&{ns4class};>MOBILE</a></td>
  </tr>
  <tr style="font-family :Algerian" >
    <td width="100%" align="center"><a href="Pendrive.aspx" class="menulink" class==&{ns4class};>PENDRIVE</a></td>
  </tr>
  <tr style="font-family :Algerian">
    <td width="100%" align="center"><a href="Mouse.aspx" class="menulink" class=&{ns4class};>MOUSE</a></td>
  </tr>
  <tr style="font-family :Algerian">
    <td width="100%" align="center"><a href="Speaker.aspx" class="menulink" class=&{ns4class};>SPEAKER</a></td>
  </tr>
  <tr style="font-family :Algerian">
    <td width="100%" align="center"><a href="Digicam.aspx" class="menulink" class=&{ns4class};>DIGITAL CAMERA</a></td>
  </tr>
</table>
</td><td valign ="top" style ="width :820px">

   <table align ="center" style="width: 792px; height: 466px;">
            <tr>
               
                <td class="style2" align="center" valign="top">

                        <br />

                        &nbsp;<br />
                        <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" 
                Font-Size="Large"></asp:Label>
                                        <br />
                                        <br />
                        <br />

                        <asp:Image ID="image3" runat="server" Height="316px" Width="309px"        />
                        
                
                        <br />
                        
                
                    </td>
                <td class="style7" align="center">
                   
                                        <br />
                                        <br />
                   
            <asp:Label ID="Label4" runat="server" Text="Label" Font-Bold="True" 
                Font-Size="Large"></asp:Label>
                                        <br />
                                        <br />
                                        <asp:Label ID="Label5" runat="server" Text="PRICE :  "></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True" 
                Font-Size="Large"></asp:Label>
                    
                    
                                        <br />
                                        <br />
            <asp:Image ID="Image2" runat="server" Height="200px" Width="240px" ImageUrl="000000000000000000000" />
                                        <br />
                                        <br />
                                        <br />
                                        <asp:Button ID="Button2" runat="server" Height="33px" onclick="Button2_Click" 
                                            Text="CONTINUE SHOPPING" Width="211px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button1" runat="server" Height="33px" onclick="Button1_Click" 
                                            Text="BUY NOW" />
                                        <br />
                                        <br />
                   
                                        &nbsp;
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <br />
                                        &nbsp;<br />
                    
                    
                   </td>
                <tdwidth=10%>
                                    &nbsp;</td>
            </tr>
        </table>
        </td></tr></table>



<div id="copyright"><a href="http://apycom.com/"></a></div>
  
    </form>
</body>
</html>
