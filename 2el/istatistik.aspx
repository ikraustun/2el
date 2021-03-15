<%@ Page Language="C#" AutoEventWireup="true" CodeFile="istatistik.aspx.cs" Inherits="istatistik" %>

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
            height: 23px;
        }
        .style3
        {
            height: 23px;
            width: 81px;
        }
        .style4
        {
            width: 81px;
        }
                   
        
        .style5
        {
            width: 427px;
        }
                   
        
        </style>
</head>
<body>
    <form id="form1" runat="server">
    
        <table class="style1">
            <tr>
                <td colspan="2">
    
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="67px" 
                     ImageUrl="~/image/2.EL.PNG" Width="235px" onclick="ImageButton5_Click1" />
    
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Panel ID="Panel1" runat="server" Font-Names="Calibri" Font-Size="12pt" 
                        GroupingText="Araç Ara" Width="100%" Font-Bold="True" ForeColor="#333333">
                        <table width="1065px" 
                            
                            style="font-family: calibri; font-size: 11pt; font-weight: bold; color: #333333;">
                            <tr>
                                <td class="style2">
                                    Sahip</td>
                                <td class="style2">
                                    Araç Tipi</td>
                                <td class="style2" colspan="2">
                                    Tarih Seç</td>
                                <td class="style2">
                                    Danışman</td>
                                <td class="style2">
                                    Plaka</td>
                                <td class="style3" colspan="3">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:DropDownList ID="dpsahip" runat="server" Font-Names="Calibri" 
                                        Font-Size="10pt" Height="25px" Width="100px" 
                                        onselectedindexchanged="dpsahip_SelectedIndexChanged">
                                        <asp:ListItem Value="0">Tümü</asp:ListItem>
                                        <asp:ListItem Value="ALD">Aldatmaz</asp:ListItem>
                                        <asp:ListItem Value="OTP">Otoport</asp:ListItem>
                                        <asp:ListItem Value="KAP">Kapital</asp:ListItem>
                                        <asp:ListItem Value="KON">Konsinye</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:DropDownList ID="dptipi" runat="server" Font-Names="Calibri" 
                                        Font-Size="10pt" Height="25px" Width="100px">
                                        <asp:ListItem>Tümü</asp:ListItem>
                                        <asp:ListItem>Binek</asp:ListItem>
                                        <asp:ListItem>Ticari</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="txttarih1" runat="server" Height="20px" TextMode="Date" 
                                        Width="130px" Font-Names="Calibri" Font-Size="10pt"></asp:TextBox>
                                    &nbsp;/</td>
                                <td>
                                    <asp:TextBox ID="txttarih2" runat="server" Width="130px" Height="20px" 
                                        TextMode="Date" Font-Names="Calibri" Font-Size="10pt"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:DropDownList ID="dpdanisman" runat="server" 
                                        DataTextField="k_adı" DataValueField="k_adı" Width="140px" 
                                        Height="25px" onselectedindexchanged="dpdanisman_SelectedIndexChanged" 
                                        Font-Names="Calibri" Font-Size="10pt" DataSourceID="SqlDataSource1">
                                        <asp:ListItem Value="0">Seçiniz</asp:ListItem>
                                        <asp:ListItem>ERDEM ERKEN</asp:ListItem>
                                        <asp:ListItem>SULEYMAN ATABAY</asp:ListItem>
                                        <asp:ListItem>EMRAH EMİCİ</asp:ListItem>
                                        <asp:ListItem Value="Musa Koksal">MUSA KOKSAL</asp:ListItem>
                                        <asp:ListItem>TOLGA SEKER</asp:ListItem>
                                        <asp:ListItem Value="1">Tümü</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:mydb %>" 
                                        SelectCommand="SELECT [k_id], [k_adı] FROM [kullanicilar]">
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtplaka" runat="server" Width="100px" Height="20px" 
                                        Font-Names="Calibri" Font-Size="10pt"></asp:TextBox>
                                </td>
                                <td class="style4">
                                    <asp:Button ID="btnara" runat="server" Height="25px" onclick="btnara_Click" 
                                        style="height: 26px" Text="Ara" BackColor="#CCCCCC" Font-Names="Calibri" 
                                        Font-Size="10pt" Width="80px" />
                                </td>
                                <td class="style4">
                                    <asp:Button ID="btnfiltrealdır0" runat="server" BackColor="#CCCCCC" 
                                        Font-Names="Calibri" Font-Size="10pt" Height="25px" 
                                        onclick="btnfiltrealdır_Click" style="height: 26px" Text="Filitre Kaldır" 
                                        Width="83px" />
                                </td>
                                <td class="style4">
                                    <asp:Button ID="btntümü" runat="server" BackColor="#CCCCCC" 
                                        Font-Names="Calibri" Font-Size="10pt" Height="25px" onclick="btntümü_Click" 
                                        style="height: 26px" Text="Tüm Kayıtlar" Width="83px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td class="style4">
                                    &nbsp;</td>
                                <td class="style4">
                                    &nbsp;</td>
                                <td class="style4">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="font-family: calibri; font-size: 10pt; color: #000000">
                    <br />
                    <asp:GridView ID="GridView1" runat="server" onrowcreated="GridView1_RowCreated" 
                        ShowFooter="True" Width="100%" AutoGenerateColumns="False" 
                        AllowSorting="True" onsorting="GridView1_Sorting" 
                        onrowdatabound="GridView1_RowDataBound" AllowPaging="True" PageSize="50">
                        <Columns>
                            <asp:TemplateField HeaderText="NO">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text="<%# Container.DataItemIndex + 1 %>"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="durumu" HeaderText="DURUMU" 
                                SortExpression="durumu" >
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sahip" HeaderText="SAHİP" SortExpression="sahip" >
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Marka" HeaderText="MARKA" SortExpression="Marka" />
                            <asp:BoundField DataField="Model" HeaderText="MODEL" SortExpression="Model" />
                            <asp:BoundField DataField="MÜŞTERİ" HeaderText="MÜŞTERİ" 
                                SortExpression="MÜŞTERİ" />
                            <asp:BoundField DataField="Plaka" HeaderText="PLAKA" SortExpression="Plaka" />
                            <asp:BoundField DataField="Alış Tarihi" HeaderText="ALIŞ TARİHİ" 
                                SortExpression="Alış Tarihi" DataFormatString="{0:d}" >
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Satış Tarihi" HeaderText="SATIŞ TARİHİ" 
                                SortExpression="Satış Tarihi" DataFormatString="{0:d}" >
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Alış Fiyat" HeaderText="ALIŞ FİYAT" 
                                SortExpression="Alış Fiyat" >
                            <FooterStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Masraf" HeaderText="MASRAF" 
                                SortExpression="Masraf" ReadOnly="True" >
                            <FooterStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Top. Maaliyet" HeaderText="TOP. MAALİYET" 
                                SortExpression="Top. Maaliyet" >
                            <FooterStyle BackColor="#CC0000" ForeColor="#CCCCCC" HorizontalAlign="Right" 
                                VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Satış Fiyat" HeaderText="SATIŞ FİYAT" 
                                SortExpression="Satış Fiyat" >
                            <FooterStyle BackColor="#CC0000" ForeColor="#CCCCCC" HorizontalAlign="Right" 
                                VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Kar" HeaderText="KAR" 
                                SortExpression="Kar" ReadOnly="True" >
                            <FooterStyle BackColor="#CC0000" ForeColor="#CCCCCC" HorizontalAlign="Right" 
                                VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Devir Hızı" HeaderText="DEVİR HIZI" ReadOnly="True" 
                                SortExpression="Devir Hızı" >
                          
                            <FooterStyle BackColor="#CC0000" ForeColor="#CCCCCC" HorizontalAlign="Right" 
                                VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="DANIŞMAN" HeaderText="DANIŞMAN" ReadOnly="True" 
                                SortExpression="DANIŞMAN" />
                        </Columns>
                        <FooterStyle HorizontalAlign="Right" 
                            VerticalAlign="Middle" />
                        <HeaderStyle BackColor="#CCCCCC" ForeColor="#333333" />
                        <RowStyle Font-Names="Calibri" Font-Size="10pt" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:mydb %>" SelectCommand="istatistikler" 
                        SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:Parameter Name="tarih1" Type="DateTime" />
                            <asp:Parameter Name="tarih2" Type="DateTime" />
                            <asp:Parameter Name="danisman" Type="String" />
                            <asp:Parameter Name="plaka" Type="String" />
                            <asp:Parameter Name="tipi" Type="String" />
                            <asp:Parameter Name="sahip" Type="String" />
                            <asp:Parameter Name="arama" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Label ID="lbladet" runat="server"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style5" 
                    style="font-family: calibri; font-size: 10pt; color: #000000">
                    &nbsp;</td>
                <td align="right" style="font-family: calibri; font-size: 10pt; color: #000000" 
                    valign="middle">
                    <asp:Label ID="lblortkar" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style5" 
                    style="font-family: calibri; font-size: 10pt; color: #000000">
                    &nbsp;</td>
                <td align="right" style="font-family: calibri; font-size: 10pt; color: #000000" 
                    valign="middle">
                    <asp:Label ID="lblortdevir" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style5" 
                    style="font-family: calibri; font-size: 10pt; color: #000000">
                    <a href="javascript: history.go(-1);">
                    <asp:Image ID="Image1" runat="server" ImageAlign="AbsBottom" 
                        ImageUrl="~/image/geri.jpg" />
                    </a></td>
                <td align="right" style="font-family: calibri; font-size: 10pt; color: #000000" 
                    valign="middle">
                    &nbsp;</td>
            </tr>
        </table>
    
    </form>
</body>
</html>
