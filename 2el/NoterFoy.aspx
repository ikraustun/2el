<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NoterFoy.aspx.cs" Inherits="NoterFoy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
 
    <script language="javascript">

<!-- This script is based on the javascript code of Roman Feldblum (web.developer@programmer.net) -->
<!-- Original script : http://javascript.internet.com/forms/format-phone-number.html -->
<!-- Original script is revised by Eralper Yilmaz (http://www.eralper.com) -->
<!-- Revised script : http://www.kodyaz.com -->

var zChar = new Array(' ', '(', ')', '-','.');
var maxphonelength = 13;
var phonevalue1;
var phonevalue2;
var cursorposition;

function ParseForNumber1(object){
phonevalue1 = ParseChar(object.value, zChar);
}
function ParseForNumber2(object){
phonevalue2 = ParseChar(object.value, zChar);
}

function backspacerUP(object,e) { 
if(e){ 
e = e 
} else {
e = window.event 
} 
if(e.which){ 
var keycode = e.which 
} else {
var keycode = e.keyCode 
}

ParseForNumber1(object)

if(keycode >= 48){
ValidatePhone(object)
}
}

function backspacerDOWN(object,e) { 
if(e){ 
e = e 
} else {
e = window.event 
} 
if(e.which){ 
var keycode = e.which 
} else {
var keycode = e.keyCode 
}
ParseForNumber2(object)
} 

function GetCursorPosition(){

var t1 = phonevalue1;
var t2 = phonevalue2;
var bool = false
for (i=0; i<t1.length; i++)
{
if (t1.substring(i,1) != t2.substring(i,1)) {
if(!bool) {
cursorposition=i
bool=true
}
}
}
}

function ValidatePhone(object){

var p = phonevalue1

p = p.replace(/[^\d]*/gi,"")

if (p.length < 3) {
object.value=p
} else if(p.length==3){
pp=p;
d4=p.indexOf('(')
d5=p.indexOf(')')
if(d4==-1){
pp="("+pp;
}
if(d5==-1){
pp=pp+")";
}
object.value = pp;
} else if(p.length>3 && p.length < 7){
p ="(" + p; 
l30=p.length;
p30=p.substring(0,4);
p30=p30+")"

p31=p.substring(4,l30);
pp=p30+p31;

object.value = pp; 

} else if(p.length >= 7){
p ="(" + p; 
l30=p.length;
p30=p.substring(0,4);
p30=p30+")"

p31=p.substring(4,l30);
pp=p30+p31;

l40 = pp.length;
p40 = pp.substring(0,8);
p40 = p40 + "-"

p41 = pp.substring(8,l40);
ppp = p40 + p41;

object.value = ppp.substring(0, maxphonelength);
}

GetCursorPosition()

if(cursorposition >= 0){
if (cursorposition == 0) {
cursorposition = 2
} else if (cursorposition <= 2) {
cursorposition = cursorposition + 1
} else if (cursorposition <= 5) {
cursorposition = cursorposition + 2
} else if (cursorposition == 6) {
cursorposition = cursorposition + 2
} else if (cursorposition == 7) {
cursorposition = cursorposition + 4
e1=object.value.indexOf(')')
e2=object.value.indexOf('-')
if (e1>-1 && e2>-1){
if (e2-e1 == 4) {
cursorposition = cursorposition - 1
}
}
} else if (cursorposition < 11) {
cursorposition = cursorposition + 3
} else if (cursorposition == 11) {
cursorposition = cursorposition + 1
} else if (cursorposition >= 12) {
cursorposition = cursorposition
}

var txtRange = object.createTextRange();
txtRange.moveStart( "character", cursorposition);
txtRange.moveEnd( "character", cursorposition - object.value.length);
txtRange.select();
}

}

function ParseChar(sStr, sChar)
{
if (sChar.length == null) 
{
zChar = new Array(sChar);
}
else zChar = sChar;

for (i=0; i<zChar.length; i++)
{
sNewStr = "";

var iStart = 0;
var iEnd = sStr.indexOf(sChar[i]);

while (iEnd != -1)
{
sNewStr += sStr.substring(iStart, iEnd);
iStart = iEnd + 1;
iEnd = sStr.indexOf(sChar[i], iStart);
}
sNewStr += sStr.substring(sStr.lastIndexOf(sChar[i]) + 1, sStr.length);

sStr = sNewStr;
}

return sNewStr;
}
</script>
    <style type="text/css">
           #a
        {
            position:absolute;
            margin-top:0px;
            right:50px;
        }
        #tdsitil
        {
            border-bottom-color:Silver;
            border-left-color:Silver;
            border-right-color:Silver;
            border-top-color:Silver;
           
             height: 2px;
            color: #FFFFFF;
            font-weight: 700;
            font-size: small;
        }
                        
        #tdsitil0
        {
            border-bottom-color:Silver;
            border-left-color:Silver;
            border-right-color:Silver;
            border-top-color:Silver;
           
             height: 2px;
            color: #FFFFFF;
            font-weight: 700;
            font-size: small;
        }
        .style1
        {
            width: 100%;
            font-family:Arial;
            font-size:small;
        }
        .style34
        {
            height: 20px;
        }
                
    
        
        .style49
        {
            height: 20px;
        }
        .style51
        {
            height: 20px;
            font-size: medium;
            color: #F58220;
        }
        .style54
        {
            font-size: medium;
            color: #F58220;
        }
        .style81
        {
            height: 88px;
        }
                       
        
        .style239
        {
            width: 100%;
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
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style81">
    
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="61px" 
                     ImageUrl="~/image/2.EL.PNG" Width="212px" />
    
    <div id="a">
            </div>
    
            </td>
            <td class="style81" align="right" valign="middle" width="10%">
    
                 <asp:LinkButton ID="Label1" runat="server" 
                     Font-Bold="True" Font-Names="Calibri" Font-Size="12pt" Font-Underline="False" 
                     ForeColor="Black" onclick="Label1_Click"></asp:LinkButton>
    
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel1" runat="server" Font-Names="arial" Font-Size="Small" 
                    GroupingText="Satış Föyü Bilgileri">
                    <table class="style1">
                        <tr>
                            <td class="style54" colspan="4">
                                <asp:FormView ID="FormView5" runat="server" DataSourceID="SqlDataSource4" 
                                    Width="300px">
                                    <EditItemTemplate>
                                        aciklama:
                                        <asp:TextBox ID="aciklamaTextBox" runat="server" 
                                            Text='<%# Bind("aciklama") %>' />
                                        <br />
                                        rezerve_eden:
                                        <asp:TextBox ID="rezerve_edenTextBox" runat="server" 
                                            Text='<%# Bind("rezerve_eden") %>' />
                                        <br />
                                        rezervasyon_tarih:
                                        <asp:TextBox ID="rezervasyon_tarihTextBox" runat="server" 
                                            Text='<%# Bind("rezervasyon_tarih") %>' />
                                        <br />
                                        rz_onay_veren:
                                        <asp:TextBox ID="rz_onay_verenTextBox" runat="server" 
                                            Text='<%# Bind("rz_onay_veren") %>' />
                                        <br />
                                        rz_onay_tarihi:
                                        <asp:TextBox ID="rz_onay_tarihiTextBox" runat="server" 
                                            Text='<%# Bind("rz_onay_tarihi") %>' />
                                        <br />
                                        st_onay:
                                        <asp:TextBox ID="st_onayTextBox" runat="server" Text='<%# Bind("st_onay") %>' />
                                        <br />
                                        st_tarih:
                                        <asp:TextBox ID="st_tarihTextBox" runat="server" 
                                            Text='<%# Bind("st_tarih") %>' />
                                        <br />
                                        durumu:
                                        <asp:TextBox ID="durumuTextBox" runat="server" Text='<%# Bind("durumu") %>' />
                                        <br />
                                        kayit_tarih:
                                        <asp:TextBox ID="kayit_tarihTextBox" runat="server" 
                                            Text='<%# Bind("kayit_tarih") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                            CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        aciklama:
                                        <asp:TextBox ID="aciklamaTextBox" runat="server" 
                                            Text='<%# Bind("aciklama") %>' />
                                        <br />
                                        rezerve_eden:
                                        <asp:TextBox ID="rezerve_edenTextBox" runat="server" 
                                            Text='<%# Bind("rezerve_eden") %>' />
                                        <br />
                                        rezervasyon_tarih:
                                        <asp:TextBox ID="rezervasyon_tarihTextBox" runat="server" 
                                            Text='<%# Bind("rezervasyon_tarih") %>' />
                                        <br />
                                        rz_onay_veren:
                                        <asp:TextBox ID="rz_onay_verenTextBox" runat="server" 
                                            Text='<%# Bind("rz_onay_veren") %>' />
                                        <br />
                                        rz_onay_tarihi:
                                        <asp:TextBox ID="rz_onay_tarihiTextBox" runat="server" 
                                            Text='<%# Bind("rz_onay_tarihi") %>' />
                                        <br />
                                        st_onay:
                                        <asp:TextBox ID="st_onayTextBox" runat="server" Text='<%# Bind("st_onay") %>' />
                                        <br />
                                        st_tarih:
                                        <asp:TextBox ID="st_tarihTextBox" runat="server" 
                                            Text='<%# Bind("st_tarih") %>' />
                                        <br />
                                        durumu:
                                        <asp:TextBox ID="durumuTextBox" runat="server" Text='<%# Bind("durumu") %>' />
                                        <br />
                                        kayit_tarih:
                                        <asp:TextBox ID="kayit_tarihTextBox" runat="server" 
                                            Text='<%# Bind("kayit_tarih") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                            CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <table class="style239" 
                                            style="font-family: Calibri; font-size: 9pt; color: #000000;">
                                            <tr>
                                                <td>
                                                    <b>Kayıt Tarihi</b></td>
                                                <td>
                                                    <asp:Label ID="kayit_tarihLabel" runat="server" 
                                                        Text='<%# Bind("kayit_tarih") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <b>Araç Durumu</b></td>
                                                <td>
                                                    <asp:Label ID="durumuLabel" runat="server" Text='<%# Bind("durumu") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <b>Rezerve Eden</b></td>
                                                <td>
                                                    <asp:Label ID="rezerve_edenLabel" runat="server" 
                                                        Text='<%# Bind("rezerve_eden") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <b>Rezerve&nbsp; Tarihi</b></td>
                                                <td>
                                                    <asp:Label ID="rezervasyon_tarihLabel" runat="server" 
                                                        Text='<%# Bind("rezervasyon_tarih") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <b>Yönetici Onay</b></td>
                                                <td>
                                                    <asp:Label ID="rz_onay_verenLabel" runat="server" 
                                                        Text='<%# Bind("rz_onay_veren") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <b>Onay Tarihi&nbsp; </b>
                                                </td>
                                                <td>
                                                    <asp:Label ID="rz_onay_tarihiLabel" runat="server" 
                                                        Text='<%# Bind("rz_onay_tarihi") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <b>Muhasebe Onay</b></td>
                                                <td>
                                                    <asp:Label ID="st_onayLabel" runat="server" Text='<%# Bind("st_onay") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <b>Onay Tarihi</b></td>
                                                <td>
                                                    <asp:Label ID="st_tarihLabel" runat="server" Text='<%# Bind("st_tarih") %>' />
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:FormView>
                            </td>
                            <td>
                                 &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style54" colspan="4">
                                <strong style="font-family: calibri; font-size: 13pt; font-weight: bold; color: #F58220">Araç Bilgileri</strong></td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="5">
                                <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" 
                                    Font-Names="arial" Font-Size="Small" Width="600px">
                                    <EditItemTemplate>
                                        marka_ad:
                                        <asp:TextBox ID="marka_adTextBox" runat="server" 
                                            Text='<%# Bind("marka_ad") %>' />
                                        <br />
                                        model_ad:
                                        <asp:TextBox ID="model_adTextBox" runat="server" 
                                            Text='<%# Bind("model_ad") %>' />
                                        <br />
                                        model_yili:
                                        <asp:TextBox ID="model_yiliTextBox" runat="server" 
                                            Text='<%# Bind("model_yili") %>' />
                                        <br />
                                        plaka:
                                        <asp:TextBox ID="plakaTextBox" runat="server" Text='<%# Bind("plaka") %>' />
                                        <br />
                                        motor_no:
                                        <asp:TextBox ID="motor_noTextBox" runat="server" 
                                            Text='<%# Bind("motor_no") %>' />
                                        <br />
                                        sase_no:
                                        <asp:TextBox ID="sase_noTextBox" runat="server" Text='<%# Bind("sase_no") %>' />
                                        <br />
                                        kasko_kodu:
                                        <asp:TextBox ID="kasko_koduTextBox" runat="server" 
                                            Text='<%# Bind("kasko_kodu") %>' />
                                        <br />
                                        kaso_degeri:
                                        <asp:TextBox ID="kaso_degeriTextBox" runat="server" 
                                            Text='<%# Bind("kaso_degeri") %>' />
                                        <br />
                                        fatura_bedeli:
                                        <asp:TextBox ID="fatura_bedeliTextBox" runat="server" 
                                            Text='<%# Bind("fatura_bedeli") %>' />
                                        <br />
                                        kullanim_amac:
                                        <asp:TextBox ID="kullanim_amacTextBox" runat="server" 
                                            Text='<%# Bind("kullanim_amac") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                            CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        marka_ad:
                                        <asp:TextBox ID="marka_adTextBox" runat="server" 
                                            Text='<%# Bind("marka_ad") %>' />
                                        <br />
                                        model_ad:
                                        <asp:TextBox ID="model_adTextBox" runat="server" 
                                            Text='<%# Bind("model_ad") %>' />
                                        <br />
                                        model_yili:
                                        <asp:TextBox ID="model_yiliTextBox" runat="server" 
                                            Text='<%# Bind("model_yili") %>' />
                                        <br />
                                        plaka:
                                        <asp:TextBox ID="plakaTextBox" runat="server" Text='<%# Bind("plaka") %>' />
                                        <br />
                                        motor_no:
                                        <asp:TextBox ID="motor_noTextBox" runat="server" 
                                            Text='<%# Bind("motor_no") %>' />
                                        <br />
                                        sase_no:
                                        <asp:TextBox ID="sase_noTextBox" runat="server" Text='<%# Bind("sase_no") %>' />
                                        <br />
                                        kasko_kodu:
                                        <asp:TextBox ID="kasko_koduTextBox" runat="server" 
                                            Text='<%# Bind("kasko_kodu") %>' />
                                        <br />
                                        kaso_degeri:
                                        <asp:TextBox ID="kaso_degeriTextBox" runat="server" 
                                            Text='<%# Bind("kaso_degeri") %>' />
                                        <br />
                                        fatura_bedeli:
                                        <asp:TextBox ID="fatura_bedeliTextBox" runat="server" 
                                            Text='<%# Bind("fatura_bedeli") %>' />
                                        <br />
                                        kullanim_amac:
                                        <asp:TextBox ID="kullanim_amacTextBox" runat="server" 
                                            Text='<%# Bind("kullanim_amac") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                            CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <table>
                                            <tr>
                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold; color: #000000;" 
                                                    width="100">
                                                    <b>Marka </b>
                                                </td>
                                                <td style="font-family: calibri; font-size: 10pt" width="200">
                                                    :<asp:Label ID="marka_adLabel" runat="server" Text='<%# Bind("marka_ad") %>' />
                                                </td>
                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold; color: #000000;" 
                                                    width="100">
                                                    <b>Model </b>
                                                </td>
                                                <td style="font-family: calibri; font-size: 10pt; color: #000000;" width="200">
                                                    :<asp:Label ID="model_adLabel" runat="server" Text='<%# Bind("model_ad") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold; color: #000000;" 
                                                    width="100">
                                                    <b>Model Yıl </b>
                                                </td>
                                                <td style="font-family: calibri; font-size: 10pt" width="200">
                                                    :<asp:Label ID="model_yiliLabel" runat="server" 
                                                        Text='<%# Bind("model_yili") %>' />
                                                </td>
                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold; color: #000000;" 
                                                    width="100">
                                                    <b>Plaka </b>
                                                </td>
                                                <td style="font-family: calibri; font-size: 10pt; color: #000000;" width="200">
                                                    :<asp:Label ID="plakaLabel" runat="server" Text='<%# Bind("plaka") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold; color: #000000;" 
                                                    width="100">
                                                    <b>Motor No </b>
                                                </td>
                                                <td style="font-family: calibri; font-size: 10pt" width="200">
                                                    :<asp:Label ID="motor_noLabel" runat="server" Text='<%# Bind("motor_no") %>' />
                                                </td>
                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold; color: #000000;" 
                                                    width="100">
                                                    <b>Şase No </b>
                                                </td>
                                                <td style="font-family: calibri; font-size: 10pt; color: #000000;" width="200">
                                                    :<asp:Label ID="sase_noLabel" runat="server" Text='<%# Bind("sase_no") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold; color: #000000;" 
                                                    width="100">
                                                    Kasko Kodu</td>
                                                <td style="font-family: calibri; font-size: 10pt" width="200">
                                                    :<asp:Label ID="kasko_koduLabel" runat="server" 
                                                        Text='<%# Bind("kasko_kodu") %>' />
                                                </td>
                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold; color: #000000;" 
                                                    width="100">
                                                    Kasko Değeri</td>
                                                <td style="font-family: calibri; font-size: 10pt; color: #000000;" width="200">
                                                    :<asp:Label ID="kaso_degeriLabel" runat="server" 
                                                        Text='<%# Bind("kaso_degeri") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold; color: #000000;" 
                                                    width="100">
                                                    Fatura Bedeli</td>
                                                <td style="font-family: calibri; font-size: 10pt" width="200">
                                                    :<asp:Label ID="fatura_bedeliLabel" runat="server" 
                                                        Text='<%# Bind("fatura_bedeli") %>' />
                                                </td>
                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold; color: #000000;" 
                                                    width="100">
                                                    Kullanım Amaç</td>
                                                <td style="font-family: calibri; font-size: 10pt; color: #000000;" width="200">
                                                    :<asp:Label ID="kullanim_amacLabel" runat="server" 
                                                        Text='<%# Bind("kullanim_amac") %>' />
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:FormView>
                            </td>
                        </tr>
                        <tr>
                            <td class="style54" width="10%" 
                                
                                style="font-family: calibri; font-size: 13pt; font-weight: bold; color: #F58220">
                                <strong>Müşteri Bilgileri</strong></td>
                            <td class="style34" width="5%">
                                &nbsp;</td>
                            <td class="style49" width="10%">
                                &nbsp;</td>
                            <td class="style34" width="15%">
                                &nbsp;</td>
                            <td class="style34">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style43" colspan="5">
                                <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource2" 
                                    Width="600px">
                                    <EditItemTemplate>
                                        firma_musteri:
                                        <asp:TextBox ID="firma_musteriTextBox" runat="server" 
                                            Text='<%# Bind("firma_musteri") %>' />
                                        <br />
                                        vergi_no:
                                        <asp:TextBox ID="vergi_noTextBox" runat="server" 
                                            Text='<%# Bind("vergi_no") %>' />
                                        <br />
                                        tel:
                                        <asp:TextBox ID="telTextBox" runat="server" Text='<%# Bind("tel") %>' />
                                        <br />
                                        gsm:
                                        <asp:TextBox ID="gsmTextBox" runat="server" Text='<%# Bind("gsm") %>' />
                                        <br />
                                        tc:
                                        <asp:TextBox ID="tcTextBox" runat="server" Text='<%# Bind("tc") %>' />
                                        <br />
                                        il_ad:
                                        <asp:TextBox ID="il_adTextBox" runat="server" Text='<%# Bind("il_ad") %>' />
                                        <br />
                                        ilce_ad:
                                        <asp:TextBox ID="ilce_adTextBox" runat="server" Text='<%# Bind("ilce_ad") %>' />
                                        <br />
                                        plaka_degisikligi:
                                        <asp:CheckBox ID="plaka_degisikligiCheckBox" runat="server" 
                                            Checked='<%# Bind("plaka_degisikligi") %>' />
                                        <br />
                                        adres:
                                        <asp:TextBox ID="adresTextBox" runat="server" Text='<%# Bind("adres") %>' />
                                        <br />
                                        rehinli_satis:
                                        <asp:CheckBox ID="rehinli_satisCheckBox" runat="server" 
                                            Checked='<%# Bind("rehinli_satis") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                            CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        firma_musteri:
                                        <asp:TextBox ID="firma_musteriTextBox" runat="server" 
                                            Text='<%# Bind("firma_musteri") %>' />
                                        <br />
                                        vergi_no:
                                        <asp:TextBox ID="vergi_noTextBox" runat="server" 
                                            Text='<%# Bind("vergi_no") %>' />
                                        <br />
                                        tel:
                                        <asp:TextBox ID="telTextBox" runat="server" Text='<%# Bind("tel") %>' />
                                        <br />
                                        gsm:
                                        <asp:TextBox ID="gsmTextBox" runat="server" Text='<%# Bind("gsm") %>' />
                                        <br />
                                        tc:
                                        <asp:TextBox ID="tcTextBox" runat="server" Text='<%# Bind("tc") %>' />
                                        <br />
                                        il_ad:
                                        <asp:TextBox ID="il_adTextBox" runat="server" Text='<%# Bind("il_ad") %>' />
                                        <br />
                                        ilce_ad:
                                        <asp:TextBox ID="ilce_adTextBox" runat="server" Text='<%# Bind("ilce_ad") %>' />
                                        <br />
                                        plaka_degisikligi:
                                        <asp:CheckBox ID="plaka_degisikligiCheckBox" runat="server" 
                                            Checked='<%# Bind("plaka_degisikligi") %>' />
                                        <br />
                                        adres:
                                        <asp:TextBox ID="adresTextBox" runat="server" Text='<%# Bind("adres") %>' />
                                        <br />
                                        rehinli_satis:
                                        <asp:CheckBox ID="rehinli_satisCheckBox" runat="server" 
                                            Checked='<%# Bind("rehinli_satis") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                            CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <table style="font-family: Calibri; font-size: 11pt">
                                            <tr>
                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold; color: #000000" 
                                                    width="100">
                                                    <b>TC </b>
                                                </td>
                                                <td style="font-family: calibri; font-size: 10pt; color: #000000" width="200">
                                                    :<asp:Label ID="tcLabel" runat="server" Text='<%# Bind("tc") %>' />
                                                </td>
                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold; color: #000000" 
                                                    width="100">
                                                    <b>&nbsp;Tel</b></td>
                                                <td style="font-family: calibri; font-size: 10pt; color: #000000" width="200">
                                                    :<asp:Label ID="telLabel" runat="server" Text='<%# Bind("tel") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold; color: #000000" 
                                                    width="100">
                                                    <b>Firma/Müşteri</b></td>
                                                <td style="font-family: calibri; font-size: 10pt; color: #000000" width="200">
                                                    :<asp:Label ID="firma_musteriLabel" runat="server" 
                                                        Text='<%# Bind("firma_musteri") %>' />
                                                </td>
                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold; color: #000000" 
                                                    width="100">
                                                    <b>&nbsp;Gsm</b></td>
                                                <td style="font-family: calibri; font-size: 10pt; color: #000000" width="200">
                                                    :<asp:Label ID="gsmLabel" runat="server" Text='<%# Bind("gsm") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold; color: #000000" 
                                                    width="100">
                                                    <b>Vergi No</b></td>
                                                <td style="font-family: calibri; font-size: 10pt; color: #000000" width="200">
                                                    :<asp:Label ID="vergi_noLabel" runat="server" Text='<%# Bind("vergi_no") %>' />
                                                </td>
                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold; color: #000000" 
                                                    width="100">
                                                    <b>&nbsp;İl</b></td>
                                                <td style="font-family: calibri; font-size: 10pt; color: #000000" width="200">
                                                    :<asp:Label ID="il_adLabel" runat="server" Text='<%# Bind("il_ad") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold; color: #000000" 
                                                    width="100">
                                                    Adres</td>
                                                <td style="font-family: calibri; font-size: 10pt; color: #000000" width="200">
                                                    <asp:Label ID="adresLabel" runat="server" Text='<%# Bind("adres") %>' />
                                                </td>
                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold; color: #000000" 
                                                    width="100">
                                                    <b>&nbsp;İçe</b></td>
                                                <td style="font-family: calibri; font-size: 10pt; color: #000000" width="200">
                                                    :<asp:Label ID="ilce_adLabel" runat="server" Text='<%# Bind("ilce_ad") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold; color: #000000" 
                                                    width="100">
                                                    <strong>Plaka Değişikliği</strong></td>
                                                <td style="font-family: calibri; font-size: 10pt; color: #000000" width="200">
                                                    <asp:CheckBox ID="plaka_degisikligiCheckBox" runat="server" 
                                                        Checked='<%# Bind("plaka_degisikligi") %>' Enabled="false" />
                                                </td>
                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold; color: #000000" 
                                                    width="100">
                                                    Rehinli Satış</td>
                                                <td style="font-family: calibri; font-size: 10pt; color: #000000" width="200">
                                                    <asp:CheckBox ID="rehinli_satisCheckBox" runat="server" 
                                                        Checked='<%# Bind("rehinli_satis") %>' Enabled="false" />
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:FormView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:mydb %>" 
                                    
                                    
                                    
                                    
                                    
                                    SelectCommand="SELECT araclar.firma_musteri, araclar.vergi_no, araclar.tel, araclar.gsm, araclar.tc, dbo.il.il_ad, dbo.ilce.ilce_ad, araclar.plaka_degisikligi, araclar.adres, araclar.rehinli_satis, araclar.aciklama FROM araclar INNER JOIN dbo.il ON araclar.il_id = dbo.il.il_id INNER JOIN dbo.ilce ON araclar.ilce_id = dbo.ilce.ilce_id WHERE (araclar.arac_id = @arac_id)">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="arac_id" QueryStringField="aracid" 
                                            Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style43" colspan="5">
                                <strong>Açıklama</strong></td>
                        </tr>
                        <tr>
                            <td class="style43" colspan="5">
                                <asp:FormView ID="FormView6" runat="server" DataSourceID="SqlDataSource2" 
                                    Width="600px">
                                    <EditItemTemplate>
                                        firma_musteri:
                                        <asp:TextBox ID="firma_musteriTextBox" runat="server" 
                                            Text='<%# Bind("firma_musteri") %>' />
                                        <br />
                                        vergi_no:
                                        <asp:TextBox ID="vergi_noTextBox" runat="server" 
                                            Text='<%# Bind("vergi_no") %>' />
                                        <br />
                                        tel:
                                        <asp:TextBox ID="telTextBox" runat="server" Text='<%# Bind("tel") %>' />
                                        <br />
                                        gsm:
                                        <asp:TextBox ID="gsmTextBox" runat="server" Text='<%# Bind("gsm") %>' />
                                        <br />
                                        tc:
                                        <asp:TextBox ID="tcTextBox" runat="server" Text='<%# Bind("tc") %>' />
                                        <br />
                                        il_ad:
                                        <asp:TextBox ID="il_adTextBox" runat="server" Text='<%# Bind("il_ad") %>' />
                                        <br />
                                        ilce_ad:
                                        <asp:TextBox ID="ilce_adTextBox" runat="server" Text='<%# Bind("ilce_ad") %>' />
                                        <br />
                                        plaka_degisikligi:
                                        <asp:CheckBox ID="plaka_degisikligiCheckBox" runat="server" 
                                            Checked='<%# Bind("plaka_degisikligi") %>' />
                                        <br />
                                        adres:
                                        <asp:TextBox ID="adresTextBox" runat="server" Text='<%# Bind("adres") %>' />
                                        <br />
                                        rehinli_satis:
                                        <asp:CheckBox ID="rehinli_satisCheckBox" runat="server" 
                                            Checked='<%# Bind("rehinli_satis") %>' />
                                        <br />
                                        aciklama:
                                        <asp:TextBox ID="aciklamaTextBox" runat="server" 
                                            Text='<%# Bind("aciklama") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                            CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        firma_musteri:
                                        <asp:TextBox ID="firma_musteriTextBox" runat="server" 
                                            Text='<%# Bind("firma_musteri") %>' />
                                        <br />
                                        vergi_no:
                                        <asp:TextBox ID="vergi_noTextBox" runat="server" 
                                            Text='<%# Bind("vergi_no") %>' />
                                        <br />
                                        tel:
                                        <asp:TextBox ID="telTextBox" runat="server" Text='<%# Bind("tel") %>' />
                                        <br />
                                        gsm:
                                        <asp:TextBox ID="gsmTextBox" runat="server" Text='<%# Bind("gsm") %>' />
                                        <br />
                                        tc:
                                        <asp:TextBox ID="tcTextBox" runat="server" Text='<%# Bind("tc") %>' />
                                        <br />
                                        il_ad:
                                        <asp:TextBox ID="il_adTextBox" runat="server" Text='<%# Bind("il_ad") %>' />
                                        <br />
                                        ilce_ad:
                                        <asp:TextBox ID="ilce_adTextBox" runat="server" Text='<%# Bind("ilce_ad") %>' />
                                        <br />
                                        plaka_degisikligi:
                                        <asp:CheckBox ID="plaka_degisikligiCheckBox" runat="server" 
                                            Checked='<%# Bind("plaka_degisikligi") %>' />
                                        <br />
                                        adres:
                                        <asp:TextBox ID="adresTextBox" runat="server" Text='<%# Bind("adres") %>' />
                                        <br />
                                        rehinli_satis:
                                        <asp:CheckBox ID="rehinli_satisCheckBox" runat="server" 
                                            Checked='<%# Bind("rehinli_satis") %>' />
                                        <br />
                                        aciklama:
                                        <asp:TextBox ID="aciklamaTextBox" runat="server" 
                                            Text='<%# Bind("aciklama") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                            CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <table style="font-family: Calibri; font-size: 11pt">
                                            <tr>
                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold; color: #000000" 
                                                    width="100">
                                                    <b>Açıklama</b></td>
                                                <td style="font-family: calibri; font-size: 10pt; color: #000000; width: 300px;" 
                                                    width="200">
                                                    :<asp:Label ID="aciklamaLabel" runat="server" Text='<%# Bind("aciklama") %>' />
                                                    <b>&nbsp;</b></td>
                                                <td style="font-family: calibri; font-size: 10pt; color: #000000" width="200">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                        <table class="style239">
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:FormView>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                                <a href="javascript: history.go(-1);">
                                <asp:Image ID="Image1" runat="server" ImageAlign="AbsBottom" 
                                    ImageUrl="~/image/geri.jpg" />
                                </a>
                                <asp:Button ID="btnkaydet" runat="server" BackColor="#666666" ForeColor="White" 
                                    Height="28px" onclick="btnkaydet_Click" Text="Onay" ValidationGroup="a" 
                                    Width="60px" />
                                <asp:Button ID="ImageButton3" runat="server" BackColor="#666666" 
                                    ForeColor="White" Height="28px" 
                    onclick="ImageButton3_Click" Text="İptal" 
                                    Width="80px" />
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mydb %>" SelectCommand="arac_bilgi" 
        SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:QueryStringParameter Name="arac_id" QueryStringField="aracid" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:mydb %>" 
                                    
                                    
                                    
                                    
        SelectCommand="SELECT aciklama, rezerve_eden, rezervasyon_tarih, rz_onay_veren, rz_onay_tarihi, st_onay, st_tarih, durumu, kayit_tarih FROM araclar WHERE (arac_id = @arac_id)">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="arac_id" QueryStringField="aracid" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
    </form>
</body>
</html>
