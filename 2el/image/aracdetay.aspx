<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aracdetay.aspx.cs" Inherits="aracdetay" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .style2
        {
            width: 101%;
        }
           #a
        {
            position:absolute;
            margin-top:0px;
            right:50px;
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
        }
        
        .style12
        {
        }
        .style16
        {
            width: 100%;
             font-family:Arial;
            font-size:small;
            font-weight:bold;
        }
        .style18
        {
            width: 81px;
        }
        .style17
        {
            width: 128px;
        }
        .style19
        {
            width: 29px;
        }
               
        
        .style22
        {
            width: 107px;
        }
        
        .style23
        {
            height: 414px;
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
                         
         .style109
        {
            width: 100%;
            height:100%;
        }
       
        
        .style112
        {
            width: 34px;
        }
        .style113
        {
            width: 59px;
        }
        .style117
        {
            height: 24px;
        }
        .style118
        {
            width: 59px;
            height: 24px;
        }
        .style119
        {
            width: 34px;
            height: 24px;
        }
       
        
        .style120
        {
            width: 65px;
        }
        .style121
        {
            width: 65px;
            height: 24px;
        }
       
        
        </style>
</head>
<body>
    <form id="form1" runat="server">
     <div id="a">
    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="Small" Height="21px" onclick="Button1_Click" 
            Text="Çıkış" /></div>
    <div>
        <table class="style2">
            <tr>
                <td class="style9">
    
                 <asp:ImageButton ID="ImageButton2" runat="server" Height="85px" 
                     ImageUrl="~/image/2.EL.PNG" Width="273px" />
    
                </td>
                <td class="style12">
    
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
    
                    &nbsp;</td>
                <td class="style12">
    
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9" colspan="2">
    
                    <asp:Panel ID="Panel1" runat="server" GroupingText="Araç Bilgileri" 
                        Font-Bold="True" Font-Names="arial" Font-Size="Small" Width="95%">
                        <table class="style16">
                            <tr>
                                <td class="style23">
                                    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" 
                                        DefaultMode="Edit" Width="49%">
                                        <EditItemTemplate>
                                            <table class="style16">
                                                <tr>
                                                    <td class="style18">
                                                        Marka :</td>
                                                    <td class="style17">
                                                        <asp:TextBox ID="marka_adTextBox" runat="server" 
                                                            Text='<%# Bind("marka_ad") %>' />
                                                    </td>
                                                    <td class="style19">
                                                        &nbsp;</td>
                                                    <td class="style22">
                                                        Şase No :</td>
                                                    <td>
                                                        <asp:TextBox ID="sase_noTextBox" runat="server" Text='<%# Bind("sase_no") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18">
                                                        Model :</td>
                                                    <td class="style17">
                                                        <asp:TextBox ID="model_adTextBox" runat="server" 
                                                            Text='<%# Bind("model_ad") %>' />
                                                    </td>
                                                    <td class="style19">
                                                        &nbsp;</td>
                                                    <td class="style22">
                                                        Yakıt :</td>
                                                    <td>
                                                        <asp:TextBox ID="yakitTextBox" runat="server" Text='<%# Bind("yakit") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18">
                                                        Plaka :</td>
                                                    <td class="style17">
                                                        <asp:TextBox ID="plakaTextBox" runat="server" Text='<%# Bind("plaka") %>' />
                                                    </td>
                                                    <td class="style19">
                                                        &nbsp;</td>
                                                    <td class="style22">
                                                        Kasa :</td>
                                                    <td>
                                                        <asp:TextBox ID="kasaTextBox" runat="server" Text='<%# Bind("kasa") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18">
                                                        Satış Fiyat :</td>
                                                    <td class="style17">
                                                        <asp:TextBox ID="satis_fiyatTextBox" runat="server" style="margin-top: 0px" 
                                                            Text='<%# Bind("satis_fiyat") %>' />
                                                    </td>
                                                    <td class="style19">
                                                        &nbsp;</td>
                                                    <td class="style22">
                                                        Muayene Tarihi :</td>
                                                    <td>
                                                        <asp:TextBox ID="muayenetarihTextBox" runat="server" 
                                                            Text='<%# Bind("muayenetarih") %>' ReadOnly="True" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18">
                                                        Alış Fiyat :</td>
                                                    <td class="style17">
                                                        <asp:TextBox ID="alis_fiyatTextBox" runat="server" 
                                                            Text='<%# Bind("alis_fiyat") %>' />
                                                    </td>
                                                    <td class="style19">
                                                        &nbsp;</td>
                                                    <td class="style22">
                                                        Alış Tarihi :</td>
                                                    <td>
                                                        <asp:TextBox ID="alistarihTextBox" runat="server" 
                                                            Text='<%# Bind("alistarih") %>' ReadOnly="True" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18">
                                                        Model Yıl :</td>
                                                    <td class="style17">
                                                        <asp:TextBox ID="model_yiliTextBox" runat="server" 
                                                            Text='<%# Bind("model_yili") %>' />
                                                    </td>
                                                    <td class="style19">
                                                        &nbsp;</td>
                                                    <td class="style22">
                                                        Araç Durum :</td>
                                                    <td>
                                                        <asp:TextBox ID="arac_durumTextBox" runat="server" 
                                                            Text='<%# Bind("arac_durum") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18">
                                                        Km :</td>
                                                    <td class="style17">
                                                        <asp:TextBox ID="kmTextBox" runat="server" Text='<%# Bind("km") %>' />
                                                    </td>
                                                    <td class="style19">
                                                        &nbsp;</td>
                                                    <td class="style22">
                                                        Park :</td>
                                                    <td>
                                                        <asp:TextBox ID="parkTextBox" runat="server" Text='<%# Bind("park") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18">
                                                        Renk :</td>
                                                    <td class="style17">
                                                        <asp:TextBox ID="renkTextBox" runat="server" Text='<%# Bind("renk") %>' />
                                                    </td>
                                                    <td class="style19">
                                                        &nbsp;</td>
                                                    <td class="style22">
                                                        Durumu :</td>
                                                    <td>
                                                        <asp:TextBox ID="durumuTextBox" runat="server" Text='<%# Bind("durumu") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18">
                                                        Vites :</td>
                                                    <td class="style17">
                                                        <asp:TextBox ID="vitesTextBox" runat="server" Text='<%# Bind("vites") %>' />
                                                    </td>
                                                    <td class="style19">
                                                        &nbsp;</td>
                                                    <td class="style22">
                                                        Gcc. Tarih :</td>
                                                    <td>
                                                        <asp:TextBox ID="gecicitarihTextBox" runat="server" 
                                                            Text='<%# Bind("gecicitarih") %>' ReadOnly="True" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18">
                                                        Motor :</td>
                                                    <td class="style17">
                                                        <asp:TextBox ID="motorTextBox" runat="server" Text='<%# Bind("motor") %>' />
                                                    </td>
                                                    <td class="style19">
                                                        &nbsp;</td>
                                                    <td class="style22">
                                                        Motor No :</td>
                                                    <td>
                                                        <asp:TextBox ID="motor_noTextBox" runat="server" 
                                                            Text='<%# Bind("motor_no") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18">
                                                        Güç :</td>
                                                    <td class="style17">
                                                        <asp:TextBox ID="gucTextBox" runat="server" Text='<%# Bind("guc") %>' />
                                                    </td>
                                                    <td class="style19">
                                                        &nbsp;</td>
                                                    <td class="style22">
                                                        Açıklama :</td>
                                                    <td>
                                                        <asp:TextBox ID="aciklamaTextBox" runat="server" 
                                                            Text='<%# Bind("aciklama") %>' Height="54px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18">
                                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                            CommandName="Update" onclick="UpdateButton_Click1" Text="Güncelle" />
                                                    </td>
                                                    <td class="style17">
                                                        <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" 
                                                            CommandName="Cancel" onclick="UpdateCancelButton_Click2" Text="İptal" />
                                                    </td>
                                                    <td class="style19">
                                                        &nbsp;</td>
                                                    <td class="style22">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            marka_ad:
                                            <asp:TextBox ID="marka_adTextBox0" runat="server" 
                                                Text='<%# Bind("marka_ad") %>' />
                                            <br />
                                            model_ad:
                                            <asp:TextBox ID="model_adTextBox0" runat="server" 
                                                Text='<%# Bind("model_ad") %>' />
                                            <br />
                                            plaka:
                                            <asp:TextBox ID="plakaTextBox0" runat="server" Text='<%# Bind("plaka") %>' />
                                            <br />
                                            satis_fiyat:
                                            <asp:TextBox ID="satis_fiyatTextBox0" runat="server" 
                                                Text='<%# Bind("satis_fiyat") %>' />
                                            <br />
                                            alis_fiyat:
                                            <asp:TextBox ID="alis_fiyatTextBox0" runat="server" 
                                                Text='<%# Bind("alis_fiyat") %>' />
                                            <br />
                                            model_yili:
                                            <asp:TextBox ID="model_yiliTextBox0" runat="server" 
                                                Text='<%# Bind("model_yili") %>' />
                                            <br />
                                            km:
                                            <asp:TextBox ID="kmTextBox0" runat="server" Text='<%# Bind("km") %>' />
                                            <br />
                                            renk:
                                            <asp:TextBox ID="renkTextBox0" runat="server" Text='<%# Bind("renk") %>' />
                                            <br />
                                            vites:
                                            <asp:TextBox ID="vitesTextBox0" runat="server" Text='<%# Bind("vites") %>' />
                                            <br />
                                            motor:
                                            <asp:TextBox ID="motorTextBox0" runat="server" Text='<%# Bind("motor") %>' />
                                            <br />
                                            guc:
                                            <asp:TextBox ID="gucTextBox0" runat="server" Text='<%# Bind("guc") %>' />
                                            <br />
                                            motor_no:
                                            <asp:TextBox ID="motor_noTextBox0" runat="server" 
                                                Text='<%# Bind("motor_no") %>' />
                                            <br />
                                            sase_no:
                                            <asp:TextBox ID="sase_noTextBox0" runat="server" 
                                                Text='<%# Bind("sase_no") %>' />
                                            <br />
                                            yakit:
                                            <asp:TextBox ID="yakitTextBox0" runat="server" Text='<%# Bind("yakit") %>' />
                                            <br />
                                            kasa:
                                            <asp:TextBox ID="kasaTextBox0" runat="server" Text='<%# Bind("kasa") %>' />
                                            <br />
                                            muayenetarih:
                                            <asp:TextBox ID="muayenetarihTextBox0" runat="server" 
                                                Text='<%# Bind("muayenetarih") %>' />
                                            <br />
                                            alistarih:
                                            <asp:TextBox ID="alistarihTextBox0" runat="server" 
                                                Text='<%# Bind("alistarih") %>' />
                                            <br />
                                            arac_durum:
                                            <asp:TextBox ID="arac_durumTextBox0" runat="server" 
                                                Text='<%# Bind("arac_durum") %>' />
                                            <br />
                                            park:
                                            <asp:TextBox ID="parkTextBox0" runat="server" Text='<%# Bind("park") %>' />
                                            <br />
                                            durumu:
                                            <asp:TextBox ID="durumuTextBox0" runat="server" Text='<%# Bind("durumu") %>' />
                                            <br />
                                            aciklama:
                                            <asp:TextBox ID="aciklamaTextBox0" runat="server" 
                                                Text='<%# Bind("aciklama") %>' />
                                            <br />
                                            gecicitarih:
                                            <asp:TextBox ID="gecicitarihTextBox0" runat="server" 
                                                Text='<%# Bind("gecicitarih") %>' />
                                            <br />
                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                CommandName="Insert" Text="Insert" />
                                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            marka_ad:
                                            <asp:Label ID="marka_adLabel" runat="server" Text='<%# Bind("marka_ad") %>' />
                                            <br />
                                            model_ad:
                                            <asp:Label ID="model_adLabel" runat="server" Text='<%# Bind("model_ad") %>' />
                                            <br />
                                            plaka:
                                            <asp:Label ID="plakaLabel" runat="server" Text='<%# Bind("plaka") %>' />
                                            <br />
                                            satis_fiyat:
                                            <asp:Label ID="satis_fiyatLabel" runat="server" 
                                                Text='<%# Bind("satis_fiyat") %>' />
                                            <br />
                                            alis_fiyat:
                                            <asp:Label ID="alis_fiyatLabel" runat="server" 
                                                Text='<%# Bind("alis_fiyat") %>' />
                                            <br />
                                            model_yili:
                                            <asp:Label ID="model_yiliLabel" runat="server" 
                                                Text='<%# Bind("model_yili") %>' />
                                            <br />
                                            km:
                                            <asp:Label ID="kmLabel" runat="server" Text='<%# Bind("km") %>' />
                                            <br />
                                            renk:
                                            <asp:Label ID="renkLabel" runat="server" Text='<%# Bind("renk") %>' />
                                            <br />
                                            vites:
                                            <asp:Label ID="vitesLabel" runat="server" Text='<%# Bind("vites") %>' />
                                            <br />
                                            motor:
                                            <asp:Label ID="motorLabel" runat="server" Text='<%# Bind("motor") %>' />
                                            <br />
                                            guc:
                                            <asp:Label ID="gucLabel" runat="server" Text='<%# Bind("guc") %>' />
                                            <br />
                                            motor_no:
                                            <asp:Label ID="motor_noLabel" runat="server" Text='<%# Bind("motor_no") %>' />
                                            <br />
                                            sase_no:
                                            <asp:Label ID="sase_noLabel" runat="server" Text='<%# Bind("sase_no") %>' />
                                            <br />
                                            yakit:
                                            <asp:Label ID="yakitLabel" runat="server" Text='<%# Bind("yakit") %>' />
                                            <br />
                                            kasa:
                                            <asp:Label ID="kasaLabel" runat="server" Text='<%# Bind("kasa") %>' />
                                            <br />
                                            muayenetarih:
                                            <asp:Label ID="muayenetarihLabel" runat="server" 
                                                Text='<%# Bind("muayenetarih") %>' />
                                            <br />
                                            alistarih:
                                            <asp:Label ID="alistarihLabel" runat="server" Text='<%# Bind("alistarih") %>' />
                                            <br />
                                            arac_durum:
                                            <asp:Label ID="arac_durumLabel" runat="server" 
                                                Text='<%# Bind("arac_durum") %>' />
                                            <br />
                                            park:
                                            <asp:Label ID="parkLabel" runat="server" Text='<%# Bind("park") %>' />
                                            <br />
                                            durumu:
                                            <asp:Label ID="durumuLabel" runat="server" Text='<%# Bind("durumu") %>' />
                                            <br />
                                            aciklama:
                                            <asp:Label ID="aciklamaLabel" runat="server" Text='<%# Bind("aciklama") %>' />
                                            <br />
                                            gecicitarih:
                                            <asp:Label ID="gecicitarihLabel" runat="server" 
                                                Text='<%# Bind("gecicitarih") %>' />
                                            <br />
                                        </ItemTemplate>
                                    </asp:FormView>
                                    <asp:FormView ID="FormView2" runat="server" 
                                        BackImageUrl="www.2el.aldatmazportal.com/image/ekspertiz.png" DataKeyNames="id" 
                                        DataSourceID="SqlDataSource2" Height="600px" Width="341px" 
                                        Font-Bold="True" Font-Names="arial" Font-Size="Small">
                                        <EditItemTemplate>
                                            id:
                                            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
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
                                            <asp:LinkButton ID="UpdateButton0" runat="server" CausesValidation="True" 
                                                CommandName="Update" Text="Update" />
                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton0" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            c1:
                                            <asp:CheckBox ID="c1CheckBox0" runat="server" Checked='<%# Bind("c1") %>' />
                                            <br />
                                            c2:
                                            <asp:CheckBox ID="c2CheckBox0" runat="server" Checked='<%# Bind("c2") %>' />
                                            <br />
                                            c3:
                                            <asp:CheckBox ID="c3CheckBox0" runat="server" Checked='<%# Bind("c3") %>' />
                                            <br />
                                            c4:
                                            <asp:CheckBox ID="c4CheckBox0" runat="server" Checked='<%# Bind("c4") %>' />
                                            <br />
                                            c5:
                                            <asp:CheckBox ID="c5CheckBox0" runat="server" Checked='<%# Bind("c5") %>' />
                                            <br />
                                            c6:
                                            <asp:CheckBox ID="c6CheckBox0" runat="server" Checked='<%# Bind("c6") %>' />
                                            <br />
                                            c7:
                                            <asp:CheckBox ID="c7CheckBox0" runat="server" Checked='<%# Bind("c7") %>' />
                                            <br />
                                            c8:
                                            <asp:CheckBox ID="c8CheckBox0" runat="server" Checked='<%# Bind("c8") %>' />
                                            <br />
                                            c9:
                                            <asp:CheckBox ID="c9CheckBox0" runat="server" Checked='<%# Bind("c9") %>' />
                                            <br />
                                            c10:
                                            <asp:CheckBox ID="c10CheckBox0" runat="server" Checked='<%# Bind("c10") %>' />
                                            <br />
                                            c11:
                                            <asp:CheckBox ID="c11CheckBox0" runat="server" Checked='<%# Bind("c11") %>' />
                                            <br />
                                            c12:
                                            <asp:CheckBox ID="c12CheckBox0" runat="server" Checked='<%# Bind("c12") %>' />
                                            <br />
                                            c13:
                                            <asp:CheckBox ID="c13CheckBox0" runat="server" Checked='<%# Bind("c13") %>' />
                                            <br />
                                            c14:
                                            <asp:CheckBox ID="c14CheckBox0" runat="server" Checked='<%# Bind("c14") %>' />
                                            <br />
                                            c15:
                                            <asp:CheckBox ID="c15CheckBox0" runat="server" Checked='<%# Bind("c15") %>' />
                                            <br />
                                            c16:
                                            <asp:CheckBox ID="c16CheckBox0" runat="server" Checked='<%# Bind("c16") %>' />
                                            <br />
                                            c17:
                                            <asp:CheckBox ID="c17CheckBox0" runat="server" Checked='<%# Bind("c17") %>' />
                                            <br />
                                            c18:
                                            <asp:CheckBox ID="c18CheckBox0" runat="server" Checked='<%# Bind("c18") %>' />
                                            <br />
                                            c19:
                                            <asp:CheckBox ID="c19CheckBox0" runat="server" Checked='<%# Bind("c19") %>' />
                                            <br />
                                            c20:
                                            <asp:CheckBox ID="c20CheckBox0" runat="server" Checked='<%# Bind("c20") %>' />
                                            <br />
                                            c21:
                                            <asp:CheckBox ID="c21CheckBox0" runat="server" Checked='<%# Bind("c21") %>' />
                                            <br />
                                            c22:
                                            <asp:CheckBox ID="c22CheckBox0" runat="server" Checked='<%# Bind("c22") %>' />
                                            <br />
                                            c23:
                                            <asp:CheckBox ID="c23CheckBox0" runat="server" Checked='<%# Bind("c23") %>' />
                                            <br />
                                            c24:
                                            <asp:CheckBox ID="c24CheckBox0" runat="server" Checked='<%# Bind("c24") %>' />
                                            <br />
                                            c25:
                                            <asp:CheckBox ID="c25CheckBox0" runat="server" Checked='<%# Bind("c25") %>' />
                                            <br />
                                            c26:
                                            <asp:CheckBox ID="c26CheckBox0" runat="server" Checked='<%# Bind("c26") %>' />
                                            <br />
                                            <asp:LinkButton ID="InsertButton0" runat="server" CausesValidation="True" 
                                                CommandName="Insert" Text="Insert" />
                                            &nbsp;<asp:LinkButton ID="InsertCancelButton0" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <table class="style109" 
                                                
                                                style="background-image: url('http://localhost:12425/2el/image/ekspertiz.png'); background-repeat: no-repeat; font-family: Arial, Helvetica, sans-serif; font-size: 11pt;">
                                                <tr>
                                                    <td width="27px">
                                                        </td>
                                                    <td width="100px">
                                                        </td>
                                                    <td width="50px">
                                                        B<asp:CheckBox ID="c1CheckBox1" runat="server" Checked='<%# Bind("c1") %>' 
                                                            Enabled="false" />
                                                    </td>
                                                    <td class="style113" width="60px">
                                                        D<asp:CheckBox ID="c2CheckBox1" runat="server" Checked='<%# Bind("c2") %>' 
                                                            Enabled="false" />
                                                    </td>
                                                    <td class="style120">
                                                    </td>
                                                    <td class="style112">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td height="5px" width="27px">
                                                        &nbsp;&nbsp;</td>
                                                    <td height="5px" width="100px">
                                                        &nbsp;&nbsp;</td>
                                                    <td height="5px" width="50px">
                                                        &nbsp;</td>
                                                    <td class="style113" height="5px" width="60px">
                                                        &nbsp;&nbsp;</td>
                                                    <td class="style120" height="5px">
                                                        &nbsp;</td>
                                                    <td class="style112" height="5px">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td width="27px">
                                                        &nbsp;</td>
                                                    <td width="100px">
                                                        &nbsp;&nbsp;B<asp:CheckBox ID="c3CheckBox1" runat="server" Checked='<%# Bind("c3") %>' 
                                                            Enabled="false" />
                                                        <br />
                                                        &nbsp;&nbsp;D<asp:CheckBox ID="c4CheckBox1" runat="server" Checked='<%# Bind("c4") %>' 
                                                            Enabled="false" />
                                                    </td>
                                                    <td width="50px">
                                                        B<asp:CheckBox ID="c19CheckBox1" runat="server" Checked='<%# Bind("c19") %>' 
                                                            Enabled="false" />
                                                    </td>
                                                    <td class="style113" width="60px">
                                                        D<asp:CheckBox ID="c20CheckBox1" runat="server" Checked='<%# Bind("c20") %>' 
                                                            Enabled="false" />
                                                    </td>
                                                    <td class="style120">
                                                        &nbsp; &nbsp;B<asp:CheckBox ID="c5CheckBox1" runat="server" Checked='<%# Bind("c5") %>' 
                                                            Enabled="false" />
                                                        <br />
                                                        &nbsp; &nbsp;D<asp:CheckBox ID="c6CheckBox1" runat="server" Checked='<%# Bind("c6") %>' 
                                                            Enabled="false" />
                                                    </td>
                                                    <td class="style112">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td height="5px" width="27px">
                                                        &nbsp;</td>
                                                    <td height="5px" width="100px">
                                                        &nbsp;</td>
                                                    <td height="5px" width="50px">
                                                        &nbsp;</td>
                                                    <td class="style113" height="5px" width="60px">
                                                        &nbsp;</td>
                                                    <td class="style120" height="5px">
                                                        &nbsp;</td>
                                                    <td class="style112" height="5px">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td width="27px">
                                                        &nbsp;</td>
                                                    <td width="100px">
                                                        &nbsp;&nbsp;B<asp:CheckBox ID="c7CheckBox1" runat="server" Checked='<%# Bind("c7") %>' 
                                                            Enabled="false" />
                                                        <br />
                                                        &nbsp;&nbsp;D<asp:CheckBox ID="c8CheckBox1" runat="server" Checked='<%# Bind("c8") %>' 
                                                            Enabled="false" />
                                                    </td>
                                                    <td width="50px">
                                                        <br />
                                                        <br />
                                                        B<asp:CheckBox ID="c21CheckBox1" runat="server" Checked='<%# Bind("c21") %>' 
                                                            Enabled="false" />
                                                    </td>
                                                    <td class="style113" width="60px">
                                                        <br />
                                                        <br />
                                                        D<asp:CheckBox ID="c22CheckBox1" runat="server" Checked='<%# Bind("c22") %>' 
                                                            Enabled="false" />
                                                    </td>
                                                    <td class="style120">
                                                        &nbsp;&nbsp; B<asp:CheckBox ID="c9CheckBox1" runat="server" Checked='<%# Bind("c9") %>' 
                                                            Enabled="false" />
                                                        <br />
                                                        &nbsp; &nbsp;D<asp:CheckBox ID="c10CheckBox1" runat="server" Checked='<%# Bind("c10") %>' 
                                                            Enabled="false" />
                                                    </td>
                                                    <td class="style112">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td width="27px">
                                                        &nbsp;</td>
                                                    <td width="100px">
                                                        &nbsp;&nbsp;B<asp:CheckBox ID="c11CheckBox1" runat="server" Checked='<%# Bind("c11") %>' 
                                                            Enabled="false" />
                                                        <br />
                                                        &nbsp;&nbsp;D<asp:CheckBox ID="c12CheckBox1" runat="server" Checked='<%# Bind("c12") %>' 
                                                            Enabled="false" />
                                                    </td>
                                                    <td width="50px">
                                                        &nbsp;</td>
                                                    <td class="style113" width="60px">
                                                        </td>
                                                    <td class="style120">
                                                        &nbsp;&nbsp; B<asp:CheckBox ID="c13CheckBox1" runat="server" Checked='<%# Bind("c13") %>' 
                                                            Enabled="false" />
                                                        <br />
                                                        &nbsp; &nbsp;D<asp:CheckBox ID="c14CheckBox1" runat="server" Checked='<%# Bind("c14") %>' 
                                                            Enabled="false" />
                                                    </td>
                                                    <td class="style112">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style117" width="27px">
                                                        </td>
                                                    <td class="style117" width="100px">
                                                        &nbsp;&nbsp;B<asp:CheckBox ID="c15CheckBox1" runat="server" Checked='<%# Bind("c15") %>' 
                                                            Enabled="false" />
                                                        <br />
                                                        &nbsp;&nbsp;D<asp:CheckBox ID="c16CheckBox1" runat="server" Checked='<%# Bind("c16") %>' 
                                                            Enabled="false" />
                                                    </td>
                                                    <td class="style117" width="50px">
                                                        B<asp:CheckBox ID="c23CheckBox1" runat="server" Checked='<%# Bind("c23") %>' 
                                                            Enabled="false" />
                                                        <br />
                                                        <br />
                                                    </td>
                                                    <td class="style118" width="60px">
                                                        <br />
                                                        D<asp:CheckBox ID="c24CheckBox1" runat="server" Checked='<%# Bind("c24") %>' 
                                                            Enabled="false" />
                                                        <br />
                                                        <br />
                                                        <br />
                                                    </td>
                                                    <td class="style121">
                                                        &nbsp;&nbsp; B<asp:CheckBox ID="c17CheckBox1" runat="server" Checked='<%# Bind("c17") %>' 
                                                            Enabled="false" />
                                                        <br />
                                                        &nbsp;&nbsp; D<asp:CheckBox ID="c18CheckBox1" runat="server" Checked='<%# Bind("c18") %>' 
                                                            Enabled="false" />
                                                    </td>
                                                    <td class="style119">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td width="27px">
                                                        &nbsp;</td>
                                                    <td width="100px">
                                                        &nbsp;</td>
                                                    <td width="50px">
                                                        &nbsp;</td>
                                                    <td class="style113" width="60px">
                                                        &nbsp;</td>
                                                    <td class="style120">
                                                        &nbsp;</td>
                                                    <td class="style112">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td width="27px">
                                                        &nbsp;</td>
                                                    <td width="100px">
                                                        &nbsp;</td>
                                                    <td width="50px">
                                                        &nbsp;</td>
                                                    <td class="style113" width="60px">
                                                        &nbsp;</td>
                                                    <td class="style120">
                                                        &nbsp;</td>
                                                    <td class="style112">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td width="27px">
                                                        &nbsp;</td>
                                                    <td width="100px">
                                                        &nbsp;</td>
                                                    <td width="50px">
                                                        B<asp:CheckBox ID="c25CheckBox1" runat="server" Checked='<%# Bind("c25") %>' 
                                                            Enabled="false" />
                                                    </td>
                                                    <td class="style113" width="60px">
                                                        D<asp:CheckBox ID="c26CheckBox1" runat="server" Checked='<%# Bind("c26") %>' 
                                                            Enabled="false" />
                                                    </td>
                                                    <td class="style120">
                                                        &nbsp;</td>
                                                    <td class="style112">
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:FormView>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:mydb %>" 
                                        SelectCommand="SELECT ekspertiz.* FROM araclar INNER JOIN ekspertiz ON araclar.ekspertiz_id = ekspertiz.id WHERE (araclar.arac_id = @aracid)">
                                        <SelectParameters>
                                            <asp:QueryStringParameter Name="aracid" QueryStringField="aracid" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                   </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="btnrezerve" runat="server" Font-Bold="True" 
                                        Font-Names="Calibri" Font-Size="Small" Height="35px" onclick="btnrezerve_Click" 
                                        Text="Rezerve" Width="100px" />
                                    <asp:Button ID="btnsatisfoy" runat="server" Font-Bold="True" 
                                        Font-Names="Calibri" Font-Size="Small" Height="35px" 
                                        onclick="btnsatisfoy_Click" Text="Satış Föyü" Width="100px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:mydb %>" SelectCommand="arac_detay" 
                                        SelectCommandType="StoredProcedure" 
                                        
                                        
                                        UpdateCommand="UPDATE araclar SET plaka = @plaka, satis_fiyat = @satis_fiyat, alis_fiyat = @alis_fiyat, model_yili = @model_yili, km = @km, vites = @vites, motor = @motor, guc = @guc, motor_no = @motor_no, sase_no = @sase_no, aciklama = @aciklama  WHERE (arac_id = @aracid)">
                                        <SelectParameters>
                                            <asp:QueryStringParameter Name="arac_id" QueryStringField="aracid" 
                                                Type="Int32" />
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:ControlParameter ControlID="FormView1" Name="plaka" 
                                                PropertyName="SelectedValue" />
                                            <asp:ControlParameter ControlID="FormView1" Name="satis_fiyat" 
                                                PropertyName="SelectedValue" />
                                            <asp:ControlParameter ControlID="FormView1" Name="alis_fiyat" 
                                                PropertyName="SelectedValue" />
                                            <asp:ControlParameter ControlID="FormView1" Name="model_yili" 
                                                PropertyName="SelectedValue" />
                                            <asp:ControlParameter ControlID="FormView1" Name="km" 
                                                PropertyName="SelectedValue" />
                                            <asp:ControlParameter ControlID="FormView1" Name="vites" 
                                                PropertyName="SelectedValue" />
                                            <asp:ControlParameter ControlID="FormView1" Name="motor" 
                                                PropertyName="SelectedValue" />
                                            <asp:ControlParameter ControlID="FormView1" Name="guc" 
                                                PropertyName="SelectedValue" />
                                            <asp:ControlParameter ControlID="FormView1" Name="motor_no" 
                                                PropertyName="SelectedValue" />
                                            <asp:ControlParameter ControlID="FormView1" Name="sase_no" 
                                                PropertyName="SelectedValue" />
                                            <asp:ControlParameter ControlID="FormView1" Name="aciklama" 
                                                PropertyName="SelectedValue" />
                                            <asp:QueryStringParameter Name="aracid" QueryStringField="aracid" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
    
                </td>
            </tr>
            </table>
    
        <br />
    
        <br />
    
    </div>
    </form>
</body>
</html>
