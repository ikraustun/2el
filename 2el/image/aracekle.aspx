<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aracekle.aspx.cs" Inherits="aracekle" %>





<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Calendar1
        {
            position:absolute;
            top: 371px;
            left: 124px;
            height: 128px;
        }
           #a
        {
            position:absolute;
            margin-top:0px;
            right:50px;
        }
        .style1
        {
            width: 100%;
            height:100%;
        }
        .style2
        {
            width: 108px;
        }
        
        .style8
        {
            width: 798px;
        }
        
        .style9
        {
            width: 6px;
        }
        .style11
        {
            width: 140px;
        }
                
        .style14
        {
            font-size: xx-small;
            width: 66px;
        }
        .style15
        {
            color: #000000;
            width: 66px;
        }
        .style16
        {
            width: 66px;
        }
                
        

         .style7
         {
             width: 24px;
             height: 47px;
         }
         .roundedTwo {
 font-family:Arial;
      font-size:12pt;
      font-weight:bold;
  label {
    width: 21px;
    height: 31px;
    position: absolute;
    top: 6px;
    left: 4px;
    cursor: pointer;
    background: linear-gradient(top, #222 0%, #45484d 100%);
    border-radius: 20px;
    box-shadow: inset 0px 1px 1px rgba(0,0,0,0.5), 0px 1px 0px rgba(255,255,255,1);
    &:after {
      content: '';
      width: 9px;
      height: 5px;
      position: absolute;
      top: 9px;
      left: 4px;
      border: 3px solid #fcfff4;
      border-top: none;
      border-right: none;
      background: transparent;
      opacity: 0;
      transform: rotate(-45deg);
      
    }
    &:hover::after {
      opacity: 0.3;
    }
  }
  input[type=checkbox] {
    visibility: hidden;
    &:checked + label:after {
      opacity: 1;
    } 
  }   
}
                         
         .style13
         {
             width: 24px;
             height: 123px;
         }
         .style21
         {
             width: 36px;
             height: 102px;
         }
         .style23
         {
             width: 358px;
             height: 102px;
         }
         .style17
         {
             width: 36px;
             height: 71px;
         }
         .style19
         {
             width: 358px;
             height: 71px;
         }
         .style46
        {
            font-size: xx-small;
            width: 36px;
        }
        .style48
        {
            width: 40px;
            height: 102px;
        }
        .style49
        {
            width: 40px;
            height: 71px;
        }
        .style52
        {
            color: #000000;
            width: 40px;
        }
        .style70
        {
            width: 40px;
        }
        .style72
        {
            color: #000000;
            width: 358px;
        }
        .style82
        {
            width: 36px;
        }
        .style86
        {
            width: 358px;
        }
        .style87
        {
            width: 62px;
            height: 47px;
        }
        .style88
        {
            width: 62px;
            height: 123px;
        }
        .style89
        {
            width: 62px;
            height: 102px;
        }
        .style90
        {
            width: 62px;
            height: 71px;
        }
        .style92
        {
            width: 62px;
        }
        .style93
        {
            width: 24px;
            height: 102px;
        }
        .style94
        {
            width: 24px;
            height: 71px;
        }
        .style95
        {
            width: 24px;
        }
        .style96
        {
            width: 62px;
            height: 65px;
        }
        .style97
        {
            width: 24px;
            height: 65px;
        }
        .style98
        {
            width: 36px;
            height: 65px;
        }
        .style99
        {
            width: 40px;
            height: 65px;
        }
        .style100
        {
            width: 358px;
            height: 65px;
        }
        .style101
        {
            width: 62px;
            height: 15px;
        }
        .style102
        {
            width: 24px;
            height: 15px;
        }
        .style103
        {
            width: 36px;
            height: 15px;
        }
        .style104
        {
            width: 40px;
            height: 15px;
        }
        .style105
        {
            width: 358px;
            height: 15px;
        }
                         
        </style>
</head>
<body>
    <form id="form1" runat="server">
     <table class="style1">
         <tr>
             <td>
                 <asp:ImageButton ID="ImageButton1" runat="server" Height="85px" 
                     ImageUrl="~/image/2.EL.PNG" Width="273px" />
             </td>
             <td class="style8">
    <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="Small" Height="21px" onclick="Button2_Click" 
            Text="Çıkış" style="text-align: left; margin-left: 0px" />
             </td>
         </tr>
         <tr>
             <td colspan="2">
                 <asp:Panel ID="Panel1" runat="server" Font-Bold="True" Font-Italic="False" 
                     Font-Names="arial" Font-Size="Small" GroupingText="Araç Bilgileri">
                     <table class="style1">
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 *Marka :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                     ControlToValidate="dpmarka" ErrorMessage="*" InitialValue="1" 
                                     ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style11">
                                 <asp:DropDownList ID="dpmarka" runat="server" Width="140px" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="Small" Height="23px" 
                        onselectedindexchanged="dpmarka_SelectedIndexChanged" AutoPostBack="True" 
                                     ValidationGroup="a">
                                 </asp:DropDownList>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                             <td rowspan="22">
                               
                                 <table class="style1" 
                                     
                                     style="background-image: url('image/ekspertiz.png'); background-repeat: no-repeat;" 
                                     width="50%">
                                     <tr>
                                         <td class="style87">
                                         </td>
                                         <td class="style7">
                                             <asp:CheckBox ID="c1" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" B" />
                                             <br />
                                         </td>
                                         <td class="style82">
                                             <asp:CheckBox ID="c2" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" D" />
                                             <br />
                                         </td>
                                         <td class="style70">
                                         </td>
                                         <td class="style86">
                                             &nbsp;</td>
                                     </tr>
                                     <tr>
                                         <td class="style88">
                                             <asp:CheckBox ID="c3" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" B" />
                                             <br />
                                             <asp:CheckBox ID="c4" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" D" />
                                         </td>
                                         <td class="style13">
                                             <br />
                                             <asp:CheckBox ID="c19" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" B" />
                                         </td>
                                         <td class="style46">
                                             <br />
                                             <asp:CheckBox ID="c20" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" D" />
                                         </td>
                                         <td class="style52">
                                             &nbsp;<asp:CheckBox ID="c5" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" B" />
                                             <br />
                                             &nbsp;<asp:CheckBox ID="c6" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" D" />
                                             <br />
                                         </td>
                                         <td class="style72">
                                             &nbsp;</td>
                                     </tr>
                                     <tr>
                                         <td class="style89">
                                             <asp:CheckBox ID="c7" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" B" />
                                             <br />
                                             <asp:CheckBox ID="c8" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" D" />
                                         </td>
                                         <td class="style93">
                                             <br />
                                             <br />
                                             <br />
                                             <br />
                                             <asp:CheckBox ID="c21" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" B" />
                                         </td>
                                         <td class="style21">
                                             &nbsp;<br />
                                             <br />
                                             <br />
                                             <br />
                                             <asp:CheckBox ID="c22" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" D" />
                                         </td>
                                         <td class="style48">
                                             &nbsp;<asp:CheckBox ID="c9" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" B" />
                                             <br />
                                             &nbsp;<asp:CheckBox ID="c10" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" D" />
                                         </td>
                                         <td class="style23">
                                             &nbsp;</td>
                                     </tr>
                                     <tr>
                                         <td class="style90">
                                             &nbsp;<asp:CheckBox ID="c11" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" B" />
                                             <br />
                                             <asp:CheckBox ID="c12" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" D" />
                                         </td>
                                         <td class="style94">
                                         </td>
                                         <td class="style17">
                                         </td>
                                         <td class="style49">
                                             &nbsp;<asp:CheckBox ID="c13" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" B" />
                                             <br />
                                             &nbsp;<asp:CheckBox ID="c14" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" D" />
                                         </td>
                                         <td class="style19">
                                             &nbsp;</td>
                                     </tr>
                                     <tr>
                                         <td class="style96">
                                             <asp:CheckBox ID="c15" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" B" />
                                             <br />
                                             <asp:CheckBox ID="c16" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" D" />
                                         </td>
                                         <td class="style97">
                                             <asp:CheckBox ID="c23" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" B" />
                                         </td>
                                         <td class="style98">
                                             <asp:CheckBox ID="c24" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" D" />
                                         </td>
                                         <td class="style99">
                                             &nbsp;<asp:CheckBox ID="c17" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" B" />
                                             <br />
                                             &nbsp;<asp:CheckBox ID="c18" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" D" />
                                         </td>
                                         <td class="style100">
                                         </td>
                                     </tr>
                                     <tr>
                                         <td class="style101">
                                             </td>
                                         <td class="style102">
                                         </td>
                                         <td class="style103">
                                         </td>
                                         <td class="style104">
                                             <br />
                                         </td>
                                         <td class="style105">
                                         </td>
                                     </tr>
                                     <tr>
                                         <td class="style92">
                                             &nbsp;</td>
                                         <td class="style95">
                                             <asp:CheckBox ID="c25" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" B" />
                                         </td>
                                         <td class="style82">
                                             <asp:CheckBox ID="c26" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" D" />
                                         </td>
                                         <td class="style70">
                                             &nbsp;</td>
                                         <td class="style86">
                                             &nbsp;</td>
                                     </tr>
                                 </table>
                               
                             </td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 *Model:</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 &nbsp;</td>
                             <td class="style11">
                                 <asp:DropDownList ID="dpmodel" runat="server" Width="140px" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="Small" Height="22px" ValidationGroup="a">
                                 </asp:DropDownList>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 *Plaka :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                     ControlToValidate="txtplaka" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style11">
                                 <asp:TextBox ID="txtplaka" runat="server" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="Small" Height="20px" Width="140px" ValidationGroup="a"></asp:TextBox>
                             </td>
                             <td class="style14">
                                 *Örn;34aa123</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 *Satış Fiyat :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                     ControlToValidate="txtsatısfiyat" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style11">
                                 <asp:TextBox ID="txtsatısfiyat" runat="server" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="Small" Height="20px" Width="140px" ValidationGroup="a"></asp:TextBox>
                             </td>
                             <td class="style16">
                                 <asp:DropDownList ID="dpbirim" runat="server" Height="16px" Width="54px" 
                                     ValidationGroup="a">
                                     <asp:ListItem>TL</asp:ListItem>
                                     <asp:ListItem Value="EU">€</asp:ListItem>
                                     <asp:ListItem Value="USD">$</asp:ListItem>
                                 </asp:DropDownList>
                             </td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 *Alış Fiyat :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                     ControlToValidate="txtalisfiyat" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style11">
                                 <asp:TextBox ID="txtalisfiyat" runat="server" Font-Bold="True" 
                        Font-Names="Calibri" Font-Size="Small" Height="19px" Width="140px" ValidationGroup="a"></asp:TextBox>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 *Model Yılı :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                     ControlToValidate="dpmodelyil" ErrorMessage="*" InitialValue="0" 
                                     ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style11">
                                 <asp:DropDownList ID="dpmodelyil" runat="server" Height="22px" Width="140px" 
                        Font-Bold="True" Font-Names="Calibri" Font-Size="Small" ValidationGroup="a">
                                     <asp:ListItem Value="0">Seçiniz</asp:ListItem>
                                     <asp:ListItem>2011</asp:ListItem>
                                     <asp:ListItem>2012</asp:ListItem>
                                     <asp:ListItem>2013</asp:ListItem>
                                 </asp:DropDownList>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 *Km :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                     ControlToValidate="txtkm" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style11">
                                 <asp:TextBox ID="txtkm" runat="server" Font-Bold="True" 
                        Font-Names="Calibri" Font-Size="Small" Height="19px" Width="140px" ValidationGroup="a"></asp:TextBox>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 *Renk :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                     ControlToValidate="dprenk" ErrorMessage="*" InitialValue="0" 
                                     ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style11">
                                 <asp:DropDownList ID="dprenk" runat="server" Width="140px" Font-Bold="True" 
                        Font-Names="Calibri" Font-Size="Small" Height="22px" ValidationGroup="a">
                                     <asp:ListItem Value="0">Seçiniz</asp:ListItem>
                                     <asp:ListItem>mavi</asp:ListItem>
                                     <asp:ListItem>mor</asp:ListItem>
                                 </asp:DropDownList>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 *Vites :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                     ControlToValidate="dpvites" ErrorMessage="*" InitialValue="0" 
                                     ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style11">
                                 <asp:DropDownList ID="dpvites" runat="server" Font-Bold="True" 
                        Font-Names="Calibri" Font-Size="Small" Height="21px" Width="140px" ValidationGroup="a">
                                     <asp:ListItem Value="0">Seçiniz</asp:ListItem>
                                     <asp:ListItem>Otomatik</asp:ListItem>
                                     <asp:ListItem>Manuel</asp:ListItem>
                                 </asp:DropDownList>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 *Motor :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                     ControlToValidate="txtmotor" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style11">
                                 <asp:TextBox ID="txtmotor" runat="server" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="Small" Height="20px" Width="140px" ValidationGroup="a"></asp:TextBox>
                             </td>
                             <td class="style15">
                                 cm<sup><span style="font-size:11.0pt;line-height:107%;
font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:TR;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">3</span></sup></td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 *Güç :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                     ControlToValidate="txtguc" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style11">
                                 <asp:TextBox ID="txtguc" runat="server" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="Small" Height="20px" Width="140px" ValidationGroup="a"></asp:TextBox>
                             </td>
                             <td class="style16">
                                 HP</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 *Motor No :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                     ControlToValidate="txtmotorno" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style11">
                                 <asp:TextBox ID="txtmotorno" runat="server" Font-Bold="True" 
                        Font-Names="Calibri" Font-Size="Small" Height="20px" Width="140px" ValidationGroup="a"></asp:TextBox>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 *Şase No :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                     ControlToValidate="txtsase" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style11">
                                 <asp:TextBox ID="txtsase" runat="server" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="Small" Height="20px" Width="140px" ValidationGroup="a"></asp:TextBox>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 *Yakıt :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                                     ControlToValidate="dpyakıt" ErrorMessage="*" InitialValue="0" 
                                     ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style11">
                                 <asp:DropDownList ID="dpyakıt" runat="server" Font-Bold="True" 
                        Font-Names="Calibri" Font-Size="Small" Height="16px" Width="140px" ValidationGroup="a">
                                     <asp:ListItem Value="0">Yakıt Seçiniz</asp:ListItem>
                                     <asp:ListItem>Dizel</asp:ListItem>
                                     <asp:ListItem>Benzin</asp:ListItem>
                                     <asp:ListItem>Benzin/Lpg</asp:ListItem>
                                     <asp:ListItem>LPG</asp:ListItem>
                                     <asp:ListItem>Hybird</asp:ListItem>
                                     <asp:ListItem>Elektrikli</asp:ListItem>
                                 </asp:DropDownList>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 *Kasa :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                                     ControlToValidate="dpkasa" ErrorMessage="*" InitialValue="0" 
                                     ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style11">
                                 <asp:DropDownList ID="dpkasa" runat="server" Font-Bold="True" 
                        Font-Names="Calibri" Font-Size="Small" Height="20px" Width="140px" ValidationGroup="a">
                                     <asp:ListItem Value="0">Kasa Seçiniz</asp:ListItem>
                                     <asp:ListItem>Otomobil</asp:ListItem>
                                     <asp:ListItem>Jeep</asp:ListItem>
                                     <asp:ListItem>Coupe 2 Kapı</asp:ListItem>
                                     <asp:ListItem>Hatchback 3 Kapı</asp:ListItem>
                                     <asp:ListItem>Hatchback 5 Kapı</asp:ListItem>
                                     <asp:ListItem>Sedan</asp:ListItem>
                                     <asp:ListItem>Station Vagon</asp:ListItem>
                                     <asp:ListItem>Van/Minivan</asp:ListItem>
                                     <asp:ListItem>Cabrio</asp:ListItem>
                                     <asp:ListItem>Off-Road</asp:ListItem>
                                     <asp:ListItem>Panelvan</asp:ListItem>
                                     <asp:ListItem>Pick-up</asp:ListItem>
                                     <asp:ListItem>Minibüs</asp:ListItem>
                                     <asp:ListItem>Kamyonet</asp:ListItem>
                                     <asp:ListItem>Kamyon</asp:ListItem>
                                     <asp:ListItem>SUV</asp:ListItem>
                                 </asp:DropDownList>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 *Muayene Tarihi :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                                     ControlToValidate="txtmuayenetarihi" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style11">
                                 <asp:TextBox ID="txtmuayenetarihi" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
                        Font-Names="Calibri" Font-Size="Small" Height="20px" Width="140px" 
                        TextMode="Date" ValidationGroup="a"></asp:TextBox>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 *Alış Tarih :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                                     ControlToValidate="txttarih" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style11">
                                 <asp:TextBox ID="txttarih" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
                        Font-Names="Calibri" Font-Size="Small" Height="20px" Width="140px" 
                        TextMode="Date" ValidationGroup="a"></asp:TextBox>
                                 <br />
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 *Gcc. Btş. Tarihi :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                                     ControlToValidate="txtgcctarih" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style11">
                                 <asp:TextBox ID="txtgcctarih" runat="server" BackColor="#CCCCCC" 
                                     Font-Bold="True" Font-Names="Calibri" Font-Size="Small" Height="20px" 
                                     TextMode="Date" Width="140px" ValidationGroup="a"></asp:TextBox>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 *Araç Durum :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                                     ControlToValidate="dparacdurum" ErrorMessage="*" InitialValue="0" 
                                     ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style11">
                                 <asp:DropDownList ID="dparacdurum" runat="server" Font-Bold="True" 
                                     Font-Names="Calibri" Font-Size="Small" Height="21px" Width="140px" 
                                     ValidationGroup="a">
                                     <asp:ListItem Value="0">Seçiniz</asp:ListItem>
                                     <asp:ListItem Value="A">ALDATMAZ</asp:ListItem>
                                     <asp:ListItem Value="K">KONSİNYE</asp:ListItem>
                                     <asp:ListItem Value="E">EMANET</asp:ListItem>
                                     <asp:ListItem Value="O">OTOPORT</asp:ListItem>
                                     <asp:ListItem Value="M">MANHAIM</asp:ListItem>
                                 </asp:DropDownList>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 *Park :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                                     ControlToValidate="dppark" ErrorMessage="*" InitialValue="0" 
                                     ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style11">
                                 <asp:DropDownList ID="dppark" runat="server" Font-Bold="True" 
                        Font-Names="Calibri" Font-Size="Small" Height="21px" Width="140px" ValidationGroup="a">
                                     <asp:ListItem Value="0">Seçiniz</asp:ListItem>
                                     <asp:ListItem>Aldatmaz</asp:ListItem>
                                     <asp:ListItem>Temsa</asp:ListItem>
                                 </asp:DropDownList>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 &nbsp; Açıklama :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 &nbsp;</td>
                             <td class="style11">
                                 <asp:TextBox ID="txtaciklama" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
                        Font-Names="Calibri" Font-Size="Small" Height="64px" Width="140px" 
                        TextMode="MultiLine" ValidationGroup="a"></asp:TextBox>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2">
                                 &nbsp;</td>
                             <td class="style9">
                                 &nbsp;</td>
                             <td class="style11">
                                 <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Arac Ekle" Font-Bold="True" Font-Names="Calibri" Font-Size="Small" 
                        Height="24px" Width="72px" ValidationGroup="a" />
                                 <asp:Button ID="btniptal" runat="server" Font-Bold="True" 
                        Font-Names="Calibri" Font-Size="Small" Height="24px" onclick="btniptal_Click" 
                        Text="İptal" Width="58px" />
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                     </table>
                 </asp:Panel>
             </td>
         </tr>
     </table>
    </form>
</body>
</html>
