<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modelekle.aspx.cs" Inherits="modelekle" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">

        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 9px;
        }
                                  
         .style3
        {
            width: 60px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td>
    
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="85px" 
                     ImageUrl="~/image/2.EL.PNG" Width="273px" />
    
             </td>
        </tr>
        <tr>
            <td class="style2">
                 <asp:Panel ID="Panel1" runat="server" Font-Bold="True" Font-Italic="False" 
                     Font-Names="arial" Font-Size="Small" GroupingText="Araç Bilgileri" 
                    Width="300px">
                     <table class="style1">
                         <tr>
                             <td class="style3">
                                 Marka</td>
                             <td>
                                 <asp:DropDownList ID="dpmarka" runat="server" Width="200px" 
                                     DataSourceID="SqlDataSource1" DataTextField="marka_ad" 
                                     DataValueField="marka_id">
                                 </asp:DropDownList>
                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                     ConnectionString="<%$ ConnectionStrings:mydb %>" 
                                     SelectCommand="SELECT * FROM [markalar]"></asp:SqlDataSource>
                             </td>
                         </tr>
                         <tr>
                             <td class="style3">
                                 Model</td>
                             <td>
                                 <asp:TextBox ID="txtmodel" runat="server" Width="200px"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td class="style3">
                                 &nbsp;</td>
                             <td>
                                 <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Geri" 
                                     Width="76px" />
                                 <asp:Button ID="btnekle" runat="server" Text="Ekle" onclick="btnekle_Click" 
                                     Width="76px" />
                             </td>
                         </tr>
                     </table>
                 </asp:Panel>
             </td>
        </tr>
    </table>
    </form>
</body>
</html>
