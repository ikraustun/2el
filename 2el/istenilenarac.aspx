<%@ Page Language="C#" AutoEventWireup="true" CodeFile="istenilenarac.aspx.cs" Inherits="istenilenarac" %>

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

        .style1
        {
            width: 100%;
           
        }
    
        .style11
        {
            width: 69px;
        }
        .style5
        {
            width: 9px;
        }
        .style18
        {
            width: 87px;
        }
        .style12
        {
            height: 23px;
            width: 69px;
        }
        .style6
        {
            height: 23px;
            width: 9px;
        }
        .style19
        {
            height: 23px;
            width: 87px;
        }
        .style16
        {
            height: 23px;
            width: 14px;
        }
        .style20
        {
            width: 14px;
        }
        .style21
        {
            height: 15px;
            width: 69px;
        }
        .style22
        {
            height: 15px;
            width: 9px;
        }
        .style23
        {
            height: 15px;
            width: 87px;
        }
        .style24
        {
            height: 15px;
            width: 14px;
        }
        .style27
        {
            height: 15px;
            width: 5px;
        }
        .style28
        {
            width: 5px;
        }
        .style29
        {
            width: 123px;
        }
        .style30
        {
            height: 23px;
            width: 5px;
        }
        .style31
        {
            height: 23px;
            width: 123px;
        }
        .style32
        {
            height: 15px;
            width: 123px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td>
                 <asp:ImageButton ID="ImageButton2" runat="server" Height="85px" 
                     ImageUrl="~/image/2.EL.PNG" Width="273px" />
             </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
        <asp:Panel ID="Panel1"  runat="server" 
            GroupingText="Araç Ara" Width="50%" Font-Bold="True" Font-Names="Calibri" 
                Font-Size="Small" ForeColor="White"  Height="130px" style="color: #000000">
            <table class="style1" style="font-family: Calibri; font-size: x-small">
                <tr>
                    <td class="style28">
                        &nbsp;</td>
                    <td class="style29">
                        Marka</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td class="style11">
                        Model</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td class="style18">
                        Model Yılı&nbsp;&nbsp;</td>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style11">
                        Fiyat</td>
                </tr>
                <tr>
                    <td class="style30">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="dpmarka" ErrorMessage="*" InitialValue="1"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style31">
                        <asp:DropDownList ID="dpmarka" runat="server" 
                            DataTextField="marka_ad" DataValueField="marka_id" Font-Names="Calibri" 
                            Font-Size="X-Small" Height="23px" style="margin-bottom: 0px" Width="130px" 
                            AutoPostBack="True" onselectedindexchanged="dpmarka_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="dpmodel" ErrorMessage="*" InitialValue="1"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style12">
                        <asp:DropDownList ID="dpmodel" runat="server" 
                            Font-Names="Calibri" Font-Size="X-Small" Height="23px" Width="130px" DataTextField="model_ad" 
                            DataValueField="model_id">
                        </asp:DropDownList>
                    </td>
                    <td class="style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="dpmodelyil" ErrorMessage="*" InitialValue="0"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style19">
                        <asp:DropDownList ID="dpmodelyil" runat="server" Font-Names="Calibri" 
                            Font-Size="X-Small" Height="23px" Width="100px">
                            <asp:ListItem Value=" 0">Seçiniz</asp:ListItem>
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
                    <td class="style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtfiyat" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style12">
                        <asp:TextBox ID="txtfiyat" runat="server" Height="23px" Width="100px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style27">
                        &nbsp;</td>
                    <td class="style32">
                        Müşteri Adı</td>
                    <td class="style22">
                        </td>
                    <td class="style21">
                        Telefon</td>
                    <td class="style22">
                        </td>
                    <td class="style23">
                        Açıklama</td>
                    <td class="style24">
                        </td>
                    <td class="style21">
                        </td>
                </tr>
                <tr>
                    <td class="style30">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="txtad" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style31">
                        <asp:TextBox ID="txtad" runat="server" Width="130px"></asp:TextBox>
                    </td>
                    <td class="style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="txttel" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style12">
                        <asp:TextBox ID="txttel" runat="server" Width="130px" onkeydown="javascript:backspacerDOWN(this,event);" 
                                        onkeyup="javascript:backspacerUP(this,event);" ></asp:TextBox>
                    </td>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style19">
                        <asp:TextBox ID="txtaciklama" runat="server" Height="41px" TextMode="MultiLine" 
                            Width="100px"></asp:TextBox>
                    </td>
                    <td class="style16">
                        &nbsp;</td>
                    <td class="style12">
                        <asp:Button ID="btnekle" runat="server" BackColor="#F58220" ForeColor="White" 
                            Height="28px" onclick="btnekle_Click" Text="Ekle" Width="80px" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
                <br />
                <br />
                <asp:GridView ID="gliste" runat="server" Width="100%" 
                    AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
                    <Columns>
                        <asp:BoundField DataField="Danışman" HeaderText="Danışman" 
                            SortExpression="Danışman" />
                        <asp:BoundField DataField="Marka" HeaderText="Marka" SortExpression="Marka" />
                        <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                        <asp:BoundField DataField="Model Yılı" HeaderText="Model Yılı" 
                            SortExpression="Model Yılı" />
                        <asp:BoundField DataField="Fiyat" HeaderText="Fiyat" SortExpression="Fiyat" />
                        <asp:BoundField DataField="Müşteri Ad" HeaderText="Müşteri Ad" 
                            SortExpression="Müşteri Ad" />
                        <asp:BoundField DataField="Tel" HeaderText="Tel" SortExpression="Tel" />
                        <asp:BoundField DataField="Açıklama" HeaderText="Açıklama" 
                            SortExpression="Açıklama" />
                        <asp:BoundField DataField="Kayıt Tarihi" HeaderText="Kayıt Tarihi" 
                            ReadOnly="True" SortExpression="Kayıt Tarihi" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:mydb %>" 
                    SelectCommand="istenilenaraclar" SelectCommandType="StoredProcedure">
                </asp:SqlDataSource>
                    <br />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
