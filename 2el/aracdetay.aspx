<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aracdetay.aspx.cs" Inherits="aracdetay" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <script type="text/javascript">
     window.history.forward();
     function noback() { window.history.forward(); }
</script>

    <style type="text/css">

        .ab{
    font-family:Calibri;
    font-size:10pt;
     border: 1px solid #B9BDC1;
    color: #000;
    -moz-box-shadow: 0 2px 4px #bbb inset;
    -webkit-box-shadow: 0 2px 4px #BBB inset;
    box-shadow: 0 2px 4px #BBB inset;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    border-radius: 3px;
            height: 19px;
        }
    .ab:focus {
    background-color: #E7E8E7;
    outline: 0;
}
   
           #a
        {
            position:absolute;
            margin-top:0px;
            right:463px;
            top: 58px;
        }
       #sitil
       {
           border:2px dashed gray; 
           position:absolute;
           margin-left:-80px;
           margin-top:10px;
       }     
     
        .style9
        {
            width: 1202px;
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
                         
                 
        .style126
        {
            height: 23px;
            width: 1202px;
        }
       
        
        .style127
        {
        }
        .style16
        {
           
             font-family:Arial;
            font-size:small;
            font-weight:bold;
        }
        
         .style18
        {
        }
        .style19
        {
            width: 29px;
        }
               
        
        .style22
        {
            width: 107px;
        }
        
     
       
        
        .style113
        {
            width: 59px;
        }
               
        
        .style138
        {
            width: 110px;
        }
        .style145
        {
            width: 622px;
        }
        .style158
        {
        }
                       
        
        .style238
        {
            color: #F58220;
        }
               
        
        .style239
        {
            width: 2052px;
        }
               
        
        .style240
        {
            width: 100%;
        }
               
        
        .style241
        {
            width: 76px;
        }
                       
        
        .style244
        {
            width: 146px;
        }
        .style245
        {
            width: 14px;
        }
        .style246
        {
            width: 97px;
        }
        .style247
        {
            width: 156px;
        }
        .style248
        {
            width: 95px;
        }
        .style250
        {
            width: 80px;
        }
                       
        
        .style87
        {
            width: 121px;
            height: 54px;
        }
                        
        

         .style7
         {
             width: 41px;
             height: 54px;
         }
                                          
        .style109
        {
            width: 74px;
            height: 54px;
        }
        .style110
        {
            height: 54px;
        }
        .style88
        {
            width: 121px;
            height: 100px;
        }
                                 
         .style13
         {
             width: 41px;
             height: 100px;
         }
                                  
        .style52
        {
            color: #000000;
            height: 100px;
        }
        .style89
        {
            width: 121px;
            height: 120px;
        }
        .style93
        {
            width: 41px;
            height: 120px;
        }
         .style21
         {
             width: 74px;
             height: 120px;
         }
         .style48
        {
            height: 120px;
        }
        .style90
        {
            width: 121px;
            height: 71px;
        }
        .style94
        {
            width: 41px;
            height: 71px;
        }
         .style17
         {
             width: 74px;
             height: 71px;
         }
         .style49
        {
            height: 71px;
        }
        .style96
        {
            width: 121px;
            height: 73px;
        }
        .style97
        {
            width: 41px;
            height: 73px;
        }
        .style98
        {
            width: 74px;
            height: 73px;
        }
        .style99
        {
            height: 73px;
        }
        .style101
        {
            width: 121px;
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
                                 
        .style111
        {
            width: 121px;
        }
                         
        .style95
        {
            width: 41px;
        }
                       
        
        .style256
        {
            width: 95px;
            height: 25px;
        }
        .style257
        {
            width: 146px;
            height: 25px;
        }
        .style258
        {
            width: 14px;
            height: 25px;
        }
        .style259
        {
            width: 97px;
            height: 25px;
        }
        .style260
        {
            width: 156px;
            height: 25px;
        }
                       
        
        .style265
        {
            height: 100px;
        }
                       
        
        </style>
</head>
<body  onload="noback();" onpageshow="if (event.persisted) noback();" onunload="">
    <form id="form1" runat="server">
   
    <div>
        <table>
            <tr>
                <td class="style9">
    
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="85px" 
                     ImageUrl="~/image/2.EL.PNG" Width="273px" onclick="ImageButton5_Click1" />
    
                </td>
                <td class="style239">
    
                    &nbsp;</td>
                <td class="style9" align="right" valign="middle">
    
                    &nbsp;</td>
                <td class="style9" align="right" valign="middle" width="10%">
    
                    <asp:LinkButton ID="Label1" runat="server" onclick="Label1_Click" 
                        Font-Bold="True" Font-Names="Calibri" Font-Size="12pt" Font-Underline="False" 
                        style="color: #000000"></asp:LinkButton>
    
                </td>
            </tr>
            <tr>
                <td class="style126" colspan="4">
    
                    </td>
            </tr>
            <tr>
                <td class="style126" colspan="4">
    
                    <asp:Panel ID="Panel3" runat="server" Font-Bold="True" Font-Names="Arial" 
                        Font-Size="Small" GroupingText="Araç Bilgisi" Width="100%">
                        <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource2" 
                            DefaultMode="Edit">
                            <EditItemTemplate>
                                <table class="style127">
                                    <tr>
                                        <td class="style145" valign="top">
                                            <table class="style16">
                                                <tr>
                                                    <td class="style158" colspan="5" height="30px" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        <asp:FormView ID="FormView6" runat="server" DataSourceID="SqlDataSource4" 
                                                            Width="475px">
                                                            <EditItemTemplate>
                                                                aciklama:
                                                                <asp:TextBox ID="aciklamaTextBox0" runat="server" 
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
                                                                <asp:TextBox ID="durumuTextBox0" runat="server" Text='<%# Bind("durumu") %>' />
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
                                                                <asp:TextBox ID="aciklamaTextBox1" runat="server" 
                                                                    Text='<%# Bind("aciklama") %>' />
                                                                <br />
                                                                rezerve_eden:
                                                                <asp:TextBox ID="rezerve_edenTextBox0" runat="server" 
                                                                    Text='<%# Bind("rezerve_eden") %>' />
                                                                <br />
                                                                rezervasyon_tarih:
                                                                <asp:TextBox ID="rezervasyon_tarihTextBox0" runat="server" 
                                                                    Text='<%# Bind("rezervasyon_tarih") %>' />
                                                                <br />
                                                                rz_onay_veren:
                                                                <asp:TextBox ID="rz_onay_verenTextBox0" runat="server" 
                                                                    Text='<%# Bind("rz_onay_veren") %>' />
                                                                <br />
                                                                rz_onay_tarihi:
                                                                <asp:TextBox ID="rz_onay_tarihiTextBox0" runat="server" 
                                                                    Text='<%# Bind("rz_onay_tarihi") %>' />
                                                                <br />
                                                                st_onay:
                                                                <asp:TextBox ID="st_onayTextBox0" runat="server" 
                                                                    Text='<%# Bind("st_onay") %>' />
                                                                <br />
                                                                st_tarih:
                                                                <asp:TextBox ID="st_tarihTextBox0" runat="server" 
                                                                    Text='<%# Bind("st_tarih") %>' />
                                                                <br />
                                                                durumu:
                                                                <asp:TextBox ID="durumuTextBox1" runat="server" Text='<%# Bind("durumu") %>' />
                                                                <br />
                                                                kayit_tarih:
                                                                <asp:TextBox ID="kayit_tarihTextBox0" runat="server" 
                                                                    Text='<%# Bind("kayit_tarih") %>' />
                                                                <br />
                                                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                                    CommandName="Insert" Text="Insert" />
                                                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                            </InsertItemTemplate>
                                                            <ItemTemplate>
                                                                <table width="480px">
                                                                    <tr>
                                                                        <td align="left" 
                                                                            style="color: #F58220; font-family: calibri; font-size: 10pt; font-weight: bold" 
                                                                            width="40px">
                                                                            Durumu</td>
                                                                        <td align="left" 
                                                                            style="font-family: calibri; font-size: 10pt; color: #000000; font-weight: bold;" 
                                                                            width="160px">
                                                                            <asp:Label ID="durumuLabel" runat="server" Text='<%# Bind("durumu") %>' />
                                                                        </td>
                                                                        <td align="right" class="style250" 
                                                                            style="font-family: calibri; font-size: 10pt; ">
                                                                            &nbsp;</td>
                                                                        <td align="right" class="style241" 
                                                                            style="font-family: calibri; font-size: 10pt; color: #F58220; font-weight: bold;" 
                                                                            width="40px">
                                                                            Kayıt Tarihi</td>
                                                                        <td align="left" 
                                                                            style="font-family: calibri; font-size: 10pt; color: #000000; font-weight: bold;" 
                                                                            width="200px">
                                                                            <asp:Label ID="kayit_tarihLabel" runat="server" 
                                                                                Text='<%# Bind("kayit_tarih") %>' />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" 
                                                                            style="color: #F58220; font-family: calibri; font-size: 10pt; font-weight: bold">
                                                                            &nbsp;</td>
                                                                        <td align="left" 
                                                                            style="font-family: calibri; font-size: 10pt; color: #000000; font-weight: bold;">
                                                                            &nbsp;</td>
                                                                        <td align="right" class="style250" 
                                                                            style="font-family: calibri; font-size: 10pt; color: #000000">
                                                                            &nbsp;</td>
                                                                        <td align="right" class="style241" 
                                                                            style="font-family: calibri; font-size: 10pt; color: #F58220; font-weight: bold;">
                                                                            &nbsp;</td>
                                                                        <td align="left" 
                                                                            style="font-family: calibri; font-size: 10pt; color: #000000; font-weight: bold;">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            </ItemTemplate>
                                                        </asp:FormView>
                                                    </td>
                                                    <td class="style158" rowspan="15" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                                    <td class="style158" rowspan="15" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <table style="background-image: url('image/ekspertiz.png'); background-repeat: no-repeat; font-family: Arial, Helvetica, sans-serif; font-size: 11pt; height: 600px; color: #000000; font-weight: bold;" 
                                                            width="350px">
                                                            <tr>
                                                                <td class="style87">
                                                                </td>
                                                                <td class="style7">
                                                                    B
                                                                    <asp:CheckBox ID="c1CheckBox" runat="server" AutoPostBack="True" 
                                                                        Checked='<%# Bind("c1") %>' oncheckedchanged="c1CheckBox_CheckedChanged" />
                                                                </td>
                                                                <td class="style109">
                                                                    D&nbsp;
                                                                    <asp:CheckBox ID="c2CheckBox" runat="server" AutoPostBack="True" 
                                                                        Checked='<%# Bind("c2") %>' oncheckedchanged="c2CheckBox_CheckedChanged" />
                                                                </td>
                                                                <td class="style110">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style88">
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B<asp:CheckBox ID="c3CheckBox" runat="server" AutoPostBack="True" 
                                                                        Checked='<%# Bind("c3") %>' oncheckedchanged="c3CheckBox_CheckedChanged" />
                                                                    <br />
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D<asp:CheckBox ID="c4CheckBox" runat="server" AutoPostBack="True" 
                                                                        Checked='<%# Bind("c4") %>' oncheckedchanged="c4CheckBox_CheckedChanged" />
                                                                </td>
                                                                <td class="style13">
                                                                    B<asp:CheckBox ID="c19CheckBox" runat="server" AutoPostBack="True" 
                                                                        Checked='<%# Bind("c19") %>' oncheckedchanged="c19CheckBox_CheckedChanged" />
                                                                </td>
                                                                <td>
                                                                    D<asp:CheckBox ID="c20CheckBox" runat="server" AutoPostBack="True" 
                                                                        Checked='<%# Bind("c20") %>' oncheckedchanged="c20CheckBox_CheckedChanged" />
                                                                </td>
                                                                <td class="style52">
                                                                    &nbsp; &nbsp;B<asp:CheckBox ID="c5CheckBox" runat="server" AutoPostBack="True" 
                                                                        Checked='<%# Bind("c5") %>' oncheckedchanged="c5CheckBox_CheckedChanged" />
                                                                    <br />
                                                                    &nbsp; &nbsp;D<asp:CheckBox ID="c6CheckBox" runat="server" AutoPostBack="True" 
                                                                        Checked='<%# Bind("c6") %>' oncheckedchanged="c6CheckBox_CheckedChanged" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style89">
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B<asp:CheckBox ID="c7CheckBox" runat="server" AutoPostBack="True" 
                                                                        Checked='<%# Bind("c7") %>' oncheckedchanged="c7CheckBox_CheckedChanged" />
                                                                    <br />
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D<asp:CheckBox ID="c8CheckBox" runat="server" AutoPostBack="True" 
                                                                        Checked='<%# Bind("c8") %>' oncheckedchanged="c8CheckBox_CheckedChanged" />
                                                                </td>
                                                                <td class="style93">
                                                                    B<asp:CheckBox ID="c21CheckBox" runat="server" AutoPostBack="True" 
                                                                        Checked='<%# Bind("c21") %>' oncheckedchanged="c21CheckBox_CheckedChanged" />
                                                                </td>
                                                                <td class="style21">
                                                                    D<asp:CheckBox ID="c22CheckBox" runat="server" AutoPostBack="True" 
                                                                        Checked='<%# Bind("c22") %>' oncheckedchanged="c22CheckBox_CheckedChanged" />
                                                                </td>
                                                                <td class="style48">
                                                                    &nbsp;&nbsp; B<asp:CheckBox ID="c9CheckBox" runat="server" AutoPostBack="True" 
                                                                        Checked='<%# Bind("c9") %>' oncheckedchanged="c9CheckBox_CheckedChanged" />
                                                                    <br />
                                                                    &nbsp; &nbsp;D<asp:CheckBox ID="c10CheckBox" runat="server" AutoPostBack="True" 
                                                                        Checked='<%# Bind("c10") %>' oncheckedchanged="c10CheckBox_CheckedChanged" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style90" valign="top">
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B<asp:CheckBox ID="c11CheckBox" runat="server" AutoPostBack="True" 
                                                                        Checked='<%# Bind("c11") %>' oncheckedchanged="c11CheckBox_CheckedChanged" />
                                                                    <br />
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;D<asp:CheckBox ID="c12CheckBox" runat="server" AutoPostBack="True" 
                                                                        Checked='<%# Bind("c12") %>' oncheckedchanged="c12CheckBox_CheckedChanged" />
                                                                </td>
                                                                <td class="style94">
                                                                </td>
                                                                <td class="style17">
                                                                </td>
                                                                <td class="style49" valign="top">
                                                                    &nbsp;&nbsp; B<asp:CheckBox ID="c13CheckBox" runat="server" AutoPostBack="True" 
                                                                        Checked='<%# Bind("c13") %>' oncheckedchanged="c13CheckBox_CheckedChanged" />
                                                                    <br />
                                                                    &nbsp; &nbsp;D<asp:CheckBox ID="c14CheckBox" runat="server" AutoPostBack="True" 
                                                                        Checked='<%# Bind("c14") %>' oncheckedchanged="c14CheckBox_CheckedChanged" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style96">
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                                                                    <br />
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; B<asp:CheckBox ID="c15CheckBox" runat="server" AutoPostBack="True" 
                                                                        Checked='<%# Bind("c15") %>' oncheckedchanged="c15CheckBox_CheckedChanged" />
                                                                    <br />
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D<asp:CheckBox ID="c16CheckBox" runat="server" AutoPostBack="True" 
                                                                        Checked='<%# Bind("c16") %>' oncheckedchanged="c16CheckBox_CheckedChanged" />
                                                                </td>
                                                                <td class="style97">
                                                                    B<asp:CheckBox ID="c23CheckBox" runat="server" AutoPostBack="True" 
                                                                        Checked='<%# Bind("c23") %>' oncheckedchanged="c23CheckBox_CheckedChanged" />
                                                                </td>
                                                                <td class="style98">
                                                                    D<asp:CheckBox ID="c24CheckBox" runat="server" AutoPostBack="True" 
                                                                        Checked='<%# Bind("c24") %>' oncheckedchanged="c24CheckBox_CheckedChanged" />
                                                                </td>
                                                                <td class="style99" valign="bottom">
                                                                    &nbsp;&nbsp; B<asp:CheckBox ID="c17CheckBox" runat="server" AutoPostBack="True" 
                                                                        Checked='<%# Bind("c17") %>' oncheckedchanged="c17CheckBox_CheckedChanged" />
                                                                    <br />
                                                                    &nbsp;&nbsp; D<asp:CheckBox ID="c18CheckBox" runat="server" AutoPostBack="True" 
                                                                        Checked='<%# Bind("c18") %>' oncheckedchanged="c18CheckBox_CheckedChanged" />
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
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style111">
                                                                    &nbsp;</td>
                                                                <td class="style95">
                                                                    B<asp:CheckBox ID="c25CheckBox" runat="server" AutoPostBack="True" 
                                                                        Checked='<%# Bind("c25") %>' oncheckedchanged="c25CheckBox_CheckedChanged" />
                                                                </td>
                                                                <td class="style113">
                                                                    D<asp:CheckBox ID="c26CheckBox" runat="server" AutoPostBack="True" 
                                                                        Checked='<%# Bind("c26") %>' oncheckedchanged="c26CheckBox_CheckedChanged" />
                                                                </td>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td class="style158" rowspan="15" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    </td>
                                                    <td align="left" class="style158" rowspan="15" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;" valign="top" 
                                                        width="400px">
                                                        <table class="style240">
                                                            <tr>
                                                                <td class="style238" colspan="2" 
                                                                    style="font-weight: bold; color: #F58220; font-family: Arial, Helvetica, sans-serif; font-size: 12pt;">
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style238" colspan="2" 
                                                                    style="font-weight: bold; color: #F58220; font-family: Arial, Helvetica, sans-serif; font-size: 12pt;">
                                                                    Tramer Kaydı :</td>
                                                            </tr>
                                                            <tr>
                                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold">
                                                                    Hasar 1</td>
                                                                <td>
                                                                    :<asp:TextBox ID="tramer1TextBox" runat="server" AutoPostBack="True" class="ab" 
                                                                        ontextchanged="tramer1TextBox_TextChanged" style="text-align: right" 
                                                                        Text='<%# Bind("tramer1") %>' />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold">
                                                                    Hasar 2</td>
                                                                <td>
                                                                    :<asp:TextBox ID="tramer2TextBox" runat="server" AutoPostBack="True" class="ab" 
                                                                        ontextchanged="tramer2TextBox_TextChanged" style="text-align: right" 
                                                                        Text='<%# Bind("tramer2") %>' />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold">
                                                                    Hasar 3</td>
                                                                <td>
                                                                    :<asp:TextBox ID="tramer3TextBox" runat="server" AutoPostBack="True" class="ab" 
                                                                        ontextchanged="tramer3TextBox_TextChanged" style="text-align: right" 
                                                                        Text='<%# Bind("tramer3") %>' />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold">
                                                                    Hasar 4</td>
                                                                <td>
                                                                    :<asp:TextBox ID="tramer4TextBox" runat="server" AutoPostBack="True" class="ab" 
                                                                        ontextchanged="tramer4TextBox_TextChanged" style="text-align: right" 
                                                                        Text='<%# Bind("tramer4") %>' />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold">
                                                                    Hasar 5</td>
                                                                <td>
                                                                    :<asp:TextBox ID="tramer5TextBox" runat="server" AutoPostBack="True" class="ab" 
                                                                        ontextchanged="tramer5TextBox_TextChanged" style="text-align: right" 
                                                                        Text='<%# Bind("tramer5") %>' />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="font-family: calibri; font-size: 10pt; font-weight: bold">
                                                                    TOPLAM</td>
                                                                <td>
                                                                    :<asp:TextBox ID="tramer_toplamTextBox" runat="server" class="ab" 
                                                                        style="text-align: right" Text='<%# Bind("tramer_toplam") %>' />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <br />
                                                        <br />
                                                        <span class="style238" 
                                                            style="font-weight: bold; color: #F58220; font-family:calibri; font-size: 12pt;">
                                                        Ekspertiz :<br />
                                                        <br />
                                                        <asp:ListBox ID="ListBox1" runat="server" Height="200px" Width="250px">
                                                        </asp:ListBox>
                                                        </span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style248" height="30px" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp; Marka</td>
                                                    <td class="style244" height="30px">
                                                        <asp:TextBox ID="marka_adTextBox" runat="server" class="ab" ReadOnly="True" 
                                                            Text='<%# Bind("marka_ad") %>' />
                                                    </td>
                                                    <td class="style245" height="30px">
                                                        &nbsp;</td>
                                                    <td class="style246" height="30px" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        Şase No</td>
                                                    <td class="style247" height="30px">
                                                        <asp:TextBox ID="sase_noTextBox" runat="server" class="ab" 
                                                            Text='<%# Bind("sase_no") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style248" height="30px" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp; Model</td>
                                                    <td class="style244" height="30px">
                                                        <asp:TextBox ID="model_adTextBox" runat="server" class="ab" ReadOnly="True" 
                                                            Text='<%# Bind("model_ad") %>' />
                                                    </td>
                                                    <td class="style245" height="30px">
                                                        &nbsp;</td>
                                                    <td class="style246" height="30px" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        Yakıt</td>
                                                    <td class="style247" height="30px">
                                                        <asp:TextBox ID="yakitTextBox" runat="server" class="ab" ReadOnly="True" 
                                                            Text='<%# Bind("yakit") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style248" height="30px" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp; Plaka</td>
                                                    <td class="style244" height="30px">
                                                        <asp:TextBox ID="plakaTextBox" runat="server" class="ab" ReadOnly="True" 
                                                            Text='<%# Bind("plaka") %>' />
                                                    </td>
                                                    <td class="style245" height="30px">
                                                        &nbsp;</td>
                                                    <td class="style246" height="30px" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        Kasa</td>
                                                    <td class="style247" height="30px">
                                                        <asp:TextBox ID="kasaTextBox" runat="server" class="ab" ReadOnly="True" 
                                                            Text='<%# Bind("kasa") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style248" height="30px" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp; Satış Fiyat</td>
                                                    <td class="style244" height="30px">
                                                        <asp:TextBox ID="satis_fiyatTextBox" runat="server" class="ab" 
                                                            style="margin-top: 0px" Text='<%# Bind("satis_fiyat") %>' />
                                                    </td>
                                                    <td class="style245" height="30px">
                                                        &nbsp;</td>
                                                    <td class="style246" height="30px" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        Muayene Tarihi</td>
                                                    <td class="style247" height="30px">
                                                        <asp:TextBox ID="muayenetarihTextBox" runat="server" class="ab" 
                                                            Text='<%# Bind("muayenetarih") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style248" height="30px" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp; Alış Fiyat</td>
                                                    <td class="style244" height="30px">
                                                        <asp:TextBox ID="alis_fiyatTextBox" runat="server" AutoPostBack="True" 
                                                            class="ab" ontextchanged="alis_fiyatTextBox_TextChanged" 
                                                            Text='<%# Bind("alis_fiyat") %>' />
                                                    </td>
                                                    <td class="style245" height="30px">
                                                        &nbsp;</td>
                                                    <td class="style246" height="30px" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        Alış Tarihi</td>
                                                    <td class="style247" height="30px">
                                                        <asp:TextBox ID="alistarihTextBox" runat="server" class="ab" ReadOnly="True" 
                                                            Text='<%# Bind("alistarih") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style248" height="30px" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp; Masraf 1</td>
                                                    <td class="style244" height="30px">
                                                        <asp:TextBox ID="masraf1TextBox" runat="server" class="ab" 
                                                            Text='<%# Bind("masraf1") %>' AutoPostBack="True" 
                                                            ontextchanged="masraf1TextBox_TextChanged1" />
                                                    </td>
                                                    <td class="style245" height="30px">
                                                        &nbsp;</td>
                                                    <td class="style246" height="30px" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        Yed.Anahtar</td>
                                                    <td class="style247" height="30px">
                                                        <asp:CheckBox ID="y_anahtarCheckBox" runat="server" AutoPostBack="True" 
                                                            Checked='<%# Bind("y_anahtar") %>' 
                                                            oncheckedchanged="y_anahtarCheckBox_CheckedChanged1" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style256" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp; Masraf 2</td>
                                                    <td class="style257">
                                                        <asp:TextBox ID="masraf2TextBox" runat="server" class="ab" 
                                                            Text='<%# Bind("masraf2") %>' AutoPostBack="True" 
                                                            ontextchanged="masraf2TextBox_TextChanged" />
                                                    </td>
                                                    <td class="style258">
                                                    </td>
                                                    <td class="style259" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        Sahip</td>
                                                    <td class="style260">
                                                        <asp:TextBox ID="sahipTextBox" runat="server" class="ab" ReadOnly="True" 
                                                            Text='<%# Bind("sahip") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style248" height="30px" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp; Toplam Maaliyet</td>
                                                    <td class="style244" height="30px">
                                                        <asp:TextBox ID="top_maaliyetTextBox" runat="server"  class="ab"
                                                            Text='<%# Bind("top_maaliyet") %>' />
                                                    </td>
                                                    <td class="style245" height="30px">
                                                        &nbsp;</td>
                                                    <td class="style246" height="30px" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        Park Yeri</td>
                                                    <td class="style247" height="30px">
                                                        <asp:DropDownList ID="dparacdurum" runat="server" class="ab" 
                                                            DataSourceID="SqlDataSource1" DataTextField="sahip" DataValueField="value" 
                                                            Font-Bold="True" Font-Names="Calibri" Font-Size="Small" Height="22px" 
                                                            SelectedValue='<%# Bind("arac_durum") %>' Width="140px">
                                                        </asp:DropDownList>
                                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                            ConnectionString="<%$ ConnectionStrings:mydb %>" 
                                                            SelectCommand="SELECT [sahip], [value] FROM [sahip]"></asp:SqlDataSource>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style248" height="30px" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp; Model Yıl</td>
                                                    <td class="style244" height="30px">
                                                        <asp:TextBox ID="model_yiliTextBox" runat="server" class="ab" 
                                                            Text='<%# Bind("model_yili") %>' />
                                                    </td>
                                                    <td class="style245" height="30px">
                                                        &nbsp;</td>
                                                    <td class="style246" height="30px" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        Durumu</td>
                                                    <td class="style247" height="30px">
                                                        <asp:TextBox ID="durumuTextBox" runat="server" class="ab" ReadOnly="True" 
                                                            Text='<%# Bind("durumu") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style248" height="30px" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp; Km</td>
                                                    <td class="style244" height="30px">
                                                        <asp:TextBox ID="kmTextBox" runat="server" class="ab" 
                                                            Text='<%# Bind("km") %>' />
                                                    </td>
                                                    <td class="style245" height="30px">
                                                        &nbsp;</td>
                                                    <td class="style246" height="30px" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        Gcc. Tarih</td>
                                                    <td class="style247" height="30px">
                                                        <asp:TextBox ID="gecicitarihTextBox" runat="server" class="ab" ReadOnly="True" 
                                                            Text='<%# Bind("gecicitarih") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style248" height="30px" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp; Renk</td>
                                                    <td class="style244" height="30px">
                                                        <asp:TextBox ID="renkTextBox" runat="server" class="ab" ReadOnly="True" 
                                                            Text='<%# Bind("renk") %>' />
                                                    </td>
                                                    <td class="style245" height="30px">
                                                        &nbsp;</td>
                                                    <td class="style246" height="30px" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        Motor No</td>
                                                    <td class="style247" height="30px">
                                                        <asp:TextBox ID="motor_noTextBox" runat="server" class="ab" 
                                                            Text='<%# Bind("motor_no") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style248" height="30px" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp; Vites</td>
                                                    <td class="style244" height="30px">
                                                        <asp:TextBox ID="vitesTextBox" runat="server" class="ab" ReadOnly="True" 
                                                            Text='<%# Bind("vites") %>' />
                                                    </td>
                                                    <td class="style245" height="30px">
                                                        &nbsp;</td>
                                                    <td class="style246" height="30px" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        Güç</td>
                                                    <td class="style247" height="30px">
                                                        <asp:TextBox ID="gucTextBox" runat="server" class="ab" 
                                                            Text='<%# Bind("guc") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style248" height="30px" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp; Açıklama</td>
                                                    <td class="style244" height="30px">
                                                        <asp:TextBox ID="aciklamaTextBox" runat="server" class="ab" Height="54px" 
                                                            Text='<%# Bind("aciklama") %>' TextMode="MultiLine" />
                                                    </td>
                                                    <td class="style245" height="30px">
                                                        &nbsp;</td>
                                                    <td class="style246" height="30px" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        Motor</td>
                                                    <td class="style247" height="30px">
                                                        <asp:TextBox ID="motorTextBox" runat="server" class="ab" 
                                                            Text='<%# Bind("motor") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style248" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp;</td>
                                                    <td class="style17" colspan="3" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp;</td>
                                                    <td class="style247">
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
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
                                plaka:
                                <asp:TextBox ID="plakaTextBox" runat="server" Text='<%# Bind("plaka") %>' />
                                <br />
                                satis_fiyat:
                                <asp:TextBox ID="satis_fiyatTextBox" runat="server" 
                                    Text='<%# Bind("satis_fiyat") %>' />
                                <br />
                                alis_fiyat:
                                <asp:TextBox ID="alis_fiyatTextBox" runat="server" 
                                    Text='<%# Bind("alis_fiyat") %>' />
                                <br />
                                masraf1:
                                <asp:TextBox ID="masraf1TextBox" runat="server" Text='<%# Bind("masraf1") %>' />
                                <br />
                                masraf2:
                                <asp:TextBox ID="masraf2TextBox" runat="server" Text='<%# Bind("masraf2") %>' />
                                <br />
                                top_maaliyet:
                                <asp:TextBox ID="top_maaliyetTextBox" runat="server" 
                                    Text='<%# Bind("top_maaliyet") %>' />
                                <br />
                                model_yili:
                                <asp:TextBox ID="model_yiliTextBox" runat="server" 
                                    Text='<%# Bind("model_yili") %>' />
                                <br />
                                km:
                                <asp:TextBox ID="kmTextBox" runat="server" Text='<%# Bind("km") %>' />
                                <br />
                                renk:
                                <asp:TextBox ID="renkTextBox" runat="server" Text='<%# Bind("renk") %>' />
                                <br />
                                vites:
                                <asp:TextBox ID="vitesTextBox" runat="server" Text='<%# Bind("vites") %>' />
                                <br />
                                motor:
                                <asp:TextBox ID="motorTextBox" runat="server" Text='<%# Bind("motor") %>' />
                                <br />
                                guc:
                                <asp:TextBox ID="gucTextBox" runat="server" Text='<%# Bind("guc") %>' />
                                <br />
                                motor_no:
                                <asp:TextBox ID="motor_noTextBox" runat="server" 
                                    Text='<%# Bind("motor_no") %>' />
                                <br />
                                sase_no:
                                <asp:TextBox ID="sase_noTextBox" runat="server" Text='<%# Bind("sase_no") %>' />
                                <br />
                                yakit:
                                <asp:TextBox ID="yakitTextBox" runat="server" Text='<%# Bind("yakit") %>' />
                                <br />
                                kasa:
                                <asp:TextBox ID="kasaTextBox" runat="server" Text='<%# Bind("kasa") %>' />
                                <br />
                                muayenetarih:
                                <asp:TextBox ID="muayenetarihTextBox" runat="server" 
                                    Text='<%# Bind("muayenetarih") %>' />
                                <br />
                                alistarih:
                                <asp:TextBox ID="alistarihTextBox" runat="server" 
                                    Text='<%# Bind("alistarih") %>' />
                                <br />
                                arac_durum:
                                <asp:TextBox ID="arac_durumTextBox" runat="server" 
                                    Text='<%# Bind("arac_durum") %>' />
                                <br />
                                durumu:
                                <asp:TextBox ID="durumuTextBox" runat="server" Text='<%# Bind("durumu") %>' />
                                <br />
                                aciklama:
                                <asp:TextBox ID="aciklamaTextBox" runat="server" 
                                    Text='<%# Bind("aciklama") %>' />
                                <br />
                                gecicitarih:
                                <asp:TextBox ID="gecicitarihTextBox" runat="server" 
                                    Text='<%# Bind("gecicitarih") %>' />
                                <br />
                                c1:
                                <asp:CheckBox ID="c1CheckBox" runat="server" Checked='<%# Bind("c1") %>' />
                                <br />
                                c2:
                                <asp:CheckBox ID="c2CheckBox" runat="server" Checked='<%# Bind("c2") %>' />
                                <br />
                                c3:
                                <asp:CheckBox ID="c3CheckBox" runat="server" Checked='<%# Bind("c3") %>' />
                                <br />
                                c4:
                                <asp:CheckBox ID="c4CheckBox" runat="server" Checked='<%# Bind("c4") %>' />
                                <br />
                                c5:
                                <asp:CheckBox ID="c5CheckBox" runat="server" Checked='<%# Bind("c5") %>' />
                                <br />
                                c6:
                                <asp:CheckBox ID="c6CheckBox" runat="server" Checked='<%# Bind("c6") %>' />
                                <br />
                                c7:
                                <asp:CheckBox ID="c7CheckBox" runat="server" Checked='<%# Bind("c7") %>' />
                                <br />
                                c8:
                                <asp:CheckBox ID="c8CheckBox" runat="server" Checked='<%# Bind("c8") %>' />
                                <br />
                                c9:
                                <asp:CheckBox ID="c9CheckBox" runat="server" Checked='<%# Bind("c9") %>' />
                                <br />
                                c10:
                                <asp:CheckBox ID="c10CheckBox" runat="server" Checked='<%# Bind("c10") %>' />
                                <br />
                                c11:
                                <asp:CheckBox ID="c11CheckBox" runat="server" Checked='<%# Bind("c11") %>' />
                                <br />
                                c12:
                                <asp:CheckBox ID="c12CheckBox" runat="server" Checked='<%# Bind("c12") %>' />
                                <br />
                                c13:
                                <asp:CheckBox ID="c13CheckBox" runat="server" Checked='<%# Bind("c13") %>' />
                                <br />
                                c14:
                                <asp:CheckBox ID="c14CheckBox" runat="server" Checked='<%# Bind("c14") %>' />
                                <br />
                                c15:
                                <asp:CheckBox ID="c15CheckBox" runat="server" Checked='<%# Bind("c15") %>' />
                                <br />
                                c16:
                                <asp:CheckBox ID="c16CheckBox" runat="server" Checked='<%# Bind("c16") %>' />
                                <br />
                                c17:
                                <asp:CheckBox ID="c17CheckBox" runat="server" Checked='<%# Bind("c17") %>' />
                                <br />
                                c18:
                                <asp:CheckBox ID="c18CheckBox" runat="server" Checked='<%# Bind("c18") %>' />
                                <br />
                                c19:
                                <asp:CheckBox ID="c19CheckBox" runat="server" Checked='<%# Bind("c19") %>' />
                                <br />
                                c20:
                                <asp:CheckBox ID="c20CheckBox" runat="server" Checked='<%# Bind("c20") %>' />
                                <br />
                                c21:
                                <asp:CheckBox ID="c21CheckBox" runat="server" Checked='<%# Bind("c21") %>' />
                                <br />
                                c22:
                                <asp:CheckBox ID="c22CheckBox" runat="server" Checked='<%# Bind("c22") %>' />
                                <br />
                                c23:
                                <asp:CheckBox ID="c23CheckBox" runat="server" Checked='<%# Bind("c23") %>' />
                                <br />
                                c24:
                                <asp:CheckBox ID="c24CheckBox" runat="server" Checked='<%# Bind("c24") %>' />
                                <br />
                                c25:
                                <asp:CheckBox ID="c25CheckBox" runat="server" Checked='<%# Bind("c25") %>' />
                                <br />
                                c26:
                                <asp:CheckBox ID="c26CheckBox" runat="server" Checked='<%# Bind("c26") %>' />
                                <br />
                                ekspertiz_raporu:
                                <asp:TextBox ID="ekspertiz_raporuTextBox" runat="server" 
                                    Text='<%# Bind("ekspertiz_raporu") %>' />
                                <br />
                                sahip:
                                <asp:TextBox ID="sahipTextBox" runat="server" Text='<%# Bind("sahip") %>' />
                                <br />
                                y_anahtar:
                                <asp:CheckBox ID="y_anahtarCheckBox" runat="server" 
                                    Checked='<%# Bind("y_anahtar") %>' />
                                <br />
                                tramer1:
                                <asp:TextBox ID="tramer1TextBox" runat="server" Text='<%# Bind("tramer1") %>' />
                                <br />
                                tramer2:
                                <asp:TextBox ID="tramer2TextBox" runat="server" Text='<%# Bind("tramer2") %>' />
                                <br />
                                tramer3:
                                <asp:TextBox ID="tramer3TextBox" runat="server" Text='<%# Bind("tramer3") %>' />
                                <br />
                                tramer4:
                                <asp:TextBox ID="tramer4TextBox" runat="server" Text='<%# Bind("tramer4") %>' />
                                <br />
                                tramer5:
                                <asp:TextBox ID="tramer5TextBox" runat="server" Text='<%# Bind("tramer5") %>' />
                                <br />
                                tramer_toplam:
                                <asp:TextBox ID="tramer_toplamTextBox" runat="server" 
                                    Text='<%# Bind("tramer_toplam") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                    CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <table class="style127">
                                    <tr>
                                        <td valign="top" width="100%">
                                            <table class="style16">
                                                <tr>
                                                    <td class="style18" colspan="5" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        <asp:FormView ID="FormView6" runat="server" DataSourceID="SqlDataSource4" 
                                                            Width="480px">
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
                                                                <asp:TextBox ID="aciklamaTextBox0" runat="server" 
                                                                    Text='<%# Bind("aciklama") %>' />
                                                                <br />
                                                                rezerve_eden:
                                                                <asp:TextBox ID="rezerve_edenTextBox0" runat="server" 
                                                                    Text='<%# Bind("rezerve_eden") %>' />
                                                                <br />
                                                                rezervasyon_tarih:
                                                                <asp:TextBox ID="rezervasyon_tarihTextBox0" runat="server" 
                                                                    Text='<%# Bind("rezervasyon_tarih") %>' />
                                                                <br />
                                                                rz_onay_veren:
                                                                <asp:TextBox ID="rz_onay_verenTextBox0" runat="server" 
                                                                    Text='<%# Bind("rz_onay_veren") %>' />
                                                                <br />
                                                                rz_onay_tarihi:
                                                                <asp:TextBox ID="rz_onay_tarihiTextBox0" runat="server" 
                                                                    Text='<%# Bind("rz_onay_tarihi") %>' />
                                                                <br />
                                                                st_onay:
                                                                <asp:TextBox ID="st_onayTextBox0" runat="server" 
                                                                    Text='<%# Bind("st_onay") %>' />
                                                                <br />
                                                                st_tarih:
                                                                <asp:TextBox ID="st_tarihTextBox0" runat="server" 
                                                                    Text='<%# Bind("st_tarih") %>' />
                                                                <br />
                                                                durumu:
                                                                <asp:TextBox ID="durumuTextBox0" runat="server" Text='<%# Bind("durumu") %>' />
                                                                <br />
                                                                kayit_tarih:
                                                                <asp:TextBox ID="kayit_tarihTextBox0" runat="server" 
                                                                    Text='<%# Bind("kayit_tarih") %>' />
                                                                <br />
                                                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                                    CommandName="Insert" Text="Insert" />
                                                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                            </InsertItemTemplate>
                                                            <ItemTemplate>
                                                                <table width="480px">
                                                                    <tr>
                                                                        <td align="left" width="40px">
                                                                            Durumu</td>
                                                                        <td align="left" style="font-family: calibri; font-size: 10pt; color: #000000" 
                                                                            width="100px">
                                                                            <asp:Label ID="durumuLabel" runat="server" Text='<%# Bind("durumu") %>' />
                                                                        </td>
                                                                        <td align="left" style="font-family: calibri; font-size: 10pt; color: #000000" 
                                                                            width="70px">
                                                                            &nbsp;</td>
                                                                        <td align="right" class="style241" 
                                                                            style="font-family: calibri; font-size: 10pt; " width="140px">
                                                                            Kayıt Tarihi</td>
                                                                        <td align="left" style="font-family: calibri; font-size: 10pt; color: #000000" 
                                                                            width="130px">
                                                                            <asp:Label ID="kayit_tarihLabel" runat="server" 
                                                                                Text='<%# Bind("kayit_tarih") %>' />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            &nbsp;</td>
                                                                        <td align="left" style="font-family: calibri; font-size: 10pt; color: #000000">
                                                                            &nbsp;</td>
                                                                        <td align="left" style="font-family: calibri; font-size: 10pt; color: #000000" 
                                                                            width="70px">
                                                                            &nbsp;</td>
                                                                        <td align="right" class="style241" 
                                                                            style="font-family: calibri; font-size: 10pt; color: #000000" width="140px">
                                                                            &nbsp;</td>
                                                                        <td align="left" style="font-family: calibri; font-size: 10pt; color: #000000">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            </ItemTemplate>
                                                        </asp:FormView>
                                                    </td>
                                                    <td class="style18" rowspan="14" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;</td>
                                                    <td class="style18" rowspan="14" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        <table style="background-image: url('image/ekspertiz.png'); background-repeat: no-repeat; font-family: Arial, Helvetica, sans-serif; font-size: 11pt; height: 600px; color: #000000; font-weight: bold;" 
                                                            width="350px">
                                                            <tr>
                                                                <td class="style87" 
                                                                    style="font-family: arial, Helvetica, sans-serif; font-weight: bold; color: #000000">
                                                                </td>
                                                                <td class="style7" 
                                                                    style="font-family: arial, Helvetica, sans-serif; font-weight: bold; color: #000000">
                                                                    B<asp:CheckBox ID="c1CheckBox1" runat="server" Checked='<%# Bind("c1") %>' 
                                                                        Enabled="false" />
                                                                </td>
                                                                <td class="style109" 
                                                                    style="font-family: arial, Helvetica, sans-serif; font-weight: bold; color: #000000">
                                                                    D<asp:CheckBox ID="c2CheckBox1" runat="server" Checked='<%# Bind("c2") %>' 
                                                                        Enabled="false" />
                                                                </td>
                                                                <td class="style110" 
                                                                    style="font-family: arial, Helvetica, sans-serif; font-weight: bold; color: #000000">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" class="style88" 
                                                                    style="font-family: arial, Helvetica, sans-serif; font-weight: bold; color: #000000">
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B<asp:CheckBox ID="c3CheckBox1" runat="server" 
                                                                        Checked='<%# Bind("c3") %>' Enabled="false" />
                                                                    <br />
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D<asp:CheckBox ID="c4CheckBox1" runat="server" 
                                                                        Checked='<%# Bind("c4") %>' Enabled="false" />
                                                                </td>
                                                                <td class="style13" 
                                                                    style="font-family: arial, Helvetica, sans-serif; font-weight: bold; color: #000000">
                                                                    B<asp:CheckBox ID="c19CheckBox1" runat="server" Checked='<%# Bind("c19") %>' 
                                                                        Enabled="false" />
                                                                </td>
                                                                <td class="style265" 
                                                                    style="font-family: arial, Helvetica, sans-serif; font-weight: bold; color: #000000">
                                                                    D<asp:CheckBox ID="c20CheckBox1" runat="server" Checked='<%# Bind("c20") %>' 
                                                                        Enabled="false" />
                                                                </td>
                                                                <td class="style52" 
                                                                    style="font-family: arial, Helvetica, sans-serif; font-weight: bold; color: #000000">
                                                                    &nbsp; &nbsp;B<asp:CheckBox ID="c5CheckBox1" runat="server" Checked='<%# Bind("c5") %>' 
                                                                        Enabled="false" />
                                                                    <br />
                                                                    &nbsp; &nbsp;D<asp:CheckBox ID="c6CheckBox1" runat="server" Checked='<%# Bind("c6") %>' 
                                                                        Enabled="false" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" class="style89" 
                                                                    style="font-family: arial, Helvetica, sans-serif; font-weight: bold; color: #000000" 
                                                                    valign="middle">
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B<asp:CheckBox ID="c7CheckBox1" runat="server" 
                                                                        Checked='<%# Bind("c7") %>' Enabled="false" />
                                                                    <br />
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D<asp:CheckBox ID="c8CheckBox1" runat="server" 
                                                                        Checked='<%# Bind("c8") %>' Enabled="false" />
                                                                </td>
                                                                <td class="style93" 
                                                                    style="font-family: arial, Helvetica, sans-serif; font-weight: bold; color: #000000" 
                                                                    valign="middle">
                                                                    B<asp:CheckBox ID="c21CheckBox1" runat="server" Checked='<%# Bind("c21") %>' 
                                                                        Enabled="false" />
                                                                </td>
                                                                <td class="style21" 
                                                                    style="font-family: arial, Helvetica, sans-serif; font-weight: bold; color: #000000" 
                                                                    valign="middle">
                                                                    D<asp:CheckBox ID="c22CheckBox1" runat="server" Checked='<%# Bind("c22") %>' 
                                                                        Enabled="false" />
                                                                </td>
                                                                <td class="style48" 
                                                                    style="font-family: arial, Helvetica, sans-serif; font-weight: bold; color: #000000" 
                                                                    valign="middle">
                                                                    &nbsp;&nbsp; B<asp:CheckBox ID="c9CheckBox1" runat="server" Checked='<%# Bind("c9") %>' 
                                                                        Enabled="false" />
                                                                    <br />
                                                                    &nbsp; &nbsp;D<asp:CheckBox ID="c10CheckBox1" runat="server" Checked='<%# Bind("c10") %>' 
                                                                        Enabled="false" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" class="style90" 
                                                                    style="font-family: arial, Helvetica, sans-serif; font-weight: bold; color: #000000" 
                                                                    valign="top">
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B<asp:CheckBox ID="c11CheckBox1" runat="server" 
                                                                        Checked='<%# Bind("c11") %>' Enabled="false" />
                                                                    <br />
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D<asp:CheckBox ID="c12CheckBox1" runat="server" 
                                                                        Checked='<%# Bind("c12") %>' Enabled="false" />
                                                                </td>
                                                                <td class="style94" 
                                                                    style="font-family: arial, Helvetica, sans-serif; font-weight: bold; color: #000000" 
                                                                    valign="top">
                                                                </td>
                                                                <td class="style17" 
                                                                    style="font-family: arial, Helvetica, sans-serif; font-weight: bold; color: #000000" 
                                                                    valign="top">
                                                                </td>
                                                                <td class="style49" 
                                                                    style="font-family: arial, Helvetica, sans-serif; font-weight: bold; color: #000000" 
                                                                    valign="top">
                                                                    &nbsp;&nbsp; B<asp:CheckBox ID="c13CheckBox1" runat="server" Checked='<%# Bind("c13") %>' 
                                                                        Enabled="false" />
                                                                    <br />
                                                                    &nbsp; &nbsp;D<asp:CheckBox ID="c14CheckBox1" runat="server" Checked='<%# Bind("c14") %>' 
                                                                        Enabled="false" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" class="style96" 
                                                                    style="font-family: arial, Helvetica, sans-serif; font-weight: bold; color: #000000" 
                                                                    valign="bottom">
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B<asp:CheckBox ID="c15CheckBox1" runat="server" 
                                                                        Checked='<%# Bind("c15") %>' Enabled="false" />
                                                                    <br />
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D<asp:CheckBox ID="c16CheckBox1" runat="server" 
                                                                        Checked='<%# Bind("c16") %>' Enabled="false" />
                                                                </td>
                                                                <td class="style97" 
                                                                    style="font-family: arial, Helvetica, sans-serif; font-weight: bold; color: #000000" 
                                                                    valign="middle">
                                                                    B<asp:CheckBox ID="c23CheckBox1" runat="server" Checked='<%# Bind("c23") %>' 
                                                                        Enabled="false" />
                                                                </td>
                                                                <td class="style98" 
                                                                    style="font-family: arial, Helvetica, sans-serif; font-weight: bold; color: #000000" 
                                                                    valign="middle">
                                                                    D<asp:CheckBox ID="c24CheckBox1" runat="server" Checked='<%# Bind("c24") %>' 
                                                                        Enabled="false" />
                                                                </td>
                                                                <td class="style99" 
                                                                    style="font-family: arial, Helvetica, sans-serif; font-weight: bold; color: #000000" 
                                                                    valign="bottom">
                                                                    &nbsp; B<asp:CheckBox ID="c17CheckBox1" runat="server" Checked='<%# Bind("c17") %>' 
                                                                        Enabled="false" />
                                                                    <br />
                                                                    &nbsp;&nbsp;D<asp:CheckBox ID="c18CheckBox1" runat="server" Checked='<%# Bind("c18") %>' 
                                                                        Enabled="false" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" class="style111" 
                                                                    style="font-family: arial, Helvetica, sans-serif; font-weight: bold; color: #000000">
                                                                    &nbsp;</td>
                                                                <td class="style95" 
                                                                    style="font-family: arial, Helvetica, sans-serif; font-weight: bold; color: #000000">
                                                                    B<asp:CheckBox ID="c25CheckBox1" runat="server" Checked='<%# Bind("c25") %>' 
                                                                        Enabled="false" />
                                                                </td>
                                                                <td class="style113" 
                                                                    style="font-family: arial, Helvetica, sans-serif; font-weight: bold; color: #000000">
                                                                    D<asp:CheckBox ID="c26CheckBox1" runat="server" Checked='<%# Bind("c26") %>' 
                                                                        Enabled="false" />
                                                                </td>
                                                                <td style="font-family: arial, Helvetica, sans-serif; font-weight: bold; color: #000000">
                                                                    &nbsp;</td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td class="style18" rowspan="14" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                    <td class="style18" rowspan="14" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;" valign="top">
                                                        <br />
                                                        <table style="font-family: calibri; font-size: 12pt; font-weight: bold">
                                                            <tr>
                                                                <td class="style238" colspan="2" 
                                                                    style="font-family: calibri; font-size: 12pt; font-weight: bold; color: #F58220">
                                                                    Tramer Kaydı :</td>
                                                            </tr>
                                                            <tr>
                                                                <td style="font-family: calibri; font-size: 12pt; font-weight: bold; color: #F58220;">
                                                                    Hasar 1
                                                                </td>
                                                                <td style="font-family: calibri; font-size: 10pt; color: #000000; font-weight: bold;">
                                                                    :<asp:Label ID="tramer1Label" runat="server" Text='<%# Bind("tramer1") %>' />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="font-family: calibri; font-size: 12pt; font-weight: bold; color: #F58220;">
                                                                    Hasar 2</td>
                                                                <td style="font-family: calibri; font-size: 10pt; color: #000000; font-weight: bold;">
                                                                    :<asp:Label ID="tramer2Label" runat="server" Text='<%# Bind("tramer2") %>' />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="font-family: calibri; font-size: 12pt; font-weight: bold; color: #F58220;">
                                                                    Hasar 3</td>
                                                                <td style="font-family: calibri; font-size: 10pt; color: #000000; font-weight: bold;">
                                                                    :<asp:Label ID="tramer3Label" runat="server" Text='<%# Bind("tramer3") %>' />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="font-family: calibri; font-size: 12pt; font-weight: bold; color: #F58220;">
                                                                    Hasar 4</td>
                                                                <td style="font-family: calibri; font-size: 10pt; color: #000000; font-weight: bold;">
                                                                    :<asp:Label ID="tramer4Label" runat="server" Text='<%# Bind("tramer4") %>' />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="font-family: calibri; font-size: 12pt; font-weight: bold; color: #F58220;">
                                                                    Hasar 5</td>
                                                                <td style="font-family: calibri; font-size: 10pt; color: #000000; font-weight: bold;">
                                                                    :<asp:Label ID="tramer5Label" runat="server" Text='<%# Bind("tramer5") %>' />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="font-family: calibri; font-size: 12pt; font-weight: bold; color: #F58220;">
                                                                    TOPLAM</td>
                                                                <td style="font-family: calibri; font-size: 10pt; color: #000000; font-weight: bold;">
                                                                    :<asp:Label ID="tramer_toplamLabel" runat="server" 
                                                                        Text='<%# Bind("tramer_toplam") %>' />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <span style="font-family: calibri; font-size: 13pt; font-weight: bold; color: #F58220">
                                                        <br />
                                                        <br />
                                                        Ekspertiz :<br />
                                                        <br />
                                                        </span>
                                                        <asp:Label ID="ekspertiz_raporuLabel" runat="server" Font-Names="Calibri" 
                                                            Font-Size="10pt" ForeColor="Black" style="text-align: left" 
                                                            Text='<%# Bind("ekspertiz_raporu") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp; Marka</td>
                                                    <td class="style138" height="30" style="font-family: calibri; font-size: 10pt">
                                                        <asp:Label ID="marka_adLabel" runat="server" Text='<%# Bind("marka_ad") %>' />
                                                    </td>
                                                    <td class="style19" height="30" style="font-family: calibri; font-size: 10pt">
                                                        &nbsp;</td>
                                                    <td class="style22" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        Şase No</td>
                                                    <td height="30" style="font-family: calibri; font-size: 10pt">
                                                        <asp:Label ID="sase_noLabel" runat="server" Text='<%# Bind("sase_no") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp; Model</td>
                                                    <td class="style138" height="30" style="font-family: calibri; font-size: 10pt">
                                                        <asp:Label ID="model_adLabel" runat="server" Text='<%# Bind("model_ad") %>' />
                                                    </td>
                                                    <td class="style19" height="30" style="font-family: calibri; font-size: 10pt">
                                                        &nbsp;</td>
                                                    <td class="style22" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        Yakıt</td>
                                                    <td height="30" style="font-family: calibri; font-size: 10pt">
                                                        <asp:Label ID="yakitLabel" runat="server" Text='<%# Bind("yakit") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp; Plaka</td>
                                                    <td class="style138" height="30" style="font-family: calibri; font-size: 10pt">
                                                        <asp:Label ID="plakaLabel" runat="server" Text='<%# Bind("plaka") %>' />
                                                    </td>
                                                    <td class="style19" height="30" style="font-family: calibri; font-size: 10pt">
                                                        &nbsp;</td>
                                                    <td class="style22" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        Kasa</td>
                                                    <td height="30" style="font-family: calibri; font-size: 10pt">
                                                        <asp:Label ID="kasaLabel" runat="server" Text='<%# Bind("kasa") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp; Satış Fiyat</td>
                                                    <td class="style138" height="30" style="font-family: calibri; font-size: 10pt">
                                                        <asp:Label ID="satis_fiyatLabel" runat="server" 
                                                            Text='<%# Bind("satis_fiyat") %>' />
                                                    </td>
                                                    <td class="style19" height="30" style="font-family: calibri; font-size: 10pt">
                                                        &nbsp;</td>
                                                    <td class="style22" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        Muayene Tarihi</td>
                                                    <td height="30" style="font-family: calibri; font-size: 10pt">
                                                        <asp:Label ID="muayenetarihLabel" runat="server" 
                                                            Text='<%# Bind("muayenetarih") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp; Alış Fiyat</td>
                                                    <td class="style138" height="30" style="font-family: calibri; font-size: 10pt">
                                                        <asp:Label ID="alis_fiyatLabel" runat="server" 
                                                            Text='<%# Bind("alis_fiyat") %>' />
                                                    </td>
                                                    <td class="style19" height="30" style="font-family: calibri; font-size: 10pt">
                                                        &nbsp;</td>
                                                    <td class="style22" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        Alış Tarihi</td>
                                                    <td height="30" style="font-family: calibri; font-size: 10pt">
                                                        <asp:Label ID="alistarihLabel" runat="server" Text='<%# Bind("alistarih") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp; Masraf 1</td>
                                                    <td class="style138" height="30" style="font-family: calibri; font-size: 10pt">
                                                        <asp:Label ID="masraf1Label" runat="server" Text='<%# Bind("masraf1") %>' />
                                                    </td>
                                                    <td class="style19" height="30" style="font-family: calibri; font-size: 10pt">
                                                        &nbsp;</td>
                                                    <td class="style22" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        Yed.Anahtar</td>
                                                    <td height="30" style="font-family: calibri; font-size: 10pt">
                                                        <asp:CheckBox ID="y_anahtarCheckBox" runat="server" 
                                                            Checked='<%# Bind("y_anahtar") %>' Enabled="false" 
                                                            oncheckedchanged="y_anahtarCheckBox_CheckedChanged" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp; Masraf 2</td>
                                                    <td class="style138" height="30" style="font-family: calibri; font-size: 10pt">
                                                        <asp:Label ID="masraf2Label" runat="server" Text='<%# Bind("masraf2") %>' />
                                                    </td>
                                                    <td class="style19" height="30" style="font-family: calibri; font-size: 10pt">
                                                        &nbsp;</td>
                                                    <td class="style22" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        Sahip</td>
                                                    <td height="30" style="font-family: calibri; font-size: 10pt">
                                                        <asp:Label ID="sahipLabel" runat="server" Text='<%# Bind("sahip") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp; Toplam Maaliyet</td>
                                                    <td class="style138" height="30" style="font-family: calibri; font-size: 10pt">
                                                        <asp:Label ID="top_maaliyetLabel" runat="server" 
                                                            Text='<%# Bind("top_maaliyet") %>' />
                                                    </td>
                                                    <td class="style19" height="30" style="font-family: calibri; font-size: 10pt">
                                                        &nbsp;</td>
                                                    <td class="style22" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        Park Yeri</td>
                                                    <td height="30" style="font-family: calibri; font-size: 10pt">
                                                        <asp:Label ID="arac_durumLabel" runat="server" 
                                                            Text='<%# Bind("arac_durum") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp; Model Yıl</td>
                                                    <td class="style138" height="30" style="font-family: calibri; font-size: 10pt">
                                                        <asp:Label ID="model_yiliLabel" runat="server" 
                                                            Text='<%# Bind("model_yili") %>' />
                                                    </td>
                                                    <td class="style19" height="30" style="font-family: calibri; font-size: 10pt">
                                                        &nbsp;</td>
                                                    <td class="style22" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        Durumu</td>
                                                    <td height="30" style="font-family: calibri; font-size: 10pt">
                                                        <asp:Label ID="durumuLabel0" runat="server" Text='<%# Bind("durumu") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp; Gcc. Tarih</td>
                                                    <td class="style138" height="30" style="font-family: calibri; font-size: 10pt">
                                                        <asp:Label ID="gecicitarihLabel" runat="server" 
                                                            Text='<%# Bind("gecicitarih") %>' />
                                                    </td>
                                                    <td class="style19" height="30" style="font-family: calibri; font-size: 10pt">
                                                        &nbsp;</td>
                                                    <td class="style22" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        Km</td>
                                                    <td height="30" style="font-family: calibri; font-size: 10pt">
                                                        <asp:Label ID="kmLabel" runat="server" Text='<%# Bind("km") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp; Renk</td>
                                                    <td class="style138" height="30" style="font-family: calibri; font-size: 10pt">
                                                        <asp:Label ID="renkLabel" runat="server" Text='<%# Bind("renk") %>' />
                                                    </td>
                                                    <td class="style19" height="30" style="font-family: calibri; font-size: 10pt">
                                                        &nbsp;</td>
                                                    <td class="style22" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        Motor No</td>
                                                    <td height="30" style="font-family: calibri; font-size: 10pt">
                                                        <asp:Label ID="motor_noLabel" runat="server" Text='<%# Bind("motor_no") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp; Vites</td>
                                                    <td class="style138" height="30" style="font-family: calibri; font-size: 10pt">
                                                        <asp:Label ID="vitesLabel" runat="server" Text='<%# Bind("vites") %>' />
                                                    </td>
                                                    <td class="style19" height="30" style="font-family: calibri; font-size: 10pt">
                                                        &nbsp;</td>
                                                    <td class="style22" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        Güç</td>
                                                    <td height="30" style="font-family: calibri; font-size: 10pt">
                                                        <asp:Label ID="gucLabel" runat="server" Text='<%# Bind("guc") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        &nbsp; Açıklama</td>
                                                    <td class="style138" height="30" style="font-family: calibri; font-size: 10pt">
                                                        <asp:Label ID="aciklamaLabel" runat="server" Text='<%# Bind("aciklama") %>' />
                                                    </td>
                                                    <td class="style19" height="30" style="font-family: calibri; font-size: 10pt">
                                                        &nbsp;</td>
                                                    <td class="style22" height="30" 
                                                        style="color: #F58220; font-family: calibri; font-size: 10pt;">
                                                        Motor</td>
                                                    <td height="30" style="font-family: calibri; font-size: 10pt">
                                                        <asp:Label ID="motorLabel" runat="server" Text='<%# Bind("motor") %>' />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </ItemTemplate>
                        </asp:FormView>
                        <br />
                    </asp:Panel>
    
                    </td>
            </tr>
            <tr>
                <td class="style9" width="100%" colspan="4" valign="top">
    
                      <a href="javascript: history.go(-1);">
                      <asp:Image ID="Image1" runat="server" ImageUrl="~/image/geri.jpg" 
                          ImageAlign="AbsBottom" /></a>
 
                        <asp:Button ID="ImageButton4" runat="server" BackColor="#666666" 
                            ForeColor="White" Height="28px" Text="İptal" 
                            Width="80px" onclick="ImageButton4_Click1" />
                        <asp:Button ID="Button2" runat="server" BackColor="#666666" 
                            ForeColor="White" Height="28px" onclick="Button2_Click1" Text="Güncelle" 
                            Width="80px" />
                        <asp:Button ID="btnrezerve" runat="server" BackColor="#666666" 
                            ForeColor="White" Height="28px" onclick="ImageButton5_Click" Text="Rezerve" 
                            Width="80px" />
                        <asp:Button ID="btnsatisfoy" runat="server" BackColor="#666666" 
                            ForeColor="White" Height="28px" onclick="btnsatisfoy_Click1" Text="Satış Föyü" 
                            Width="80px" />
    
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:mydb %>" 
                                        
                                        
                        
                                        
                                        
                                        
                                        
                            
                            
                            SelectCommand="SELECT dbo.markalar.marka_ad, dbo.modeller.model_ad, araclar.plaka, araclar.satis_fiyat, araclar.alis_fiyat, araclar.masraf1, araclar.masraf2, araclar.top_maaliyet, araclar.model_yili, araclar.km, araclar.renk, araclar.vites, araclar.motor, araclar.guc, araclar.motor_no, araclar.sase_no, araclar.yakit, araclar.kasa, CONVERT (varchar, araclar.muayene_tarih, 104) AS muayenetarih, CONVERT (varchar, araclar.alis_tarih, 104) AS alistarih, araclar.arac_durum, araclar.durumu, araclar.aciklama, CONVERT (varchar, araclar.gecici_tarih, 104) AS gecicitarih, ekspertiz.c1, ekspertiz.c2, ekspertiz.c3, ekspertiz.c4, ekspertiz.c5, ekspertiz.c6, ekspertiz.c7, ekspertiz.c8, ekspertiz.c9, ekspertiz.c10, ekspertiz.c11, ekspertiz.c12, ekspertiz.c13, ekspertiz.c14, ekspertiz.c15, ekspertiz.c16, ekspertiz.c17, ekspertiz.c18, ekspertiz.c19, ekspertiz.c20, ekspertiz.c21, ekspertiz.c22, ekspertiz.c23, ekspertiz.c24, ekspertiz.c25, ekspertiz.c26, ekspertiz.ekspertiz_raporu, araclar.sahip, ekspertiz.y_anahtar, araclar.tramer1, araclar.tramer2, araclar.tramer3, araclar.tramer4, araclar.tramer5, araclar.tramer_toplam FROM araclar INNER JOIN dbo.modeller ON araclar.model_id = dbo.modeller.model_id INNER JOIN dbo.markalar ON araclar.marka_id = dbo.markalar.marka_id INNER JOIN ekspertiz ON araclar.ekspertiz_id = ekspertiz.id WHERE (araclar.arac_id = @aracid)">
                                        <SelectParameters>
                                            <asp:QueryStringParameter Name="aracid" QueryStringField="aracid" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
    
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:mydb %>" 
                                    
                                    
                                    
                                    
                            SelectCommand="SELECT aciklama, rezerve_eden, rezervasyon_tarih, rz_onay_veren, rz_onay_tarihi, st_onay, st_tarih, durumu, kayit_tarih FROM araclar WHERE (arac_id = @arac_id)">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="arac_id" QueryStringField="aracid" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
    
                </td>
            </tr>
            </table>
    
        <br />
    
        <br />
    
    </div>
    </form>
</body>
</html>
