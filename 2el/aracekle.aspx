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
             width: 41px;
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
             width: 41px;
             height: 123px;
         }
         .style21
         {
             width: 74px;
             height: 102px;
         }
         .style17
         {
             width: 74px;
             height: 71px;
         }
         .style48
        {
            height: 102px;
        }
        .style49
        {
            height: 71px;
        }
        .style52
        {
            color: #000000;
            }
        .style87
        {
            width: 117px;
            height: 47px;
        }
        .style88
        {
            width: 117px;
            height: 123px;
        }
        .style89
        {
            width: 117px;
            height: 102px;
        }
        .style90
        {
            width: 117px;
            height: 71px;
        }
        .style93
        {
            width: 41px;
            height: 102px;
        }
        .style94
        {
            width: 41px;
            height: 71px;
        }
        .style95
        {
            width: 41px;
        }
        .style96
        {
            width: 117px;
            height: 65px;
        }
        .style97
        {
            width: 41px;
            height: 65px;
        }
        .style98
        {
            width: 74px;
            height: 65px;
        }
        .style99
        {
            height: 65px;
        }
        .style101
        {
            width: 117px;
            height: 15px;
        }
        .style102
        {
            width: 41px;
            height: 15px;
        }
        .style103
        {
            width: 74px;
            height: 15px;
        }
        .style104
        {
            height: 15px;
        }
                                 
        .style109
        {
            width: 74px;
            height: 47px;
        }
        .style110
        {
            height: 47px;
        }
        .style111
        {
            width: 117px;
        }
                         
        .style112
        {
            font-size: xx-small;
            width: 74px;
        }
        .style113
        {
            width: 74px;
        }
        .style114
        {
            width: 356px;
        }
                         
        .style115
        {
            width: 183px;
        }
                         
        .style116
        {
            color: #F58220;
        }
                         
        .style117
        {
            width: 175px;
        }
                         
        .style118
        {
            width: 1991px;
        }
                         
        .style119
        {
            width: 100%;
        }
                         
                
        </style>
</head>
<body>
    <form id="form1" runat="server">
     <table class="style1">
         <tr>
             <td>
    
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="85px" 
                     ImageUrl="~/image/2.EL.PNG" Width="273px" onclick="ImageButton5_Click1" />
    
             </td>
             <td class="style118">
                 &nbsp;</td>
             <td class="style8" align="right" valign="middle" width="10%">
                 <asp:LinkButton ID="Label1" runat="server" onclick="Label1_Click" 
                     Font-Bold="True" Font-Names="Calibri" Font-Size="12pt" Font-Underline="False" 
                     ForeColor="Black"></asp:LinkButton>
    
             </td>
         </tr>
         <tr>
             <td colspan="3">
                 <asp:Panel ID="Panel1" runat="server" Font-Bold="True" Font-Italic="False" 
                     Font-Names="arial" Font-Size="Small" GroupingText="Araç Bilgileri">
                     <table class="style1">
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; color: #F58220;">
                                 *Tipi :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 &nbsp;</td>
                             <td class="style117">
                                 <asp:DropDownList ID="dptipi" runat="server" Font-Bold="True" 
                                     Font-Names="Calibri" Font-Size="Small" Height="22px" 
                                     onselectedindexchanged="dpmarka_SelectedIndexChanged" ValidationGroup="a" 
                                     Width="140px">
                                     <asp:ListItem Selected="True">Binek</asp:ListItem>
                                     <asp:ListItem>Ticari</asp:ListItem>
                                 </asp:DropDownList>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                             <td rowspan="24" class="style115">
                               
                                 &nbsp;</td>
                             <td rowspan="24" class="style114">
                                 <table 
                                     style="background-image: url('image/ekspertiz.png'); background-repeat: no-repeat; font-family: Arial, Helvetica, sans-serif; font-size: 11pt; height: 600px;" 
                                     width="350px">
                                     <tr>
                                         <td class="style87">
                                         </td>
                                         <td class="style7">
                                             <asp:CheckBox ID="c1" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" B" oncheckedchanged="c1_CheckedChanged" AutoPostBack="True" />
                                             <br />
                                         </td>
                                         <td class="style109">
                                             <asp:CheckBox ID="c2" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" D" AutoPostBack="True" oncheckedchanged="c2_CheckedChanged" />
                                             <br />
                                         </td>
                                         <td class="style110">
                                         </td>
                                     </tr>
                                     <tr>
                                         <td class="style88">
                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                             <asp:CheckBox ID="c3" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" B" oncheckedchanged="c3_CheckedChanged" AutoPostBack="True" />
                                             <br />
                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                             <asp:CheckBox ID="c4" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" D" oncheckedchanged="c4_CheckedChanged" AutoPostBack="True" />
                                         </td>
                                         <td class="style13">
                                             <asp:CheckBox ID="c19" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" B" AutoPostBack="True" oncheckedchanged="c19_CheckedChanged" />
                                         </td>
                                         <td class="style112">
                                             <asp:CheckBox ID="c20" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" D" AutoPostBack="True" oncheckedchanged="c20_CheckedChanged" />
                                         </td>
                                         <td class="style52">
                                             &nbsp; &nbsp;B<asp:CheckBox ID="c5" runat="server" class="roundedTwo" 
                                                 
                                                 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 AutoPostBack="True" oncheckedchanged="c5_CheckedChanged" />
                                             <br />
                                             &nbsp;&nbsp; D<asp:CheckBox ID="c6" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" " AutoPostBack="True" oncheckedchanged="c6_CheckedChanged" />
                                             <br />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td class="style89">
                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                             <asp:CheckBox ID="c7" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" B" AutoPostBack="True" oncheckedchanged="c7_CheckedChanged" />
                                             <br />
                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                             <asp:CheckBox ID="c8" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" D" AutoPostBack="True" oncheckedchanged="c8_CheckedChanged" />
                                         </td>
                                         <td class="style93">
                                             <br />
                                             <br />
                                             <br />
                                             <br />
                                             <asp:CheckBox ID="c21" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" B" AutoPostBack="True" oncheckedchanged="c21_CheckedChanged" />
                                         </td>
                                         <td class="style21">
                                             &nbsp;<br />
                                             <br />
                                             <br />
                                             <br />
                                             <asp:CheckBox ID="c22" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" D" AutoPostBack="True" oncheckedchanged="c22_CheckedChanged" />
                                         </td>
                                         <td class="style48">
                                             &nbsp;&nbsp;&nbsp; B<asp:CheckBox ID="c9" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" " AutoPostBack="True" oncheckedchanged="c9_CheckedChanged" />
                                             <br />
                                             &nbsp;&nbsp;&nbsp; D<asp:CheckBox ID="c10" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" " AutoPostBack="True" oncheckedchanged="c10_CheckedChanged" />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td class="style90">
                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                             <asp:CheckBox ID="c11" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" B" AutoPostBack="True" oncheckedchanged="c11_CheckedChanged" />
                                             <br />
                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                             <asp:CheckBox ID="c12" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" D" AutoPostBack="True" oncheckedchanged="c12_CheckedChanged" />
                                         </td>
                                         <td class="style94">
                                         </td>
                                         <td class="style17">
                                         </td>
                                         <td class="style49">
                                             &nbsp;&nbsp;&nbsp; B<asp:CheckBox ID="c13" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" " AutoPostBack="True" oncheckedchanged="c13_CheckedChanged" />
                                             <br />
                                             &nbsp;&nbsp;&nbsp; D<asp:CheckBox ID="c14" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" " AutoPostBack="True" oncheckedchanged="c14_CheckedChanged" />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td class="style96">
                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                             <asp:CheckBox ID="c15" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" B" AutoPostBack="True" oncheckedchanged="c15_CheckedChanged" />
                                             <br />
                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                             <asp:CheckBox ID="c16" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" D" AutoPostBack="True" oncheckedchanged="c16_CheckedChanged" />
                                         </td>
                                         <td class="style97">
                                             <asp:CheckBox ID="c23" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" B" AutoPostBack="True" oncheckedchanged="c23_CheckedChanged" />
                                         </td>
                                         <td class="style98">
                                             <asp:CheckBox ID="c24" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" D" AutoPostBack="True" oncheckedchanged="c24_CheckedChanged" />
                                         </td>
                                         <td class="style99">
                                             &nbsp;&nbsp;&nbsp; B<asp:CheckBox ID="c17" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" " AutoPostBack="True" oncheckedchanged="c17_CheckedChanged" />
                                             <br />
                                             &nbsp;&nbsp;&nbsp; D<asp:CheckBox ID="c18" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" " AutoPostBack="True" oncheckedchanged="c18_CheckedChanged" />
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
                                     </tr>
                                     <tr>
                                         <td class="style111">
                                             &nbsp;</td>
                                         <td class="style95">
                                             <asp:CheckBox ID="c25" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" B" AutoPostBack="True" oncheckedchanged="c25_CheckedChanged" />
                                         </td>
                                         <td class="style113">
                                             <asp:CheckBox ID="c26" runat="server" class="roundedTwo" 
                                                 style="background-image: url('image/boyali.jpg'); background-repeat: no-repeat;" 
                                                 Text=" D" AutoPostBack="True" oncheckedchanged="c26_CheckedChanged" />
                                         </td>
                                         <td>
                                             &nbsp;</td>
                                     </tr>
                                 </table>
                             </td>
                             <td rowspan="12" align="left" valign="middle">
                                 <table class="style119">
                                     <tr>
                                         <td class="style116" colspan="2">
                                             Tramer Kaydı :</td>
                                     </tr>
                                     <tr>
                                         <td>
                                             Hasar 1:</td>
                                         <td>
                                             <asp:TextBox ID="txthasar1" runat="server" AutoPostBack="True" 
                                                 ontextchanged="txthasar1_TextChanged" style="text-align: right">0</asp:TextBox>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td>
                                             Hasar 2:</td>
                                         <td>
                                             <asp:TextBox ID="txthasar2" runat="server" AutoPostBack="True" 
                                                 ontextchanged="txthasar2_TextChanged" style="text-align: right">0</asp:TextBox>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td>
                                             Hasar 3:</td>
                                         <td>
                                             <asp:TextBox ID="txthasar3" runat="server" AutoPostBack="True" 
                                                 ontextchanged="txthasar3_TextChanged" style="text-align: right">0</asp:TextBox>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td>
                                             Hasar 4:</td>
                                         <td>
                                             <asp:TextBox ID="txthasar4" runat="server" AutoPostBack="True" 
                                                 ontextchanged="txthasar4_TextChanged" style="text-align: right">0</asp:TextBox>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td>
                                             Hasar 5:</td>
                                         <td>
                                             <asp:TextBox ID="txthasar5" runat="server" AutoPostBack="True" 
                                                 ontextchanged="txthasar5_TextChanged" style="text-align: right">0</asp:TextBox>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td>
                                             TOPLAM:</td>
                                         <td>
                                             <asp:TextBox ID="txttoplam" runat="server" style="text-align: right">0</asp:TextBox>
                                         </td>
                                     </tr>
                                 </table>
                                 <br />
                           
                             </td>
                         </tr>
                         <tr>
                             <td class="style2" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; color: #F58220;">
                                 *Marka :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                     ControlToValidate="dpmarka" ErrorMessage="*" InitialValue="1" 
                                     ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style117">
                                 <asp:DropDownList ID="dpmarka" runat="server" AutoPostBack="True" 
                                     Font-Bold="True" Font-Names="Calibri" Font-Size="Small" Height="22px" 
                                     onselectedindexchanged="dpmarka_SelectedIndexChanged" ValidationGroup="a" 
                                     Width="140px">
                                 </asp:DropDownList>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; color: #F58220;">
                                 *Model:</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 &nbsp;</td>
                             <td class="style117">
                                 <asp:DropDownList ID="dpmodel" runat="server" Width="140px" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="Small" Height="22px" ValidationGroup="a" 
                                     onselectedindexchanged="dpmodel_SelectedIndexChanged">
                                 </asp:DropDownList>
                             </td>
                             <td class="style16">
                                 <asp:ImageButton ID="ImageButton6" runat="server" Height="23px" 
                                     ImageUrl="~/image/1412174606_addthis-128.png" Width="23px" 
                                     onclick="ImageButton6_Click" />
                             </td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; color: #F58220;">
                                 *Plaka :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                     ControlToValidate="txtplaka" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style117">
                                 <asp:TextBox ID="txtplaka" runat="server" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="Small" Height="20px" Width="140px" ValidationGroup="a"></asp:TextBox>
                             </td>
                             <td class="style14">
                                 *Örn;34aa123</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; color: #F58220;">
                                 *Satış Fiyat :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                     ControlToValidate="txtsatısfiyat" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style117">
                                 <asp:TextBox ID="txtsatısfiyat" runat="server" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="Small" Height="20px" Width="140px" ValidationGroup="a" 
                                     ontextchanged="txtsatısfiyat_TextChanged"></asp:TextBox>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; color: #F58220;">
                                 *Alış Fiyat :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                     ControlToValidate="txtalisfiyat" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style117">
                                 <asp:TextBox ID="txtalisfiyat" runat="server" Font-Bold="True" 
                        Font-Names="Calibri" Font-Size="Small" Height="19px" Width="140px" ValidationGroup="a" 
                                     ontextchanged="txtalisfiyat_TextChanged"></asp:TextBox>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; color: #F58220;">
                                 *Model Yılı :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                     ControlToValidate="dpmodelyil" ErrorMessage="*" InitialValue="0" 
                                     ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style117">
                                 <asp:DropDownList ID="dpmodelyil" runat="server" Height="22px" Width="140px" 
                        Font-Bold="True" Font-Names="Calibri" Font-Size="Small" ValidationGroup="a">
                                     <asp:ListItem Value="0">Seçiniz</asp:ListItem>
                                     <asp:ListItem Value="2016">2016</asp:ListItem>
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
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; color: #F58220;">
                                 *Km :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                     ControlToValidate="txtkm" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style117">
                                 <asp:TextBox ID="txtkm" runat="server" Font-Bold="True" 
                        Font-Names="Calibri" Font-Size="Small" Height="19px" Width="140px" ValidationGroup="a"></asp:TextBox>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; color: #F58220;">
                                 *Renk :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                     ControlToValidate="dprenk" ErrorMessage="*" InitialValue="0" 
                                     ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style117">
                                 <asp:DropDownList ID="dprenk" runat="server" Width="140px" Font-Bold="True" 
                        Font-Names="Calibri" Font-Size="Small" Height="22px" ValidationGroup="a">
                                     <asp:ListItem Value="0">Seçiniz</asp:ListItem>
                                     <asp:ListItem>Bal Rengi</asp:ListItem>
                                     <asp:ListItem>Beyaz</asp:ListItem>
                                     <asp:ListItem>Siyah</asp:ListItem>
                                     <asp:ListItem>Gri</asp:ListItem>
                                     <asp:ListItem>Füme</asp:ListItem>
                                     <asp:ListItem>Bordo</asp:ListItem>
                                     <asp:ListItem>Bej</asp:ListItem>
                                     <asp:ListItem>Gümüş Gri</asp:ListItem>
                                     <asp:ListItem>Haki</asp:ListItem>
                                     <asp:ListItem>Kahverengi</asp:ListItem>
                                     <asp:ListItem>Kırmızı</asp:ListItem>
                                     <asp:ListItem>Kiremit</asp:ListItem>
                                     <asp:ListItem>Lacivert</asp:ListItem>
                                     <asp:ListItem>Kum Rengi</asp:ListItem>
                                     <asp:ListItem>Krem</asp:ListItem>
                                     <asp:ListItem>Mavi</asp:ListItem>
                                     <asp:ListItem>Mor</asp:ListItem>
                                     <asp:ListItem>Pembe</asp:ListItem>
                                     <asp:ListItem>Sarı</asp:ListItem>
                                     <asp:ListItem>İnci Beyazı</asp:ListItem>
                                     <asp:ListItem>Yeşil</asp:ListItem>
                                 </asp:DropDownList>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; color: #F58220;">
                                 *Vites :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                     ControlToValidate="dpvites" ErrorMessage="*" InitialValue="0" 
                                     ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style117">
                                 <asp:DropDownList ID="dpvites" runat="server" Font-Bold="True" 
                        Font-Names="Calibri" Font-Size="Small" Height="22px" Width="140px" ValidationGroup="a">
                                     <asp:ListItem Value="0">Seçiniz</asp:ListItem>
                                     <asp:ListItem Value="Otom.">Otomatik</asp:ListItem>
                                     <asp:ListItem>Manuel</asp:ListItem>
                                     <asp:ListItem Value="Y.Otom.">Yarı Otomatik</asp:ListItem>
                                 </asp:DropDownList>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; color: #F58220;">
                                 *Motor :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                     ControlToValidate="txtmotor" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style117">
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
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; color: #F58220;">
                                 *Güç :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                     ControlToValidate="txtguc" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style117">
                                 <asp:TextBox ID="txtguc" runat="server" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="Small" Height="20px" Width="140px" ValidationGroup="a"></asp:TextBox>
                             </td>
                             <td class="style16">
                                 HP</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; color: #F58220;">
                                 *Motor No :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                     ControlToValidate="txtmotorno" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style117">
                                 <asp:TextBox ID="txtmotorno" runat="server" Font-Bold="True" 
                        Font-Names="Calibri" Font-Size="Small" Height="20px" Width="140px" ValidationGroup="a"></asp:TextBox>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                             <td align="left" rowspan="12" valign="top">
                                 <span class="style116">Ekspertiz:<br /> </span>
                                 <br />
                                 <asp:ListBox ID="ListBox1" runat="server" Height="300px" Width="300px">
                                 </asp:ListBox>
                             </td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; color: #F58220;">
                                 *Şase No :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                     ControlToValidate="txtsase" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style117">
                                 <asp:TextBox ID="txtsase" runat="server" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="Small" Height="20px" Width="140px" ValidationGroup="a"></asp:TextBox>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; color: #F58220;">
                                 *Yakıt :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                                     ControlToValidate="dpyakıt" ErrorMessage="*" InitialValue="0" 
                                     ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style117">
                                 <asp:DropDownList ID="dpyakıt" runat="server" Font-Bold="True" 
                        Font-Names="Calibri" Font-Size="Small" Height="22px" Width="140px" ValidationGroup="a">
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
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; color: #F58220;">
                                 *Kasa :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                                     ControlToValidate="dpkasa" ErrorMessage="*" InitialValue="0" 
                                     ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style117">
                                 <asp:DropDownList ID="dpkasa" runat="server" Font-Bold="True" 
                        Font-Names="Calibri" Font-Size="Small" Height="22px" Width="140px" ValidationGroup="a">
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
                                     <asp:ListItem>Otobüs</asp:ListItem>
                                 </asp:DropDownList>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; color: #F58220;">
                                 *Muayene Tarihi :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                                     ControlToValidate="txtmuayenetarihi" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style117">
                                 <asp:TextBox ID="txtmuayenetarihi" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
                        Font-Names="Calibri" Font-Size="Small" Height="20px" Width="140px" 
                        TextMode="Date" ValidationGroup="a"></asp:TextBox>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; color: #F58220;">
                                 *Alış Tarih :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                                     ControlToValidate="txttarih" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style117">
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
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; color: #F58220;">
                                 &nbsp; Gcc. Btş. Tarihi :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 &nbsp;</td>
                             <td class="style117">
                                 <asp:TextBox ID="txtgcctarih" runat="server" BackColor="#CCCCCC" 
                                     Font-Bold="True" Font-Names="Calibri" Font-Size="Small" Height="20px" 
                                     TextMode="Date" Width="140px" ValidationGroup="a"></asp:TextBox>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                                 
                                 style="font-family: calibri; font-size: small; font-weight: bold; color: #F58220;">
                                 *Sahip :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                                     ControlToValidate="dpsahip" ErrorMessage="*"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style117">
                                 <asp:DropDownList ID="dpsahip" runat="server" Font-Bold="True" 
                                     Font-Names="Calibri" Font-Size="Small" Height="22px" ValidationGroup="a" 
                                     Width="140px">
                                     <asp:ListItem Value="ALD">ALDATMAZ</asp:ListItem>
                                     <asp:ListItem Value="KAP">KAPİTAL</asp:ListItem>
                                     <asp:ListItem Value="OTP">OTOPORT</asp:ListItem>
                                     <asp:ListItem Value="KON">KONSİNYE</asp:ListItem>
                                 </asp:DropDownList>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; color: #F58220;">
                                 *Park Yeri :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                                     ControlToValidate="dparacdurum" ErrorMessage="*" InitialValue="0" 
                                     ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style117">
                                 <asp:DropDownList ID="dparacdurum" runat="server" Font-Bold="True" 
                                     Font-Names="Calibri" Font-Size="Small" Height="22px" ValidationGroup="a" 
                                     Width="140px">
                                     <asp:ListItem Value="ALD">ALDATMAZ</asp:ListItem>
                                     <asp:ListItem Value="OTP">OTOPORT</asp:ListItem>
                                     <asp:ListItem Value="MNH">MANHAIM</asp:ListItem>
                                     <asp:ListItem Value="EMA">EMANET</asp:ListItem>
                                     <asp:ListItem Value="DİG">DİĞER</asp:ListItem>
                                 </asp:DropDownList>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                    
                    
                    style="font-family: calibri; font-size: small; font-weight: bold; color: #F58220;">
                                 &nbsp; Yed. Anahtar </td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 &nbsp;</td>
                             <td class="style117">
                                 <asp:CheckBox ID="yedek" runat="server" 
                                     oncheckedchanged="yedek_CheckedChanged" AutoPostBack="True" />
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; color: #F58220;">
                                 &nbsp; Açıklama :</td>
                             <td class="style9" 
                                 style="font-family: calibri; font-size: small; font-weight: bold; ">
                                 &nbsp;</td>
                             <td class="style117">
                                 <asp:TextBox ID="txtaciklama" runat="server" BackColor="#CCCCCC" 
                                     Font-Bold="True" Font-Names="Calibri" Font-Size="Small" Height="64px" 
                                     TextMode="MultiLine" ValidationGroup="a" Width="140px"></asp:TextBox>
                             </td>
                             <td class="style16">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2">
                                 <a href="javascript: history.go(-1);">
                                 <asp:Image ID="Image1" runat="server" ImageAlign="AbsBottom" 
                                     ImageUrl="~/image/geri.jpg" />
                                 </a>
                             </td>
                             <td class="style9">
                                 &nbsp;</td>
                             <td class="style117">
                                 <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Arac Ekle" Font-Bold="True" Font-Names="Calibri" Font-Size="Small" 
                        Height="28px" Width="80px" ValidationGroup="a" BackColor="#666666" ForeColor="White" />
                                 <asp:Button ID="btniptal" runat="server" Font-Bold="True" 
                        Font-Names="Calibri" Font-Size="Small" Height="28px" onclick="btniptal_Click" 
                        Text="İptal" Width="80px" BackColor="#666666" ForeColor="White" />
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
