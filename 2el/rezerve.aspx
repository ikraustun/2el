<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rezerve.aspx.cs" Inherits="rezerve" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
            font-weight:bold;
        }
        .style29
        {
        }
        .style31
        {
            width: 15%;
        }
        .style54
        {
            font-size: medium;
            color: #F58220;
        }
        .style58
        {
            width: 781px;
        }
        .style59
        {
            height: 21px;
        }
        .style64
        {
            font-size: small;
            color: #F58220;
        }
        .style65
        {
            color: #F58220;
        }
        .style66
        {
            height: 21px;
            color: #F58220;
        }
                       
        
        .style78
        {
            width: 415px;
        }
                       
        
        .style80
        {
            width: 182px;
        }
                       
        
        .style81
        {
            width: 112px;
        }
                       
        
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style58">
    
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="72px" 
                     ImageUrl="~/image/2.EL.PNG" Width="245px" onclick="ImageButton5_Click1" />
    
            </td>
            <td align="right" valign="middle" width="10%">
    
                 <asp:LinkButton ID="Label5" runat="server" onclick="Label1_Click" 
                     Font-Bold="True" Font-Names="Calibri" Font-Size="12pt" Font-Underline="False" 
                     ForeColor="Black"></asp:LinkButton>
    
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel1" runat="server" Font-Names="arial" Font-Size="Small" 
                    GroupingText="Satış Föyü Bilgileri">
                    <table class="style1">
                        <tr>
                            <td colspan="4" class="style64">
                                <strong>Araç Bilgileri</strong></td>
                            <td class="style54">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="5">
                                <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" 
                                    Font-Names="arial" Font-Size="Small" Width="100%">
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
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                            CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <table width="730">
                                            <tr>
                                                <td width="130px">
                                                    Marka </td>
                                                <td class="style78">
                                                    :<asp:Label ID="marka_adLabel" runat="server" Text='<%# Bind("marka_ad") %>' />
                                                </td>
                                                <td width="140px">
                                                    <b>&nbsp;Model</b></td>
                                                <td width="200px">
                                                    &nbsp; :<asp:Label ID="model_adLabel" runat="server" Text='<%# Bind("model_ad") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="130px">
                                                    Model Yıl</td>
                                                <td class="style78">
                                                    :<asp:Label ID="model_yiliLabel" runat="server" 
                                                        Text='<%# Bind("model_yili") %>' />
                                                </td>
                                                <td width="140px">
                                                    <b>&nbsp;Plaka</b></td>
                                                <td width="200px">
                                                    &nbsp; :<asp:Label ID="plakaLabel" runat="server" Text='<%# Bind("plaka") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="130px">
                                                    Motor No</td>
                                                <td class="style78">
                                                    :<asp:Label ID="motor_noLabel" runat="server" Text='<%# Bind("motor_no") %>' />
                                                </td>
                                                <td width="140px">
                                                    <b></b>
                                                </td>
                                                <td width="200px">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td width="130px">
                                                    Şase No</td>
                                                <td class="style78">
                                                    :<asp:Label ID="sase_noLabel" runat="server" Text='<%# Bind("sase_no") %>' />
                                                </td>
                                                <td width="140px">
                                                    <b></b>
                                                </td>
                                                <td width="200px">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                        <br />
                                    </ItemTemplate>
                                </asp:FormView>
                            </td>
                        </tr>
                        <tr>
                            <td  width="100px" 
                                style="font-family: Arial, Helvetica, sans-serif; font-size: 10pt; font-weight: bold; color: #000000">
                                *Kasko Kodu </td>
                            <td  width="200px" 
                                style="font-family: Arial, Helvetica, sans-serif; font-size: 10pt; font-weight: bold; color: #000000">
                                <asp:TextBox ID="txtkaskokodu" runat="server" Width="128px" ValidationGroup="r"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtkaskokodu" ErrorMessage="Bu alan boş geçilemez." 
                                    Font-Names="Calibri" Font-Size="Small" ForeColor="#CC0000" ValidationGroup="r"></asp:RequiredFieldValidator>
                            </td>
                            <td  width="100px" 
                                style="font-family: Arial, Helvetica, sans-serif; font-size: 10pt; font-weight: bold; color: #000000">
                                *Fatura Bedeli</td>
                            <td  width="200px" 
                                
                                style="font-family: Arial, Helvetica, sans-serif; font-size: 10pt; font-weight: bold; color: #000000" 
                                colspan="2">
                                <asp:TextBox ID="txtfaturabedeli" runat="server" Width="128px" 
                                    ValidationGroup="r" ontextchanged="txtfaturabedeli_TextChanged"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtfaturabedeli" ErrorMessage="Bu alan boş geçilemez." 
                                    Font-Names="Calibri" Font-Size="Small" ForeColor="#CC0000" ValidationGroup="r"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 10pt; font-weight: bold; color: #000000" 
                                width="100px">
                                *Kasko Değeri</td>
                            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 10pt; font-weight: bold; color: #000000" 
                                width="200px">
                                <asp:TextBox ID="txtkaskodegeri" runat="server" Width="128px" 
                                    ValidationGroup="r"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtkaskodegeri" ErrorMessage="Bu alan boş geçilemez." 
                                    Font-Names="Calibri" Font-Size="Small" ForeColor="#CC0000" ValidationGroup="r"></asp:RequiredFieldValidator>
                            </td>
                            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 10pt; font-weight: bold; color: #000000" 
                                width="100px">
                                *Kullanım Amacı</td>
                            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 10pt; font-weight: bold; color: #000000" 
                                width="200px" colspan="2">
                                <asp:DropDownList ID="dptip" runat="server">
                                    <asp:ListItem Value="0">Seçiniz.</asp:ListItem>
                                    <asp:ListItem>Hususi</asp:ListItem>
                                    <asp:ListItem>Ticari</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="dptip" ErrorMessage="Bu alan boş geçilemez." 
                                    Font-Names="Calibri" Font-Size="Small" ForeColor="#CC0000" InitialValue="0" 
                                    ValidationGroup="r"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style65" width="100px">
                                Müşteri Bilgileri</td>
                            <td width="200px">
                                &nbsp;</td>
                            <td width="100px">
                                &nbsp;</td>
                            <td width="200px">
                                &nbsp;</td>
                            <td width="40%">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td width="100px">
                                *Müşteri Tipi :</td>
                            <td  width="200px">
                                <asp:DropDownList ID="dpmustip" runat="server" AutoPostBack="True" 
                                    onselectedindexchanged="dpmustip_SelectedIndexChanged" ValidationGroup="a">
                                    <asp:ListItem Value="0">Şahıs</asp:ListItem>
                                    <asp:ListItem Value="1">Firma</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td width="100px">
                                &nbsp;Telefon :</td>
                            <td  width="200px">
                                <asp:TextBox ID="txttel" runat="server" ValidationGroup="a" onkeydown="javascript:backspacerDOWN(this,event);" 
                                        onkeyup="javascript:backspacerUP(this,event);" Width="128px"></asp:TextBox>
                            </td>
                            <td  width="40%">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td  width="100px">
                                <b>
                                <asp:Label ID="Label1" runat="server" Text="*Ad Soyad :"></asp:Label>
                                <asp:Label ID="Label2" runat="server" Text="*Firma Adı :"></asp:Label>
                                &nbsp;</b></td>
                            <td  width="200px">
                                <asp:TextBox ID="txtad" runat="server" Width="128px"></asp:TextBox>
                                <asp:TextBox ID="txtfirma" runat="server" Width="128px"></asp:TextBox>
                                <asp:Label ID="lbladfirma" runat="server" Font-Names="Calibri" 
                                    Font-Size="Small" ForeColor="#CC0000" Text="*"></asp:Label>
                            </td>
                            <td  width="100px">
                                *Gsm :</td>
                            <td  width="200px" colspan="2">
                                <asp:TextBox ID="txtgsm" runat="server" ValidationGroup="r" onkeydown="javascript:backspacerDOWN(this,event);" 
                                        onkeyup="javascript:backspacerUP(this,event);" Width="128px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="txtgsm" ErrorMessage="Bu alan boş geçilemez." 
                                    Font-Names="Calibri" Font-Size="Small" ForeColor="#CC0000" ValidationGroup="r"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td  width="100px">
                                <b>
                                <asp:Label ID="Label3" runat="server" Text="*Tc :"></asp:Label>
                                <asp:Label ID="Label4" runat="server" Text="*Vergi No :"></asp:Label>
                                </b>
                            </td>
                            <td  width="200px">
                                <asp:TextBox ID="txttc" runat="server" MaxLength="11" 
                                    Width="128px"></asp:TextBox>
                                <asp:TextBox ID="txtvergino" runat="server" MaxLength="11" 
                                    Width="128px"></asp:TextBox>
                            </td>
                            <td  width="100px">
                                &nbsp;*İl :</td>
                            <td  width="200px" colspan="2">
                                <asp:DropDownList ID="dpil" runat="server"
                                    DataTextField="il_ad" DataValueField="il_id" 
                                    onselectedindexchanged="dpil_SelectedIndexChanged" AutoPostBack="True" 
                                    ValidationGroup="r" Width="128px">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="dpil" ErrorMessage="Bu alan boş geçilemez." 
                                    Font-Names="Calibri" Font-Size="Small" ForeColor="#CC0000" InitialValue="0" 
                                    ValidationGroup="r"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td width="100px" valign="top">
                                &nbsp;Adres :</td>
                            <td  width="200px" valign="top">
                                <asp:TextBox ID="txtadres" runat="server" ValidationGroup="a" Height="35px" 
                                    Width="128px"></asp:TextBox>
                            </td>
                            <td width="100px" valign="top">
                                &nbsp;*İlçe :</td>
                            <td  width="200px" valign="top">
                                <asp:DropDownList ID="dpilce" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td valign="top" width="40%">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td width="100px" class="style59">
                                &nbsp;Plaka Değişikliği:</td>
                            <td width="200px" class="style59">
                                <asp:CheckBox ID="chplaka" runat="server" />
                                </td>
                            <td  width="100px" class="style59">
                                &nbsp;Rehinli Satış:</td>
                            <td  width="200px" class="style59">
                                <asp:CheckBox ID="chrehin" runat="server" />
                            </td>
                            <td  width="40%" class="style59">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style66" width="100px">
                                Ödeme Bilgileri</td>
                            <td class="style59" width="200px">
                            </td>
                            <td class="style59" width="100px">
                            </td>
                            <td class="style59" width="200px">
                            </td>
                            <td class="style59" width="40%">
                            </td>
                        </tr>
                        <tr>
                            <td  width="100px">
                                Toplam :</td>
                            <td  width="200px">
                                <asp:Label ID="lblodeme" runat="server" Font-Bold="True" Font-Names="arial" 
                                    Font-Size="Medium">0</asp:Label>
                            </td>
                            <td  width="100px">
                                &nbsp;</td>
                            <td  width="200px">
                                &nbsp;</td>
                            <td  width="40%">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td  width="100px">
                                *Araç Bedeli :</td>
                            <td  width="200px" style="margin-left: 40px">
                                <asp:TextBox ID="txtaracbedel" runat="server" 
                                  ontextchanged="txtaracbedel_TextChanged" 
                                    ValidationGroup="r" AutoPostBack="True" Text="0" Width="128px" ></asp:TextBox>
                                <asp:Label ID="lblaracbedel" runat="server" Font-Names="Calibri" 
                                    Font-Size="Small" ForeColor="#CC0000" Text="Bu alan boş geçilemez."></asp:Label>
                            </td>
                            <td  width="100px">
                                &nbsp;Sigorta Bedeli :</td>
                            <td  width="200px">
                                &nbsp;
                                <asp:TextBox ID="txtsigortabedel" runat="server" 
                                    ontextchanged="txtsigortabedel_TextChanged" 
                                    ValidationGroup="a" AutoPostBack="True" Width="128px">0</asp:TextBox>
                            </td>
                            <td  width="40%">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td  width="100px">
                                &nbsp;Kasko Bedeli :</td>
                            <td  width="200px">
                                <asp:TextBox ID="txtkasobedel" runat="server" 
                                    ontextchanged="txtkasobedel_TextChanged" 
                                    ValidationGroup="a" AutoPostBack="True" Width="128px">0</asp:TextBox>
                            </td>
                            <td  width="100px">
                                &nbsp;Muayene Bedeli :</td>
                            <td  width="200px">
                                &nbsp;
                                <asp:TextBox ID="txtmuayenebedel" runat="server" 
                                    ontextchanged="txtmuayenebedel_TextChanged" 
                                    ValidationGroup="a" AutoPostBack="True" Width="128px">0</asp:TextBox>
                            </td>
                            <td  width="40%">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td  width="100px">
                                &nbsp;Toplam&nbsp; Tutar :</td>
                            <td  width="200px">
                                <asp:Label ID="lbltutar" runat="server" Font-Bold="True" Font-Names="arial" 
                                    Font-Size="Medium" style="color: #F58220">0</asp:Label>
                            </td>
                            <td  width="100px">
                                &nbsp;</td>
                            <td  width="200px">
                                &nbsp;</td>
                            <td  width="40%">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td  width="100px">
                                &nbsp;</td>
                            <td  width="200px">
                                &nbsp;</td>
                            <td class="style29" width="100px">
                                &nbsp;</td>
                            <td class="style31" width="200px">
                                &nbsp;</td>
                            <td class="style31" width="40%">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="5">
                                <table style="width: 576px">
                                    <tr>
                                        <td class="style81" 
                                            style="font-family: calibri; font-size: 11pt; font-weight: bold; color: #000000">
                                            &nbsp;Nakit / Elden</td>
                                        <td style="font-weight: normal; font-size: 9pt; font-family: arial, Helvetica, sans-serif;">
                                            &nbsp;</td>
                                        <td style="font-weight: normal; font-size: 9pt; font-family: arial, Helvetica, sans-serif;" 
                                            class="style80">
                                            &nbsp;</td>
                                        <td style="font-weight: normal; font-size: 9pt; font-family: arial, Helvetica, sans-serif;">
                                            Tutar<br />
                                            <asp:TextBox ID="txtntutar" runat="server" AutoPostBack="True" 
                                                ontextchanged="txtntutar_TextChanged" ValidationGroup="a" Width="100px" 
                                                Height="15px" style="text-align: right">0</asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style81" 
                                            style="font-family: calibri; font-size: 11pt; font-weight: bold; color: #000000">
                                            &nbsp;Nakit / Banka</td>
                                        <td style="font-weight: normal; font-size: 9pt; font-family: arial, Helvetica, sans-serif;">
                                            <br />
                                        </td>
                                        <td style="font-weight: normal; font-size: 9pt; font-family: arial, Helvetica, sans-serif;" 
                                            class="style80">
                                            Banka<br />
                                            <asp:TextBox ID="txtnbbanka" runat="server" 
                                                ontextchanged="txtkbanka_TextChanged" ValidationGroup="a" Width="128px" 
                                                Height="15px"></asp:TextBox>
                                        </td>
                                        <td style="font-weight: normal; font-size: 9pt; font-family: arial, Helvetica, sans-serif;">
                                            Tutar<br />
                                            <asp:TextBox ID="txtnbtutar" runat="server" AutoPostBack="True" 
                                                ontextchanged="txtnbtutar_TextChanged" ValidationGroup="a" Width="100px" 
                                                Height="15px" style="text-align: right">0</asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style81" 
                                            style="font-family: calibri; font-size: 11pt; font-weight: bold; color: #000000">
                                            &nbsp;Kredi</td>
                                        <td style="font-weight: normal; font-size: 9pt; font-family: arial, Helvetica, sans-serif;">
                                            Banka<br />
                                            <asp:TextBox ID="txtkbanka" runat="server" 
                                                ontextchanged="txtkbanka_TextChanged" ValidationGroup="a" Height="15px" 
                                                Width="128px"></asp:TextBox>
                                        </td>
                                        <td style="font-weight: normal; font-size: 9pt; font-family: arial, Helvetica, sans-serif;" 
                                            class="style80">
                                            Tarih<br />
                                            <asp:TextBox ID="txtktarih" runat="server" TextMode="Date" ValidationGroup="a" 
                                                Width="128px" Height="18px"></asp:TextBox>
                                        </td>
                                        <td style="font-weight: normal; font-size: 9pt; font-family: arial, Helvetica, sans-serif;">
                                            Tutar<br />
                                            <asp:TextBox ID="txtktutar" runat="server" AutoPostBack="True" 
                                                ontextchanged="txtktutar_TextChanged" ValidationGroup="a" Width="100px" 
                                                Height="15px" style="text-align: right">0</asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style81" 
                                            style="font-family: calibri; font-size: 11pt; font-weight: bold; color: #000000">
                                            &nbsp;Çek
                                        </td>
                                        <td style="font-weight: normal; font-size: 9pt; font-family: arial, Helvetica, sans-serif;">
                                            Banka<br />
                                            <asp:TextBox ID="txtcbanka" runat="server" ValidationGroup="a" Height="15px" 
                                                Width="128px"></asp:TextBox>
                                        </td>
                                        <td style="font-weight: normal; font-size: 9pt; font-family: arial, Helvetica, sans-serif;" 
                                            class="style80">
                                            Tarih<br />
                                            <asp:TextBox ID="txtctarih" runat="server" TextMode="Date" ValidationGroup="a" 
                                                Width="128px" Height="18px"></asp:TextBox>
                                        </td>
                                        <td style="font-weight: normal; font-size: 9pt; font-family: arial, Helvetica, sans-serif;">
                                            Tutar<br />
                                            <asp:TextBox ID="txtctutar" runat="server" AutoPostBack="True" 
                                                ontextchanged="txtctutar_TextChanged" ValidationGroup="a" Width="100px" 
                                                Height="15px" style="text-align: right">0</asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style81" 
                                            style="font-family: calibri; font-size: 11pt; font-weight: bold; color: #000000">
                                            &nbsp;Takas
                                        </td>
                                        <td style="font-weight: normal; font-size: 9pt; font-family: arial, Helvetica, sans-serif;">
                                            Mrk/Mdl<br />
                                            <asp:TextBox ID="txttakas" runat="server" ValidationGroup="a" Height="15px" 
                                                Width="128px"></asp:TextBox>
                                        </td>
                                        <td style="font-weight: normal; font-size: 9pt; font-family: arial, Helvetica, sans-serif;" 
                                            class="style80">
                                            Tarih<br />
                                            <asp:TextBox ID="txtttarih" runat="server" TextMode="Date" ValidationGroup="a" 
                                                Width="128px" Height="18px"></asp:TextBox>
                                        </td>
                                        <td style="font-weight: normal; font-size: 9pt; font-family: arial, Helvetica, sans-serif;">
                                            Tutar<br />
                                            <asp:TextBox ID="txtttutar" runat="server" AutoPostBack="True" 
                                                ontextchanged="txtttutar_TextChanged" 
                                                ValidationGroup="a" Width="100px" Height="15px" style="text-align: right">0</asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td  width="100px">
                                &nbsp;Açıklama</td>
                            <td >
                                <asp:TextBox ID="txtaciklama" runat="server" Height="68px" TextMode="MultiLine" 
                                    Width="285px"></asp:TextBox>
                            </td>
                            <td >
                                &nbsp;</td>
                            <td >
                                &nbsp;</td>
                            <td >
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td  width="100px">   <a onclick="javascript:window.history.go(-2);">
                      <asp:Image ID="Image1" runat="server" ImageUrl="~/image/geri.jpg" 
                          ImageAlign="AbsBottom" /></a></td>
                            <td >
                                <asp:Button ID="btnkaydet" runat="server" onclick="btnkaydet_Click" 
                                    Text="Kaydet" ValidationGroup="r" BackColor="#666666" ForeColor="White" 
                                    Height="28px" Width="80px" />
                                &nbsp;
                                <asp:Button ID="btniptal" runat="server" onclick="btniptal_Click" 
                                    Text="İptal" BackColor="#666666" ForeColor="White" Width="80px" 
                                    Height="28px" />
                            </td>
                            <td>
                                <br />
                            </td>
                            <td >
                                <br />
                            </td>
                            <td >
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
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
    </form>
</body>
</html>
