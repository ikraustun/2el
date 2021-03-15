<%@ Page Language="C#" AutoEventWireup="true" CodeFile="noter.aspx.cs" Inherits="noter" %>

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
        }
        .style3
        {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style3">
                 <asp:ImageButton ID="ImageButton2" runat="server" Height="70px" 
                     ImageUrl="~/image/2.EL.PNG" Width="217px" />
                </td>
                <td align="right" valign="middle">
                 <asp:LinkButton ID="Label1" runat="server" 
                     Font-Bold="True" Font-Names="Calibri" Font-Size="12pt" Font-Underline="False" 
                     ForeColor="Black" style="text-align: right" onclick="Label1_Click"></asp:LinkButton>
    
                </td>
            </tr>
            <tr valign="bottom">
                <td colspan="2" 
                    
                    style="font-family: calibri; font-size: 15pt; font-weight: bold; color: #000000" 
                    valign="top" align="left" height="10px">
                    &nbsp;</td>
            </tr>
            <tr valign="bottom">
                <td colspan="2" 
                    
                    style="font-family: calibri; font-size: 15pt; font-weight: bold; color: #000000" 
                    valign="top" align="left" height="32px">
                    PLAKA :
                        <asp:TextBox ID="txtplaka" runat="server" Font-Names="Calibri" 
                            Font-Size="16pt" Height="25px" Width="100px" MaxLength="8" 
                            BackColor="White"></asp:TextBox>
                        <asp:Button ID="btnara" runat="server" BackColor="#F58220" ForeColor="White" 
                            Height="33px" onclick="btnara_Click" Text="Ara" Width="80px" />
                       
                       
                       
                    </td>
            </tr>
            <tr valign="bottom">
                <td colspan="2" 
                    
                    style="font-family: calibri; font-size: 15pt; font-weight: bold; color: #000000" 
                    valign="top" align="left" height="10px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" colspan="2">
                    <asp:Label ID="lblms" runat="server" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="10pt"></asp:Label>
                
                     
                    <br />
                
                     
                    <asp:GridView ID="gnoter" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                        DataKeyNames="ID" DataSourceID="SqlDataSource1" Font-Names="Calibri" 
                        Font-Size="9pt" ForeColor="#333333" GridLines="None" Width="100%" 
                    HorizontalAlign="Center" onrowdatabound="gnoter_RowDataBound" 
                        onselectedindexchanged="gnoter_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/image/duzenle.png" 
                                ShowSelectButton="True" />
                            <asp:TemplateField HeaderText="No">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text="<%# Container.DataItemIndex + 1 %>"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="ID" InsertVisible="False" ReadOnly="True" 
                                SortExpression="ID">
                            <ControlStyle ForeColor="White" />
                            <ItemStyle ForeColor="White" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Plaka" HeaderText="Plaka" SortExpression="Plaka" />
                            <asp:BoundField DataField="Firma/ Müşteri" HeaderText="Firma/ Müşteri" 
                                SortExpression="Firma/ Müşteri" />
                            <asp:BoundField DataField="Sahip" HeaderText="Sahip" SortExpression="Sahip" />
                            <asp:BoundField DataField="Marka" HeaderText="Marka" SortExpression="Marka" />
                            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                            <asp:BoundField DataField="Yılı" HeaderText="Yılı" SortExpression="Yılı" />
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
                
                     
                    <asp:GridView ID="gfiltre" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                        DataKeyNames="ID" Font-Names="Calibri" 
                        Font-Size="9pt" ForeColor="#333333" GridLines="None" Width="100%" 
                    HorizontalAlign="Center" onpageindexchanging="gfiltre_PageIndexChanging" 
                        onrowcommand="gfiltre_RowCommand" onrowdatabound="gfiltre_RowDataBound" 
                        onselectedindexchanged="gfiltre_SelectedIndexChanged" 
                        onsorting="gfiltre_Sorting" PageSize="15">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:ButtonField ButtonType="Image" CommandName="sec" 
                                ImageUrl="~/image/duzenle.png" />
                            <asp:TemplateField HeaderText="No">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text="<%# Container.DataItemIndex + 1 %>"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="ID" InsertVisible="False" ReadOnly="True" 
                                SortExpression="ID">
                            <ItemStyle ForeColor="White" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Plaka" HeaderText="Plaka" SortExpression="Plaka" />
                            <asp:BoundField DataField="Firma/ Müşteri" HeaderText="Firma/ Müşteri" 
                                SortExpression="Firma/ Müşteri" />
                            <asp:BoundField DataField="Sahip" HeaderText="Sahip" SortExpression="Sahip" />
                            <asp:BoundField DataField="Marka" HeaderText="Marka" SortExpression="Marka" />
                            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                            <asp:BoundField DataField="Yılı" HeaderText="Yılı" SortExpression="Yılı" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:mydb %>" SelectCommand="noterlistesi" 
                        SelectCommandType="StoredProcedure" onselected="SqlDataSource1_Selected" 
                        onselecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
