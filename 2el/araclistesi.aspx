<%@ Page Language="C#" AutoEventWireup="true" CodeFile="araclistesi.aspx.cs" Inherits="araclistesi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <script src="Script/jquery-1.3.2.min.js" type="text/javascript"></script>
   <script src="Script/jquery.maskedinput-1.2.2.js" type="text/javascript"></script>
   
   
    <style type="text/css">
        .style1
        {
            width: 100%;
           height:156px;
        }
    
        #sitil
        {
            position:absolute;
            margin-left: 5px;
            margin-top:40px;
        
        }
      
         #style
         {
             margin-left:55px;
         }
        .style5
        {
            width: 9px;
        }
        .style6
        {
            height: 23px;
            width: 9px;
        }
        .style8
        {
            height: 23px;
            width: 148px;
        }
        #a
        {
            position:absolute;
            margin-top:0px;
            right:50px;
            top: 15px;
            width: 1px;
        }
        .style11
        {
            width: 69px;
        }
        .style12
        {
            height: 23px;
            width: 69px;
        }
        .style18
        {
            width: 87px;
        }
        .style19
        {
            height: 23px;
            width: 87px;
        }
        .style22
        {}
        .style24
        {
            width: 110px;
        }
        .style25
        {
            height: 23px;
            width: 110px;
        }
        .style30
        {
        }
        .style31
        {
            width: 54px;
        }
    </style>

    <script language="javascript">
function CallPrint(strid) {
    var sOption = "toolbar=no,location=no,directories=yes,menubar=no,";
    sOption += "scrollbars=yes,width=775,height=600,left=0,top=0,padding-left=0";
var prtContent = document.getElementById(strid);
//var WinPrint = window.open('');
var WinPrint = window.open('', '', sOption);
WinPrint.document.write(prtContent.innerHTML);
WinPrint.document.close();
WinPrint.focus();
WinPrint.print();
WinPrint.close();
// prtContent.innerHTML = strOldOne;
}
</script>
</head>
<body >
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td colspan="2" width="60%">
                 <asp:ImageButton ID="ImageButton2" runat="server" Height="70px" 
                     ImageUrl="~/image/2.EL.PNG" Width="217px" />
             </td>
            <td width="15%">
                &nbsp;</td>
            <td width="10%" align="right" valign="middle">
                 <asp:LinkButton ID="Label1" runat="server" onclick="Label1_Click" 
                     Font-Bold="True" Font-Names="Calibri" Font-Size="12pt" Font-Underline="False" 
                     ForeColor="Black" style="text-align: left"></asp:LinkButton>
    
            </td>
        </tr>
        <tr>
            <td class="style22" width="60%" align="left" valign="top">
        <asp:Panel ID="Panel1"  runat="server" 
            GroupingText="ARAÇ ARA" Width="100%" Font-Bold="True" Font-Names="Calibri" 
                Font-Size="Small" ForeColor="White"  Height="200px" style="color: #000000" 
                    Direction="LeftToRight">
            <table class="style1" style="font-family: Calibri; font-size: 9pt">
                <tr>
                    <td class="style11">
                        Marka</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td class="style11">
                        &nbsp;Model Yılı&nbsp;</td>
                    <td class="style30">
                        Tarih Tipi</td>
                    <td class="style24">
                        Durum</td>
                    <td class="style18">
                        Firma/Müşteri Adı</td>
                    <td valign="bottom" width="25px">
                        Tipi</td>
                </tr>
                <tr>
                    <td class="style12">
                        <asp:DropDownList ID="dpmarka" runat="server" Font-Names="Calibri" 
                            Font-Size="10pt" Height="23px" 
                            onselectedindexchanged="dpmarka_SelectedIndexChanged" 
                            style="margin-bottom: 0px" Width="122px" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style12">
                        <asp:DropDownList ID="dpmodelyil" runat="server" 
                            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                            Font-Names="Calibri" Font-Size="10pt" Height="23px" Width="100px">
                            <asp:ListItem Value=" ">Seçiniz</asp:ListItem>
                            <asp:ListItem>2016</asp:ListItem>
                            <asp:ListItem>2015</asp:ListItem>
                            <asp:ListItem>2014</asp:ListItem>
                            <asp:ListItem>2013</asp:ListItem>
                            <asp:ListItem>2012</asp:ListItem>
                            <asp:ListItem>2011</asp:ListItem>
                            <asp:ListItem>2010</asp:ListItem>
                            <asp:ListItem>2009</asp:ListItem>
                            <asp:ListItem>2008</asp:ListItem>
                            <asp:ListItem>2007</asp:ListItem>
                            <asp:ListItem>2006</asp:ListItem>
                            <asp:ListItem>2005</asp:ListItem>
                            <asp:ListItem>2004</asp:ListItem>
                            <asp:ListItem>2003</asp:ListItem>
                            <asp:ListItem>2002</asp:ListItem>
                            <asp:ListItem>2001</asp:ListItem>
                            <asp:ListItem>2000</asp:ListItem>
                            <asp:ListItem>1999</asp:ListItem>
                            <asp:ListItem>1998</asp:ListItem>
                            <asp:ListItem>1997</asp:ListItem>
                            <asp:ListItem>1996</asp:ListItem>
                            <asp:ListItem>1995</asp:ListItem>
                            <asp:ListItem>1994</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style8">
                        <asp:DropDownList ID="dptarihtip" runat="server" Font-Names="Calibri" 
                            Font-Size="10pt" Height="23px" Width="122px">
                            <asp:ListItem Value="0">Seçiniz...</asp:ListItem>
                            <asp:ListItem Value="1">Kayıt Tarihi</asp:ListItem>
                            <asp:ListItem Value="2">Alış Tarihi</asp:ListItem>
                            <asp:ListItem Value="3">Muayene Tarihi</asp:ListItem>
                            <asp:ListItem Value="4">Rezerve Tarihi</asp:ListItem>
                            <asp:ListItem Value="5">Rz. Onay Tarihi</asp:ListItem>
                            <asp:ListItem Value="6">Muhasebe Onay Tarihi</asp:ListItem>
                            <asp:ListItem Value="7">Satiş Tarihi</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style25">
                        <asp:DropDownList ID="dpdurum" runat="server" 
                            Font-Names="Calibri" Font-Size="10pt" Height="23px" 
                            onselectedindexchanged="dpdurum_SelectedIndexChanged" Width="122px">
                            <asp:ListItem Value=" 0">Seçiniz...</asp:ListItem>
                            <asp:ListItem>Aktif</asp:ListItem>
                            <asp:ListItem>Rezerve</asp:ListItem>
                            <asp:ListItem>Odeme</asp:ListItem>
                            <asp:ListItem>Noter</asp:ListItem>
                            <asp:ListItem>Satıldı</asp:ListItem>
                            <asp:ListItem>Tümü</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style19">
                        <asp:TextBox ID="txtmusteriad" runat="server" AutoPostBack="True" 
                            Font-Names="Calibri" Font-Size="10pt" Height="16px" 
                            ontextchanged="txtmusteriad_TextChanged" Width="122px"></asp:TextBox>
                    </td>
                    <td valign="bottom" width="25px">
                        <asp:DropDownList ID="dptipi" runat="server" Font-Bold="False" 
                            Font-Names="Calibri" Font-Size="10pt" Height="23px" 
                            onselectedindexchanged="dpmarka_SelectedIndexChanged" ValidationGroup="a" 
                            Width="60px">
                            <asp:ListItem>Tümü</asp:ListItem>
                            <asp:ListItem>Binek</asp:ListItem>
                            <asp:ListItem>Ticari</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        Model</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td class="style11">
                        Plaka</td>
                    <td class="style30">
                        Tarih Aralığı</td>
                    <td class="style24">
                        &nbsp;</td>
                    <td class="style18">
                        Kullanıcı</td>
                    <td valign="bottom" width="25px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style11">
                        <asp:DropDownList ID="dpmodel" runat="server" Font-Names="Calibri" Font-Size="10pt" 
                            Height="23px" onselectedindexchanged="dpmodel_SelectedIndexChanged" 
                            Width="122px">
                        </asp:DropDownList>
                    </td>
                    <td class="style5">
                        &nbsp;</td>
                    <td class="style11">
                        <asp:TextBox ID="txtplaka" runat="server" Font-Names="Calibri" 
                            Font-Size="10pt" Height="16px" Width="100px" MaxLength="11" 
                            BackColor="#CCCCCC"></asp:TextBox>
                    </td>
                    <td class="style30">
                        <asp:TextBox ID="txttarih1" runat="server" Font-Names="Calibri" 
                            Font-Size="10pt" Height="18px" Width="122px" TextMode="Date" ></asp:TextBox>
                         &nbsp;&nbsp; ile</td>
                    <td class="style24">
                        <asp:TextBox ID="txttarih2" runat="server" 
                            Font-Names="Calibri" Font-Size="10pt" Height="18px" 
                            ontextchanged="txttarih2_TextChanged" Width="122px" TextMode="Date" ></asp:TextBox>
                    </td>
                    <td class="style18">
                        <asp:DropDownList ID="dpsatıs" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="k_adı" DataValueField="k_adı" 
                            Font-Names="Calibri" Font-Size="10pt" Height="23px" 
                            onselectedindexchanged="dpsatıs_SelectedIndexChanged" Width="122px">
                        </asp:DropDownList>
                    </td>
                    <td valign="bottom" width="25px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style11" valign="bottom">
                        Park Yeri</td>
                    <td class="style5" valign="bottom">
                        &nbsp;</td>
                    <td class="style11" valign="bottom">
                        Sahip</td>
                    <td class="style30" valign="bottom">
                        &nbsp;</td>
                    <td class="style24" valign="bottom">
                        &nbsp;</td>
                    <td class="style18" valign="bottom">
                        &nbsp;</td>
                    <td valign="bottom" width="25px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style11">
                        <asp:DropDownList ID="dparacdurum" runat="server" Font-Names="Calibri" 
                            Font-Size="10pt" Height="23px" 
                            onselectedindexchanged="dparacdurum_SelectedIndexChanged" Width="120px">
                            <asp:ListItem>Tümü</asp:ListItem>
                          <asp:ListItem Value="ALD">ALDATMAZ</asp:ListItem>
                                     <asp:ListItem Value="OTP">OTOPORT</asp:ListItem>
                                     <asp:ListItem Value="MNH">MANHAIM</asp:ListItem>
                                     <asp:ListItem Value="EMA">EMANET</asp:ListItem>
                                     <asp:ListItem Value="DİG">DİĞER</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style5">
                        &nbsp;</td>
                    <td class="style11">
                        <asp:DropDownList ID="dpsahip" runat="server" Font-Bold="False" 
                            Font-Names="Calibri" Font-Size="Small" Height="22px" Width="100px">
                            <asp:ListItem>Tümü</asp:ListItem>
                            <asp:ListItem Value="ALD">ALDATMAZ</asp:ListItem>
                            <asp:ListItem Value="KAP">KAPİTAL</asp:ListItem>
                            <asp:ListItem Value="OTP">OTOPORT</asp:ListItem>
                            <asp:ListItem Value="KON">KONSİNYE</asp:ListItem>
                        </asp:DropDownList>
                       </td>
                    <td class="style30" colspan="3" align="right">
                       
                       
                       
                        <asp:Button ID="btnfiltrealdır" runat="server" BackColor="#F58220" 
                            ForeColor="White" Height="28px" onclick="btnfiltrealdır_Click" 
                            Text="Filtre Kaldır" Width="80px" style="text-align: right" />
                       
                       
                       
                        <asp:Button ID="btnara" runat="server" BackColor="#F58220" ForeColor="White" 
                            Height="28px" onclick="btnara_Click" Text="Ara" Width="80px" />
                        <asp:Button ID="ImageButton3" runat="server" BackColor="#F58220" 
                            ForeColor="White" Height="28px" onclick="ImageButton3_Click" Text="İstatistik" 
                            Width="80px" />
                       
                       
                       
                        <asp:Button ID="ImageButton1" runat="server" BackColor="#F58220" 
                            ForeColor="White" Height="28px" onclick="ImageButton1_Click" Text="Ekle" 
                            Width="80px" />
                       
                       
                       
                    </td>
                    <td valign="bottom" width="66px">
                         <a href="javascript:CallPrint('yazdır')">
                        <asp:Image ID="Image1" runat="server" Height="33px" 
                            ImageUrl="~/image/print.jpg" Width="33px" />
                        </a>
                         <asp:ImageButton ID="ImageButton4" runat="server" Height="33px" 
                             ImageUrl="~/image/xls.png" Width="33px" onclick="ImageButton4_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
            </td>
            <td colspan="2" width="15%" align="left" valign="top">
                <asp:Panel ID="Panel4" runat="server" Font-Bold="True" Font-Names="Calibri" 
                    Font-Size="Small" GroupingText="SATICI PERFORMANSI" Width="100%">
                    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource9" 
                        Width="100%" Height="150px">
                        <EditItemTemplate>
                            Aldatmaz:
                            <asp:TextBox ID="AldatmazTextBox" runat="server" 
                                Text='<%# Bind("Aldatmaz") %>' />
                            <br />
                            Kapital:
                            <asp:TextBox ID="KapitalTextBox" runat="server" Text='<%# Bind("Kapital") %>' />
                            <br />
                            Konsinye:
                            <asp:TextBox ID="KonsinyeTextBox" runat="server" 
                                Text='<%# Bind("Konsinye") %>' />
                            <br />
                            Otoport:
                            <asp:TextBox ID="OtoportTextBox" runat="server" Text='<%# Bind("Otoport") %>' />
                            <br />
                            Toplam Stok Sayısı:
                            <asp:TextBox ID="Toplam_Stok_SayısıTextBox" runat="server" 
                                Text='<%# Bind("[Toplam Stok Sayısı]") %>' />
                            <br />
                            tolga_r:
                            <asp:TextBox ID="tolga_rTextBox" runat="server" Text='<%# Bind("tolga_r") %>' />
                            <br />
                            emrah_r:
                            <asp:TextBox ID="emrah_rTextBox" runat="server" Text='<%# Bind("emrah_r") %>' />
                            <br />
                            suleyman_r:
                            <asp:TextBox ID="suleyman_rTextBox" runat="server" 
                                Text='<%# Bind("suleyman_r") %>' />
                            <br />
                            musa_r:
                            <asp:TextBox ID="musa_rTextBox" runat="server" Text='<%# Bind("musa_r") %>' />
                            <br />
                            erdem_r:
                            <asp:TextBox ID="erdem_rTextBox" runat="server" Text='<%# Bind("erdem_r") %>' />
                            <br />
                            tolga_o:
                            <asp:TextBox ID="tolga_oTextBox" runat="server" Text='<%# Bind("tolga_o") %>' />
                            <br />
                            emrah_o:
                            <asp:TextBox ID="emrah_oTextBox" runat="server" Text='<%# Bind("emrah_o") %>' />
                            <br />
                            suleyman_o:
                            <asp:TextBox ID="suleyman_oTextBox" runat="server" 
                                Text='<%# Bind("suleyman_o") %>' />
                            <br />
                            musa_o:
                            <asp:TextBox ID="musa_oTextBox" runat="server" Text='<%# Bind("musa_o") %>' />
                            <br />
                            erdem_o:
                            <asp:TextBox ID="erdem_oTextBox" runat="server" Text='<%# Bind("erdem_o") %>' />
                            <br />
                            tolga_s:
                            <asp:TextBox ID="tolga_sTextBox" runat="server" Text='<%# Bind("tolga_s") %>' />
                            <br />
                            emrah_s:
                            <asp:TextBox ID="emrah_sTextBox" runat="server" Text='<%# Bind("emrah_s") %>' />
                            <br />
                            suleyman_s:
                            <asp:TextBox ID="suleyman_sTextBox" runat="server" 
                                Text='<%# Bind("suleyman_s") %>' />
                            <br />
                            musa_s:
                            <asp:TextBox ID="musa_sTextBox" runat="server" Text='<%# Bind("musa_s") %>' />
                            <br />
                            erdem_s:
                            <asp:TextBox ID="erdem_sTextBox" runat="server" Text='<%# Bind("erdem_s") %>' />
                            <br />
                            ibrahim_r:
                            <asp:TextBox ID="ibrahim_rTextBox" runat="server" 
                                Text='<%# Bind("ibrahim_r") %>' />
                            <br />
                            ibrahim_s:
                            <asp:TextBox ID="ibrahim_sTextBox" runat="server" 
                                Text='<%# Bind("ibrahim_s") %>' />
                            <br />
                            ibrahim_o:
                            <asp:TextBox ID="ibrahim_oTextBox" runat="server" 
                                Text='<%# Bind("ibrahim_o") %>' />
                            <br />
                            rtoplam:
                            <asp:TextBox ID="rtoplamTextBox" runat="server" Text='<%# Bind("rtoplam") %>' />
                            <br />
                            otoplam:
                            <asp:TextBox ID="otoplamTextBox" runat="server" Text='<%# Bind("otoplam") %>' />
                            <br />
                            stoplam:
                            <asp:TextBox ID="stoplamTextBox" runat="server" Text='<%# Bind("stoplam") %>' />
                            <br />
                            ntoplam:
                            <asp:TextBox ID="ntoplamTextBox" runat="server" Text='<%# Bind("ntoplam") %>' />
                            <br />
                            tolga_n:
                            <asp:TextBox ID="tolga_nTextBox" runat="server" Text='<%# Bind("tolga_n") %>' />
                            <br />
                            emrah_n:
                            <asp:TextBox ID="emrah_nTextBox" runat="server" Text='<%# Bind("emrah_n") %>' />
                            <br />
                            suleyman_n:
                            <asp:TextBox ID="suleyman_nTextBox" runat="server" 
                                Text='<%# Bind("suleyman_n") %>' />
                            <br />
                            ibrahim_n:
                            <asp:TextBox ID="ibrahim_nTextBox" runat="server" 
                                Text='<%# Bind("ibrahim_n") %>' />
                            <br />
                            musa_n:
                            <asp:TextBox ID="musa_nTextBox" runat="server" Text='<%# Bind("musa_n") %>' />
                            <br />
                            erdem_n:
                            <asp:TextBox ID="erdem_nTextBox" runat="server" Text='<%# Bind("erdem_n") %>' />
                            <br />
                            ytoplam:
                            <asp:TextBox ID="ytoplamTextBox" runat="server" Text='<%# Bind("ytoplam") %>' />
                            <br />
                            tolga_y:
                            <asp:TextBox ID="tolga_yTextBox" runat="server" Text='<%# Bind("tolga_y") %>' />
                            <br />
                            emrah_y:
                            <asp:TextBox ID="emrah_yTextBox" runat="server" Text='<%# Bind("emrah_y") %>' />
                            <br />
                            suleyman_y:
                            <asp:TextBox ID="suleyman_yTextBox" runat="server" 
                                Text='<%# Bind("suleyman_y") %>' />
                            <br />
                            ibrahim_y:
                            <asp:TextBox ID="ibrahim_yTextBox" runat="server" 
                                Text='<%# Bind("ibrahim_y") %>' />
                            <br />
                            musa_y:
                            <asp:TextBox ID="musa_yTextBox" runat="server" Text='<%# Bind("musa_y") %>' />
                            <br />
                            erdem_y:
                            <asp:TextBox ID="erdem_yTextBox" runat="server" Text='<%# Bind("erdem_y") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            Aldatmaz:
                            <asp:TextBox ID="AldatmazTextBox" runat="server" 
                                Text='<%# Bind("Aldatmaz") %>' />
                            <br />
                            Kapital:
                            <asp:TextBox ID="KapitalTextBox" runat="server" Text='<%# Bind("Kapital") %>' />
                            <br />
                            Konsinye:
                            <asp:TextBox ID="KonsinyeTextBox" runat="server" 
                                Text='<%# Bind("Konsinye") %>' />
                            <br />
                            Otoport:
                            <asp:TextBox ID="OtoportTextBox" runat="server" Text='<%# Bind("Otoport") %>' />
                            <br />
                            Toplam Stok Sayısı:
                            <asp:TextBox ID="Toplam_Stok_SayısıTextBox" runat="server" 
                                Text='<%# Bind("[Toplam Stok Sayısı]") %>' />
                            <br />
                            tolga_r:
                            <asp:TextBox ID="tolga_rTextBox" runat="server" Text='<%# Bind("tolga_r") %>' />
                            <br />
                            emrah_r:
                            <asp:TextBox ID="emrah_rTextBox" runat="server" Text='<%# Bind("emrah_r") %>' />
                            <br />
                            suleyman_r:
                            <asp:TextBox ID="suleyman_rTextBox" runat="server" 
                                Text='<%# Bind("suleyman_r") %>' />
                            <br />
                            musa_r:
                            <asp:TextBox ID="musa_rTextBox" runat="server" Text='<%# Bind("musa_r") %>' />
                            <br />
                            erdem_r:
                            <asp:TextBox ID="erdem_rTextBox" runat="server" Text='<%# Bind("erdem_r") %>' />
                            <br />
                            tolga_o:
                            <asp:TextBox ID="tolga_oTextBox" runat="server" Text='<%# Bind("tolga_o") %>' />
                            <br />
                            emrah_o:
                            <asp:TextBox ID="emrah_oTextBox" runat="server" Text='<%# Bind("emrah_o") %>' />
                            <br />
                            suleyman_o:
                            <asp:TextBox ID="suleyman_oTextBox" runat="server" 
                                Text='<%# Bind("suleyman_o") %>' />
                            <br />
                            musa_o:
                            <asp:TextBox ID="musa_oTextBox" runat="server" Text='<%# Bind("musa_o") %>' />
                            <br />
                            erdem_o:
                            <asp:TextBox ID="erdem_oTextBox" runat="server" Text='<%# Bind("erdem_o") %>' />
                            <br />
                            tolga_s:
                            <asp:TextBox ID="tolga_sTextBox" runat="server" Text='<%# Bind("tolga_s") %>' />
                            <br />
                            emrah_s:
                            <asp:TextBox ID="emrah_sTextBox" runat="server" Text='<%# Bind("emrah_s") %>' />
                            <br />
                            suleyman_s:
                            <asp:TextBox ID="suleyman_sTextBox" runat="server" 
                                Text='<%# Bind("suleyman_s") %>' />
                            <br />
                            musa_s:
                            <asp:TextBox ID="musa_sTextBox" runat="server" Text='<%# Bind("musa_s") %>' />
                            <br />
                            erdem_s:
                            <asp:TextBox ID="erdem_sTextBox" runat="server" Text='<%# Bind("erdem_s") %>' />
                            <br />
                            ibrahim_r:
                            <asp:TextBox ID="ibrahim_rTextBox" runat="server" 
                                Text='<%# Bind("ibrahim_r") %>' />
                            <br />
                            ibrahim_s:
                            <asp:TextBox ID="ibrahim_sTextBox" runat="server" 
                                Text='<%# Bind("ibrahim_s") %>' />
                            <br />
                            ibrahim_o:
                            <asp:TextBox ID="ibrahim_oTextBox" runat="server" 
                                Text='<%# Bind("ibrahim_o") %>' />
                            <br />
                            rtoplam:
                            <asp:TextBox ID="rtoplamTextBox" runat="server" Text='<%# Bind("rtoplam") %>' />
                            <br />
                            otoplam:
                            <asp:TextBox ID="otoplamTextBox" runat="server" Text='<%# Bind("otoplam") %>' />
                            <br />
                            stoplam:
                            <asp:TextBox ID="stoplamTextBox" runat="server" Text='<%# Bind("stoplam") %>' />
                            <br />
                            ntoplam:
                            <asp:TextBox ID="ntoplamTextBox" runat="server" Text='<%# Bind("ntoplam") %>' />
                            <br />
                            tolga_n:
                            <asp:TextBox ID="tolga_nTextBox" runat="server" Text='<%# Bind("tolga_n") %>' />
                            <br />
                            emrah_n:
                            <asp:TextBox ID="emrah_nTextBox" runat="server" Text='<%# Bind("emrah_n") %>' />
                            <br />
                            suleyman_n:
                            <asp:TextBox ID="suleyman_nTextBox" runat="server" 
                                Text='<%# Bind("suleyman_n") %>' />
                            <br />
                            ibrahim_n:
                            <asp:TextBox ID="ibrahim_nTextBox" runat="server" 
                                Text='<%# Bind("ibrahim_n") %>' />
                            <br />
                            musa_n:
                            <asp:TextBox ID="musa_nTextBox" runat="server" Text='<%# Bind("musa_n") %>' />
                            <br />
                            erdem_n:
                            <asp:TextBox ID="erdem_nTextBox" runat="server" Text='<%# Bind("erdem_n") %>' />
                            <br />
                            ytoplam:
                            <asp:TextBox ID="ytoplamTextBox" runat="server" Text='<%# Bind("ytoplam") %>' />
                            <br />
                            tolga_y:
                            <asp:TextBox ID="tolga_yTextBox" runat="server" Text='<%# Bind("tolga_y") %>' />
                            <br />
                            emrah_y:
                            <asp:TextBox ID="emrah_yTextBox" runat="server" Text='<%# Bind("emrah_y") %>' />
                            <br />
                            suleyman_y:
                            <asp:TextBox ID="suleyman_yTextBox" runat="server" 
                                Text='<%# Bind("suleyman_y") %>' />
                            <br />
                            ibrahim_y:
                            <asp:TextBox ID="ibrahim_yTextBox" runat="server" 
                                Text='<%# Bind("ibrahim_y") %>' />
                            <br />
                            musa_y:
                            <asp:TextBox ID="musa_yTextBox" runat="server" Text='<%# Bind("musa_y") %>' />
                            <br />
                            erdem_y:
                            <asp:TextBox ID="erdem_yTextBox" runat="server" Text='<%# Bind("erdem_y") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <table margin-top="0px" width="100%">
                                <tr>
                                    <td align="left" 
                                        style="color: #CC0000; font-weight: bold; font-family: CAlibri; font-size: 10pt">
                                        &nbsp;DANIŞMAN</td>
                                    <td align="center" 
                                        style="color: #CC0000; font-weight: bold; font-family: CAlibri; font-size: 10pt">
                                        REZERVE</td>
                                    <td align="center" 
                                        style="color: #CC0000; font-weight: bold; font-family: CAlibri; font-size: 10pt">
                                        ÖDEME</td>
                                    <td align="center" 
                                        style="color: #CC0000; font-weight: bold; font-family: CAlibri; font-size: 10pt">
                                        YONETİM</td>
                                    <td align="center" 
                                        style="color: #CC0000; font-weight: bold; font-family: CAlibri; font-size: 10pt">
                                        NOTER</td>
                                    <td align="center" 
                                        style="color: #CC0000; font-weight: bold; font-family: CAlibri; font-size: 10pt">
                                        SATILDI</td>
                                </tr>
                                <tr align="center">
                                    <td align="left" style="background-color: #F5F5F5">
                                        &nbsp;Emrah</td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="emrah_rLabel" runat="server" Text='<%# Bind("emrah_r") %>' />
                                    </td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="emrah_oLabel" runat="server" Text='<%# Bind("emrah_o") %>' />
                                    </td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="emrah_yLabel" runat="server" Text='<%# Bind("emrah_y") %>' />
                                    </td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="emrah_nLabel" runat="server" Text='<%# Bind("emrah_n") %>' />
                                    </td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="emrah_sLabel" runat="server" Text='<%# Bind("emrah_s") %>' />
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left" style="background-color: #F5F5F5">
                                        &nbsp;Erdem</td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="erdem_rLabel" runat="server" Text='<%# Bind("erdem_r") %>' />
                                    </td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="erdem_oLabel" runat="server" Text='<%# Bind("erdem_o") %>' />
                                    </td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="erdem_yLabel" runat="server" Text='<%# Bind("erdem_y") %>' />
                                    </td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="erdem_nLabel" runat="server" Text='<%# Bind("erdem_n") %>' />
                                    </td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="erdem_sLabel" runat="server" Text='<%# Bind("erdem_s") %>' />
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left" style="background-color: #F5F5F5">
                                        &nbsp;Fatih</td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="musa_rLabel" runat="server" Text='<%# Bind("musa_r") %>' />
                                    </td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="musa_oLabel" runat="server" Text='<%# Bind("musa_o") %>' />
                                    </td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="musa_yLabel" runat="server" Text='<%# Bind("musa_y") %>' />
                                    </td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="musa_nLabel" runat="server" Text='<%# Bind("musa_n") %>' />
                                    </td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="musa_sLabel" runat="server" Text='<%# Bind("musa_s") %>' />
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left" style="background-color: #F5F5F5">
                                        &nbsp;Suleyman</td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="suleyman_rLabel" runat="server" 
                                            Text='<%# Bind("suleyman_r") %>' />
                                    </td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="suleyman_oLabel" runat="server" 
                                            Text='<%# Bind("suleyman_o") %>' />
                                    </td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="suleyman_yLabel" runat="server" 
                                            Text='<%# Bind("suleyman_y") %>' />
                                    </td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="suleyman_nLabel" runat="server" 
                                            Text='<%# Bind("suleyman_n") %>' />
                                    </td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="suleyman_sLabel" runat="server" 
                                            Text='<%# Bind("suleyman_s") %>' />
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left" style="background-color: #F5F5F5">
                                        &nbsp;Tolga</td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="tolga_rLabel" runat="server" Text='<%# Bind("tolga_r") %>' />
                                    </td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="tolga_oLabel" runat="server" Text='<%# Bind("tolga_o") %>' />
                                    </td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="tolga_yLabel" runat="server" Text='<%# Bind("tolga_y") %>' />
                                    </td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="tolga_nLabel" runat="server" Text='<%# Bind("tolga_n") %>' />
                                    </td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="tolga_sLabel" runat="server" Text='<%# Bind("tolga_s") %>' />
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left" style="background-color: #F5F5F5">
                                        &nbsp;Otoport</td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="ibrahim_rLabel" runat="server" Text='<%# Bind("ibrahim_r") %>' />
                                    </td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="ibrahim_oLabel" runat="server" Text='<%# Bind("ibrahim_o") %>' />
                                    </td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="ibrahim_yLabel" runat="server" Text='<%# Bind("ibrahim_y") %>' />
                                    </td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="ibrahim_nLabel" runat="server" Text='<%# Bind("ibrahim_n") %>' />
                                    </td>
                                    <td style="background-color: #F5F5F5">
                                        <asp:Label ID="ibrahim_sLabel" runat="server" Text='<%# Bind("ibrahim_s") %>' />
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left" 
                                        style="color: #CC0000; font-weight: bold; font-family: CAlibri; font-size: 10pt; background-color: #DADADA;">
                                        &nbsp;TOPLAM :</td>
                                    <td style="color: #CC0000; font-weight: bold; font-family: CAlibri; font-size: 10pt; background-color: #DADADA;">
                                        <asp:Label ID="rtoplamLabel" runat="server" Text='<%# Bind("rtoplam") %>' />
                                    </td>
                                    <td style="color: #CC0000; font-weight: bold; font-family: CAlibri; font-size: 10pt; background-color: #DADADA;">
                                        <asp:Label ID="otoplamLabel" runat="server" Text='<%# Bind("otoplam") %>' />
                                    </td>
                                    <td style="color: #CC0000; font-weight: bold; font-family: CAlibri; font-size: 10pt; background-color: #DADADA;">
                                        <asp:Label ID="ytoplamLabel" runat="server" Text='<%# Bind("ytoplam") %>' />
                                    </td>
                                    <td style="color: #CC0000; font-weight: bold; font-family: CAlibri; font-size: 10pt; background-color: #DADADA;">
                                        <asp:Label ID="ntoplamLabel" runat="server" Text='<%# Bind("ntoplam") %>' />
                                    </td>
                                    <td style="color: #CC0000; font-weight: bold; font-family: CAlibri; font-size: 10pt; background-color: #DADADA;">
                                        <asp:Label ID="stoplamLabel" runat="server" Text='<%# Bind("stoplam") %>' />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:FormView>
                </asp:Panel>
            </td>
            <td width="15%" align="left" valign="top" >
                <asp:Panel ID="Panel3" runat="server" Font-Bold="True" Font-Names="Calibri" 
                    Font-Size="Small" GroupingText="STOK BİLGİLERİ" Width="100%" 
                    Height="200px">
                    <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource9" 
                        Width="100%" Height="156px">
                        <EditItemTemplate>
                            Aldatmaz:
                            <asp:TextBox ID="AldatmazTextBox0" runat="server" 
                                Text='<%# Bind("Aldatmaz") %>' />
                            <br />
                            Kapital:
                            <asp:TextBox ID="KapitalTextBox0" runat="server" 
                                Text='<%# Bind("Kapital") %>' />
                            <br />
                            Konsinye:
                            <asp:TextBox ID="KonsinyeTextBox0" runat="server" 
                                Text='<%# Bind("Konsinye") %>' />
                            <br />
                            Otoport:
                            <asp:TextBox ID="OtoportTextBox0" runat="server" 
                                Text='<%# Bind("Otoport") %>' />
                            <br />
                            Toplam Stok Sayısı:
                            <asp:TextBox ID="Toplam_Stok_SayısıTextBox0" runat="server" 
                                Text='<%# Bind("[Toplam Stok Sayısı]") %>' />
                            <br />
                            tolga_r:
                            <asp:TextBox ID="tolga_rTextBox0" runat="server" 
                                Text='<%# Bind("tolga_r") %>' />
                            <br />
                            emrah_r:
                            <asp:TextBox ID="emrah_rTextBox0" runat="server" 
                                Text='<%# Bind("emrah_r") %>' />
                            <br />
                            suleyman_r:
                            <asp:TextBox ID="suleyman_rTextBox0" runat="server" 
                                Text='<%# Bind("suleyman_r") %>' />
                            <br />
                            musa_r:
                            <asp:TextBox ID="musa_rTextBox0" runat="server" Text='<%# Bind("musa_r") %>' />
                            <br />
                            erdem_r:
                            <asp:TextBox ID="erdem_rTextBox0" runat="server" 
                                Text='<%# Bind("erdem_r") %>' />
                            <br />
                            tolga_o:
                            <asp:TextBox ID="tolga_oTextBox0" runat="server" 
                                Text='<%# Bind("tolga_o") %>' />
                            <br />
                            emrah_o:
                            <asp:TextBox ID="emrah_oTextBox0" runat="server" 
                                Text='<%# Bind("emrah_o") %>' />
                            <br />
                            suleyman_o:
                            <asp:TextBox ID="suleyman_oTextBox0" runat="server" 
                                Text='<%# Bind("suleyman_o") %>' />
                            <br />
                            musa_o:
                            <asp:TextBox ID="musa_oTextBox0" runat="server" Text='<%# Bind("musa_o") %>' />
                            <br />
                            erdem_o:
                            <asp:TextBox ID="erdem_oTextBox0" runat="server" 
                                Text='<%# Bind("erdem_o") %>' />
                            <br />
                            tolga_s:
                            <asp:TextBox ID="tolga_sTextBox0" runat="server" 
                                Text='<%# Bind("tolga_s") %>' />
                            <br />
                            emrah_s:
                            <asp:TextBox ID="emrah_sTextBox0" runat="server" 
                                Text='<%# Bind("emrah_s") %>' />
                            <br />
                            suleyman_s:
                            <asp:TextBox ID="suleyman_sTextBox0" runat="server" 
                                Text='<%# Bind("suleyman_s") %>' />
                            <br />
                            musa_s:
                            <asp:TextBox ID="musa_sTextBox0" runat="server" Text='<%# Bind("musa_s") %>' />
                            <br />
                            erdem_s:
                            <asp:TextBox ID="erdem_sTextBox0" runat="server" 
                                Text='<%# Bind("erdem_s") %>' />
                            <br />
                            ibrahim_r:
                            <asp:TextBox ID="ibrahim_rTextBox0" runat="server" 
                                Text='<%# Bind("ibrahim_r") %>' />
                            <br />
                            ibrahim_s:
                            <asp:TextBox ID="ibrahim_sTextBox0" runat="server" 
                                Text='<%# Bind("ibrahim_s") %>' />
                            <br />
                            ibrahim_o:
                            <asp:TextBox ID="ibrahim_oTextBox0" runat="server" 
                                Text='<%# Bind("ibrahim_o") %>' />
                            <br />
                            rtoplam:
                            <asp:TextBox ID="rtoplamTextBox0" runat="server" 
                                Text='<%# Bind("rtoplam") %>' />
                            <br />
                            otoplam:
                            <asp:TextBox ID="otoplamTextBox0" runat="server" 
                                Text='<%# Bind("otoplam") %>' />
                            <br />
                            stoplam:
                            <asp:TextBox ID="stoplamTextBox0" runat="server" 
                                Text='<%# Bind("stoplam") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton0" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton0" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            Aldatmaz:
                            <asp:TextBox ID="AldatmazTextBox1" runat="server" 
                                Text='<%# Bind("Aldatmaz") %>' />
                            <br />
                            Kapital:
                            <asp:TextBox ID="KapitalTextBox1" runat="server" 
                                Text='<%# Bind("Kapital") %>' />
                            <br />
                            Konsinye:
                            <asp:TextBox ID="KonsinyeTextBox1" runat="server" 
                                Text='<%# Bind("Konsinye") %>' />
                            <br />
                            Otoport:
                            <asp:TextBox ID="OtoportTextBox1" runat="server" 
                                Text='<%# Bind("Otoport") %>' />
                            <br />
                            Toplam Stok Sayısı:
                            <asp:TextBox ID="Toplam_Stok_SayısıTextBox1" runat="server" 
                                Text='<%# Bind("[Toplam Stok Sayısı]") %>' />
                            <br />
                            tolga_r:
                            <asp:TextBox ID="tolga_rTextBox1" runat="server" 
                                Text='<%# Bind("tolga_r") %>' />
                            <br />
                            emrah_r:
                            <asp:TextBox ID="emrah_rTextBox1" runat="server" 
                                Text='<%# Bind("emrah_r") %>' />
                            <br />
                            suleyman_r:
                            <asp:TextBox ID="suleyman_rTextBox1" runat="server" 
                                Text='<%# Bind("suleyman_r") %>' />
                            <br />
                            musa_r:
                            <asp:TextBox ID="musa_rTextBox1" runat="server" Text='<%# Bind("musa_r") %>' />
                            <br />
                            erdem_r:
                            <asp:TextBox ID="erdem_rTextBox1" runat="server" 
                                Text='<%# Bind("erdem_r") %>' />
                            <br />
                            tolga_o:
                            <asp:TextBox ID="tolga_oTextBox1" runat="server" 
                                Text='<%# Bind("tolga_o") %>' />
                            <br />
                            emrah_o:
                            <asp:TextBox ID="emrah_oTextBox1" runat="server" 
                                Text='<%# Bind("emrah_o") %>' />
                            <br />
                            suleyman_o:
                            <asp:TextBox ID="suleyman_oTextBox1" runat="server" 
                                Text='<%# Bind("suleyman_o") %>' />
                            <br />
                            musa_o:
                            <asp:TextBox ID="musa_oTextBox1" runat="server" Text='<%# Bind("musa_o") %>' />
                            <br />
                            erdem_o:
                            <asp:TextBox ID="erdem_oTextBox1" runat="server" 
                                Text='<%# Bind("erdem_o") %>' />
                            <br />
                            tolga_s:
                            <asp:TextBox ID="tolga_sTextBox1" runat="server" 
                                Text='<%# Bind("tolga_s") %>' />
                            <br />
                            emrah_s:
                            <asp:TextBox ID="emrah_sTextBox1" runat="server" 
                                Text='<%# Bind("emrah_s") %>' />
                            <br />
                            suleyman_s:
                            <asp:TextBox ID="suleyman_sTextBox1" runat="server" 
                                Text='<%# Bind("suleyman_s") %>' />
                            <br />
                            musa_s:
                            <asp:TextBox ID="musa_sTextBox1" runat="server" Text='<%# Bind("musa_s") %>' />
                            <br />
                            erdem_s:
                            <asp:TextBox ID="erdem_sTextBox1" runat="server" 
                                Text='<%# Bind("erdem_s") %>' />
                            <br />
                            ibrahim_r:
                            <asp:TextBox ID="ibrahim_rTextBox1" runat="server" 
                                Text='<%# Bind("ibrahim_r") %>' />
                            <br />
                            ibrahim_s:
                            <asp:TextBox ID="ibrahim_sTextBox1" runat="server" 
                                Text='<%# Bind("ibrahim_s") %>' />
                            <br />
                            ibrahim_o:
                            <asp:TextBox ID="ibrahim_oTextBox1" runat="server" 
                                Text='<%# Bind("ibrahim_o") %>' />
                            <br />
                            rtoplam:
                            <asp:TextBox ID="rtoplamTextBox1" runat="server" 
                                Text='<%# Bind("rtoplam") %>' />
                            <br />
                            otoplam:
                            <asp:TextBox ID="otoplamTextBox1" runat="server" 
                                Text='<%# Bind("otoplam") %>' />
                            <br />
                            stoplam:
                            <asp:TextBox ID="stoplamTextBox1" runat="server" 
                                Text='<%# Bind("stoplam") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton0" runat="server" CausesValidation="True" 
                                CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton0" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <table width="100%" margin-top="0px">
                                <tr align="center">
                                    <td align="left" class="style31" 
                                        style="font-weight: bold; color: #CC0000; font-family: CAlibri; font-size: 10pt;">
                                        FİRMA ADI</td>
                                    <td 
                                        width="25px" 
                                        style="font-weight: bold; color: #CC0000; font-family: CAlibri; font-size: 10pt;">
                                        ADET</td>
                                </tr>
                                <tr align="center">
                                    <td align="left" class="style31" 
                                        style="font-weight: bold; background-color: #F5F5F5;">
                                        &nbsp;Aldatmaz:
                                    </td>
                                    <td style="font-weight: bold; background-color: #F5F5F5;" width="25px">
                                        <asp:Label ID="AldatmazLabel0" runat="server" Text='<%# Bind("Aldatmaz") %>' />
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left" class="style31" 
                                        style="font-weight: bold; background-color: #F5F5F5;">
                                        &nbsp;Kapital:</td>
                                    <td 
                                        width="25px" style="font-weight: bold; background-color: #F5F5F5;">
                                        <asp:Label ID="KapitalLabel0" runat="server" Text='<%# Bind("Kapital") %>' />
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left" class="style31" 
                                        style="font-weight: bold; background-color: #F5F5F5;">
                                        &nbsp;Konsinye:
                                    </td>
                                    <td 
                                        width="25px" style="font-weight: bold; background-color: #F5F5F5;">
                                        <asp:Label ID="KonsinyeLabel0" runat="server" Text='<%# Bind("Konsinye") %>' />
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left" class="style31" 
                                        style="font-weight: bold; background-color: #F5F5F5;">
                                        &nbsp;Otoport:
                                    </td>
                                    <td 
                                        width="25px" style="font-weight: bold; background-color: #F5F5F5;">
                                        <asp:Label ID="OtoportLabel0" runat="server" Text='<%# Bind("Otoport") %>' />
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left" class="style31" style="background-color: #F5F5F5">
                                    </td>
                                    <td 
                                        width="25px" style="background-color: #F5F5F5">
                                        &nbsp;</td>
                                </tr>
                                <tr align="center">
                                    <td align="left" class="style31" style="background-color: #F5F5F5">
                                        &nbsp;</td>
                                    <td width="25px" style="background-color: #F5F5F5">
                                        &nbsp;</td>
                                </tr>
                                 <tr align="center">
                                    <td align="left" class="style31" 
                                         style="color: #CC0000; font-weight: bold; font-family: CAlibri; font-size: 10pt; background-color: #DADADA;">
                                        &nbsp;TOPLAM STOK:</td>
                                    <td width="25px" 
                                         style="color: #CC0000; font-weight: bold; font-family: CAlibri; font-size: 10pt; background-color: #DADADA;">
                                        <asp:Label ID="Toplam_Stok_SayısıLabel0" runat="server" 
                                            Text='<%# Bind("[Toplam Stok Sayısı]") %>' />
                                     </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:FormView>
                </asp:Panel>
                 </td>
        </tr>
        <tr>
      
            <td colspan="4" class="style22" width="15%">
                   <div id="yazdır">   
                    <asp:Label ID="lblms" runat="server" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="10pt"></asp:Label>
                
                     
                    <asp:GridView ID="gaktif" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                        DataKeyNames="ID" DataSourceID="SqlDataSource4" Font-Names="Calibri" 
                        Font-Size="9pt" ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="100%" 
                    HorizontalAlign="Center" PageSize="50" onrowdatabound="gaktif_RowDataBound">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ButtonType="Image" 
                                ShowSelectButton="True" SelectImageUrl="~/image/duzenle.png" />
                            <asp:TemplateField HeaderText="No">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text="<%# Container.DataItemIndex + 1 %>"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="ID" 
                                ReadOnly="True" SortExpression="ID" InsertVisible="False" >
                            <ItemStyle ForeColor="White" />
                            </asp:BoundField>
                            <asp:CheckBoxField DataField="Yedek A." HeaderText="Y. A." 
                                SortExpression="Yedek A." />
                            <asp:BoundField DataField="Sahip" HeaderText="Sahip" SortExpression="Sahip" />
                            <asp:BoundField DataField="Park" HeaderText="Park" SortExpression="Park" />
                            <asp:BoundField DataField="AlışTarihi" ReadOnly="True" 
                                SortExpression="AlışTarihi" DataFormatString="{0:d}" 
                                HeaderText="AlışTarihi" >
                            </asp:BoundField>
                            <asp:BoundField DataField="Marka" HeaderText="Marka" SortExpression="Marka" />
                            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                            <asp:BoundField DataField="Yılı" HeaderText="Yılı" SortExpression="Yılı" />
                            <asp:BoundField DataField="Yakıt" HeaderText="Yakıt" SortExpression="Yakıt" />
                            <asp:BoundField DataField="Plaka" HeaderText="Plaka" SortExpression="Plaka" />
                            <asp:BoundField DataField="Renk" HeaderText="Renk" SortExpression="Renk" />
                            <asp:BoundField DataField="Km" HeaderText="Km" SortExpression="Km" />
                            <asp:BoundField DataField="Satiş Fiyatı" HeaderText="Satiş Fiyatı" 
                                SortExpression="Satiş Fiyatı" />
                            <asp:BoundField DataField="Vites" HeaderText="Vites" SortExpression="Vites" />
                            <asp:BoundField DataField="Muay. Tarihi" 
                                HeaderText="Muay. Tarihi" ReadOnly="True" SortExpression="Muay. Tarihi" 
                                DataFormatString="{0:d}"  />
                            <asp:BoundField DataField="Durumu" 
                                HeaderText="Durumu" SortExpression="Durumu" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#F58220" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:mydb %>" SelectCommand="araclistesi" 
                        SelectCommandType="StoredProcedure" onselected="SqlDataSource4_Selected">
                            <SelectParameters>
                                           <asp:Parameter Direction="ReturnValue" Name="return" Type="Int32" />
                                        </SelectParameters>
                        </asp:SqlDataSource>
                    <asp:GridView ID="godeme" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                        DataKeyNames="ID" DataSourceID="SqlDataSource6" Font-Names="Calibri" 
                        Font-Size="9pt" ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="godeme_SelectedIndexChanged" Width="100%" 
                    HorizontalAlign="Center" PageSize="50" onrowdatabound="godeme_RowDataBound">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ButtonType="Image" InsertImageUrl="~/image/duzenle.png" 
                                ShowSelectButton="True" SelectImageUrl="~/image/duzenle.png" />
                            <asp:TemplateField HeaderText="No">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text="<%# Container.DataItemIndex + 1 %>"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="ID" InsertVisible="False" ReadOnly="True" 
                                SortExpression="ID" />
                            <asp:CheckBoxField DataField="Yedek A." HeaderText="Yedek A." 
                                SortExpression="Yedek A." />
                            <asp:BoundField DataField="Sahip" HeaderText="Sahip" 
                                SortExpression="Sahip" />
                            <asp:BoundField DataField="Park" HeaderText="Park" 
                                SortExpression="Park" />
                            <asp:BoundField DataField="AlışTarihi" HeaderText="AlışTarihi" 
                                SortExpression="AlışTarihi" ReadOnly="True" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Marka" HeaderText="Marka" SortExpression="Marka" />
                            <asp:BoundField DataField="Model" HeaderText="Model" 
                                SortExpression="Model" />
                            <asp:BoundField DataField="Yılı" HeaderText="Yılı" SortExpression="Yılı" />
                            <asp:BoundField DataField="Yakıt" HeaderText="Yakıt" 
                                SortExpression="Yakıt" />
                            <asp:BoundField DataField="Plaka" HeaderText="Plaka" SortExpression="Plaka" />
                            <asp:BoundField DataField="Renk" HeaderText="Renk" 
                                SortExpression="Renk" />
                            <asp:BoundField DataField="Km" HeaderText="Km" 
                                SortExpression="Km" />
                            <asp:BoundField DataField="Satiş Fiyatı" HeaderText="Satiş Fiyatı" 
                                SortExpression="Satiş Fiyatı" />
                            <asp:BoundField DataField="Vites" HeaderText="Vites" 
                                SortExpression="Vites" />
                            <asp:BoundField DataField="Muay. Tarihi" HeaderText="Muay. Tarihi" 
                                SortExpression="Muay. Tarihi" ReadOnly="True" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Durumu" HeaderText="Durumu" 
                                SortExpression="Durumu" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#F58220" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:mydb %>" SelectCommand="odeme_liste" 
                        SelectCommandType="StoredProcedure" onselected="SqlDataSource6_Selected">
                            <SelectParameters>
                                           <asp:Parameter Direction="ReturnValue" Name="return" Type="Int32" />
                                        </SelectParameters>
                        </asp:SqlDataSource>
                    <asp:GridView ID="grezerve" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                        DataKeyNames="ID" DataSourceID="SqlDataSource7" Font-Names="Calibri" 
                        Font-Size="9pt" ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="grezerve_SelectedIndexChanged" Width="100%" 
                        PageSize="50" onrowdatabound="grezerve_RowDataBound">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/image/duzenle.png" 
                                ShowSelectButton="True" />
                            <asp:TemplateField HeaderText="No">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text="<%# Container.DataItemIndex + 1 %>"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="ID" InsertVisible="False" ReadOnly="True" 
                                SortExpression="ID" >
                            <ControlStyle ForeColor="White" />
                            </asp:BoundField>
                            <asp:CheckBoxField DataField="Yedek A." HeaderText="Yedek A." 
                                SortExpression="Yedek A." />
                            <asp:BoundField DataField="Sahip" HeaderText="Sahip" 
                                SortExpression="Sahip" />
                            <asp:BoundField DataField="Park" HeaderText="Park" 
                                SortExpression="Park" />
                            <asp:BoundField DataField="AlışTarihi" HeaderText="AlışTarihi" 
                                SortExpression="AlışTarihi" ReadOnly="True" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Marka" HeaderText="Marka" SortExpression="Marka" />
                            <asp:BoundField DataField="Model" HeaderText="Model" 
                                SortExpression="Model" />
                            <asp:BoundField DataField="Yılı" HeaderText="Yılı" SortExpression="Yılı" />
                            <asp:BoundField DataField="Yakıt" HeaderText="Yakıt" 
                                SortExpression="Yakıt" />
                            <asp:BoundField DataField="Plaka" HeaderText="Plaka" SortExpression="Plaka" />
                            <asp:BoundField DataField="Renk" HeaderText="Renk" 
                                SortExpression="Renk" />
                            <asp:BoundField DataField="Km" HeaderText="Km" 
                                SortExpression="Km" />
                            <asp:BoundField DataField="Satiş Fiyatı" HeaderText="Satiş Fiyatı" 
                                SortExpression="Satiş Fiyatı" />
                            <asp:BoundField DataField="Vites" HeaderText="Vites" 
                                SortExpression="Vites"/>
                            <asp:BoundField DataField="Muay. Tarihi" HeaderText="Muay. Tarihi" 
                                SortExpression="Muay. Tarihi" ReadOnly="True" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Durumu" HeaderText="Durumu" 
                                SortExpression="Durumu" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#F58220" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" Font-Size="9pt" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:mydb %>" 
                        SelectCommand="rezerve_listele" SelectCommandType="StoredProcedure" 
                        onselected="SqlDataSource7_Selected">
                          <SelectParameters>
                                           <asp:Parameter Direction="ReturnValue" Name="return" Type="Int32" />
                                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gyonetim" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                        DataKeyNames="ID" DataSourceID="SqlDataSource12" Font-Names="Calibri" 
                        Font-Size="9pt" ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="gyonetim_SelectedIndexChanged2" Width="100%" 
                        PageSize="50" onrowdatabound="grezerve_RowDataBound">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/image/duzenle.png" 
                                ShowSelectButton="True" />
                            <asp:TemplateField HeaderText="No">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text="<%# Container.DataItemIndex + 1 %>"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="ID" InsertVisible="False" ReadOnly="True" 
                                SortExpression="ID" >
                            <ControlStyle ForeColor="White" />
                            </asp:BoundField>
                            <asp:CheckBoxField DataField="Yedek A." HeaderText="Yedek A." 
                                SortExpression="Yedek A." />
                            <asp:BoundField DataField="Sahip" HeaderText="Sahip" 
                                SortExpression="Sahip" />
                            <asp:BoundField DataField="Park" HeaderText="Park" 
                                SortExpression="Park" />
                            <asp:BoundField DataField="AlışTarihi" HeaderText="AlışTarihi" 
                                SortExpression="AlışTarihi" ReadOnly="True" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Marka" HeaderText="Marka" SortExpression="Marka" />
                            <asp:BoundField DataField="Model" HeaderText="Model" 
                                SortExpression="Model" />
                            <asp:BoundField DataField="Yılı" HeaderText="Yılı" SortExpression="Yılı" />
                            <asp:BoundField DataField="Yakıt" HeaderText="Yakıt" 
                                SortExpression="Yakıt" />
                            <asp:BoundField DataField="Plaka" HeaderText="Plaka" SortExpression="Plaka" />
                            <asp:BoundField DataField="Renk" HeaderText="Renk" 
                                SortExpression="Renk" />
                            <asp:BoundField DataField="Km" HeaderText="Km" 
                                SortExpression="Km" />
                            <asp:BoundField DataField="Satiş Fiyatı" HeaderText="Satiş Fiyatı" 
                                SortExpression="Satiş Fiyatı" />
                            <asp:BoundField DataField="Vites" HeaderText="Vites" 
                                SortExpression="Vites"/>
                            <asp:BoundField DataField="Muay. Tarihi" HeaderText="Muay. Tarihi" 
                                SortExpression="Muay. Tarihi" ReadOnly="True" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Durumu" HeaderText="Durumu" 
                                SortExpression="Durumu" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#F58220" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" Font-Size="9pt" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                       <asp:SqlDataSource ID="SqlDataSource12" runat="server" 
                           ConnectionString="<%$ ConnectionStrings:mydb %>" SelectCommand="yonetim_list" 
                           SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    <asp:GridView ID="gfiltre" runat="server" 
                    onrowcommand="gfiltre_RowCommand" Width="100%" 
                    onselectedindexchanged="gfiltre_SelectedIndexChanged" AllowPaging="True" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" 
                    onpageindexchanging="gfiltre_PageIndexChanging" Font-Bold="False" 
                    Font-Names="Calibri" Font-Size="9pt" PageSize="50" 
                        onrowdatabound="gfiltre_RowDataBound" AllowSorting="True" 
                           onsorting="gfiltre_Sorting" AutoGenerateColumns="False" DataKeyNames="ID">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:ButtonField ButtonType="Image" CommandName="sec" 
                                ImageUrl="~/image/duzenle.png" Text="Button" />

                                  <asp:TemplateField HeaderText="No">
                                      <ItemTemplate>
                                          <asp:Label ID="Label4" runat="server" Text="<%# Container.DataItemIndex + 1 %>"></asp:Label>
                                      </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="ID" InsertVisible="False" 
                                ReadOnly="True" SortExpression="ID" >
                            <ControlStyle ForeColor="White" />
                            <ItemStyle ForeColor="White" />
                            </asp:BoundField>
                            <asp:CheckBoxField DataField="Yedek A." HeaderText="Yedek A." 
                                SortExpression="Yedek A." />

                                  <asp:BoundField DataField="Sahip" HeaderText="Sahip" 
                                SortExpression="Sahip" />
                            <asp:BoundField DataField="Park" HeaderText="Park" SortExpression="Park" />
                            <asp:BoundField DataField="AlışTarihi" DataFormatString="{0:d}" 
                                HeaderText="AlışTarihi" ReadOnly="True" SortExpression="AlışTarihi" />
                            <asp:BoundField DataField="Marka" HeaderText="Marka" SortExpression="Marka" />
                            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                            <asp:BoundField DataField="Yılı" HeaderText="Yılı" SortExpression="Yılı" />
                            <asp:BoundField DataField="Yakıt" HeaderText="Yakıt" SortExpression="Yakıt" />
                            <asp:BoundField DataField="Plaka" HeaderText="Plaka" SortExpression="Plaka" />
                            <asp:BoundField DataField="Renk" HeaderText="Renk" SortExpression="Renk" />
                            <asp:BoundField DataField="Km" HeaderText="Km" SortExpression="Km" />
                            <asp:BoundField DataField="Satiş Fiyatı" HeaderText="Satiş Fiyatı" 
                                SortExpression="Satiş Fiyatı" />
                            <asp:BoundField DataField="Vites" HeaderText="Vites" SortExpression="Vites" />
                            <asp:BoundField DataField="Muay. Tarihi" DataFormatString="{0:d}" 
                                HeaderText="Muay. Tarihi" ReadOnly="True" SortExpression="Muay. Tarihi" />
                            <asp:BoundField DataField="Durumu" HeaderText="Durumu" 
                                SortExpression="Durumu" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#F58220" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle Font-Size="9pt" HorizontalAlign="Center" VerticalAlign="Middle" 
                            BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [k_id], [k_adı] FROM [kullanicilar]" 
                        onselected="SqlDataSource1_Selected" onselecting="SqlDataSource1_Selecting">
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:mydb %>" 
                        SelectCommand="bilgi" SelectCommandType="StoredProcedure">
                    </asp:SqlDataSource>
                   </div>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
