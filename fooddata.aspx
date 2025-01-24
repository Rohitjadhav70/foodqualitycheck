<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fooddata.aspx.cs" Inherits="fooddatadisplay.fooddata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>  food quality check </title>
    <style type="text/css">
     
        .auto-style1 {
            width: 1268px;
            height: 524px;
        }
     
    </style>
</head>
<body>

    <form id="form1" runat="server">
             <div class="auto-style2">
            <img alt="bagroundimage" class="auto-style1" src="pic/food_machine_background.jpg" />
               <p align="center">
                hwgwddiqdqwdqgdyajhjhqadqwgwducj  qwwdqwvwddhvdhjhjasjdjhvhdvqywuwddjhjhascjhsvahccvyuvcjcvcjhasvccygqvj
                ddvqwvdvjjacabavcjhcvj  cb bccasvcvcvcacjasc
                acvghavyvajhcvsajhhccggysacgavcchvac
                cashcgygacycgjascvhcasjhcvhasfcascvcvhasvcavcvjhcvcac
                cbhjacgyuacjvacavcasca
                acbasyccyuacacbajshcashcciauchascasjhvchaasghgaacjahcbchascjhsachcf
            </p>
            <table align="center" class="auto-style2">

                <tr>
                    <td align="center">pH </td>
                    <td align="center"> 
                        <asp:TextBox ID="txtph" runat="server" Height="45px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td align="center">Temperature</td>
                    <td align="center">
                        <asp:TextBox ID="txttemp" runat="server" Height="45px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td align="center">Gas </td>
                    <td align="center">
                        <asp:TextBox ID="txtgas" runat="server" Height="45px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td align="center">Turbidity  </td>
                    <td align="center">
                        <asp:TextBox ID="txtturbidity" runat="server" Height="45px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td align="center">
                        <asp:Button ID="btnsub" runat="server" Text="Submit" OnClick="btnsub_Click" style="height: 35px" /></td>
                </tr>
             
                </table>

        </div>

    </form>
</body>
</html>
