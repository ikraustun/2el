<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <script type="text/javascript">

         function DisableBackButton() {
             window.history.forward()
         }
         DisableBackButton();
         window.onload = DisableBackButton;
         window.onpageshow = function (evt) { if (evt.persisted) DisableBackButton() }
         window.onunload = function () { void (0) }
</script>
    <style type="text/css">
        #sitil
        {
            position:absolute;
            margin-left:300px;
            margin-top:200px;
            top: 15px;
            left: 10px;
            width: 331px;
            height: 114px;
        }
               
        <%--  body
        {
              background-image:url('image/arkaplan.jpg');
        }--%>
       
        .style6
        {
            color: #000000;
            width: 980px;
        }
       
        .style4
        {
            font-size: small;
            font-weight: bold;
            width: 193px;
        }
      
        .style10
        {
            font-size: small;
            font-weight: bold;
            width: 193px;
            color: #F58220;
        }
        .style11
        {
            height: 36px;
        }
      
        </style>
</head>
<body >
    <form id="form1" runat="server">
    <div align="center" style="font-family: 'FIATADVERT01A Rg'; left: 1px; font-size: 19px; color: #B12F34;">
    
        &nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <br />
    <asp:Image ID="Image1" runat="server" Height="97px" 
            ImageUrl="~/image/2.EL.PNG" Width="310px" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Panel ID="Panel1" runat="server" GroupingText="Üye Girişi" 
            style="font-family: Arial; font-size: small; font-weight: 700" 
            Width="30%" HorizontalAlign="Left" ForeColor="#F58220">
            <table>
                <tr>
                    <td class="style11" 
                        style="font-family: calibri; font-size: 12pt; color: #F58220">
                        <b>Kullanıcı Adı</b></td>
                    <td class="style11">
                        <asp:TextBox ID="txtad" runat="server" Font-Bold="True" Width="250px" 
                            BackColor="#FFFFCC" Height="22px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="font-family: calibri; font-size: 12pt; color: #F58220">
                        <b>Parola</b></td>
                    <td>
                        <asp:TextBox ID="txtsifre" runat="server" Font-Bold="True" TextMode="Password" 
                            Width="250px" BackColor="#FFFFCC" Height="22px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style4" 
                        style="font-family: calibri; font-size: 12pt; color: #F58220">
                        &nbsp;</td>
                    <td>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                            ImageUrl="~/image/giris.png" 
                            onclick="ImageButton1_Click" Width="90px" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
&nbsp;<br />
    
    </div>
    </form>
</body>
</html>
