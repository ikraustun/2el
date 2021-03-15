<%@ Page Language="C#" AutoEventWireup="true" CodeFile="goster.aspx.cs" Inherits="goster" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 39%;
            height: 451px;
        }
        .style7
        {
            height: 90px;
            width: 52px;
        }
        .style8
        {
            width: 42px;
            height: 90px;
        }
        .style13
        {
            width: 26px;
        }
        .style14
        {
            width: 77px;
        }
        .style15
        {
            width: 29px;
        }
        .style24
        {
            width: 154px;
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
         .style9
         {
             width: 152px;
             height: 47px;
         }
       
         .style25
        {
            width: 154px;
            height: 123px;
        }
        .style26
        {
            width: 154px;
            height: 102px;
        }
         .style21
         {
             width: 81px;
             height: 102px;
         }
         .style22
         {
             width: 117px;
             height: 102px;
         }
         .style23
         {
             width: 152px;
             height: 102px;
         }
        .style27
        {
            width: 154px;
            height: 71px;
        }
         .style17
         {
             width: 81px;
             height: 71px;
         }
         .style18
         {
             width: 117px;
             height: 71px;
         }
         .style19
         {
             width: 152px;
             height: 71px;
         }
         .style28
        {
            width: 154px;
        }
         .style5
         {
            width: 81px;
        }
         .style2
         {
             width: 117px;
         }
         .style3
         {
             width: 152px;
         }
         </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" 
            Width="758px">
            <EditItemTemplate>
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
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
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
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table class="style1" 
                    style="background-image: url('image/ekspertiz.jpg'); background-repeat: no-repeat;">
                    <tr>
                        <td class="style24">
                        </td>
                        <td class="style7">
                            &nbsp;&nbsp;
                            <asp:CheckBox ID="c1CheckBox" runat="server" Checked='<%# Bind("c1") %>' 
                                Enabled="false" />
                            <br />
                        </td>
                        <td class="style8">
                            <asp:CheckBox ID="c2CheckBox" runat="server" Checked='<%# Bind("c2") %>' 
                                Enabled="false" />
                            <br />
                        </td>
                        <td class="style9">
                        </td>
                    </tr>
                    <tr>
                        <td class="style25">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:CheckBox ID="c3CheckBox" runat="server" Checked='<%# Bind("c3") %>' 
                                Enabled="false" />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:CheckBox ID="c4CheckBox" runat="server" Checked='<%# Bind("c4") %>' 
                                Enabled="false" />
                        </td>
                        <td class="style13">
                            <br />
                            &nbsp;&nbsp;
                          <asp:CheckBox ID="c19CheckBox" runat="server" Checked='<%# Bind("c19") %>' 
                                Enabled="false" />
                        </td>
                        <td class="style14">
                            <br />
                            <asp:CheckBox ID="c20CheckBox" runat="server" Checked='<%# Bind("c20") %>' 
                                Enabled="false" />
                        </td>
                        <td class="style15">
                            &nbsp;<asp:CheckBox ID="c5CheckBox" runat="server" Checked='<%# Bind("c5") %>' 
                                Enabled="false" />
                            <br />
                            &nbsp;<asp:CheckBox ID="c6CheckBox" runat="server" Checked='<%# Bind("c6") %>'  Enabled="false"/>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style26">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:CheckBox ID="c7CheckBox" runat="server" Checked='<%# Bind("c7") %>' 
                                Enabled="false" />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:CheckBox ID="c8CheckBox" runat="server" Checked='<%# Bind("c8") %>' 
                                Enabled="false" />
                        </td>
                        <td class="style21">
                            <br />
                            <br />
                            <br />
                            <br />
                            &nbsp;&nbsp;
                            <asp:CheckBox ID="c21CheckBox" runat="server" Checked='<%# Bind("c21") %>' 
                                Enabled="false" />
                        </td>
                        <td class="style22">
                            &nbsp;<br />
                            <br />
                            <br />
                            <br />
                            <asp:CheckBox ID="c22CheckBox" runat="server" Checked='<%# Bind("c22") %>' 
                                Enabled="false" />
                        </td>
                        <td class="style23">
                            &nbsp;<asp:CheckBox ID="c9CheckBox" runat="server" Checked='<%# Bind("c9") %>' 
                                Enabled="false" />
                            <br />
                            &nbsp;<asp:CheckBox ID="c10CheckBox" runat="server" Checked='<%# Bind("c10") %>' 
                                Enabled="false" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style27">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:CheckBox ID="c11CheckBox" runat="server" Checked='<%# Bind("c11") %>' 
                                Enabled="false" />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:CheckBox ID="c12CheckBox" runat="server" Checked='<%# Bind("c12") %>' 
                                Enabled="false" />
                        </td>
                        <td class="style17">
                        </td>
                        <td class="style18">
                        </td>
                        <td class="style19">
                            &nbsp;<asp:CheckBox ID="c13CheckBox" runat="server" Checked='<%# Bind("c13") %>' 
                                Enabled="false" />
                            <br />
                            &nbsp;<asp:CheckBox ID="c14CheckBox" runat="server" Checked='<%# Bind("c14") %>' 
                                Enabled="false" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style28">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:CheckBox ID="c15CheckBox" runat="server" Checked='<%# Bind("c15") %>' 
                                Enabled="false" />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:CheckBox ID="c16CheckBox" runat="server" Checked='<%# Bind("c16") %>' 
                                Enabled="false" />
                        </td>
                        <td class="style5">
                            &nbsp;&nbsp;
                            <asp:CheckBox ID="c23CheckBox" runat="server" Checked='<%# Bind("c23") %>' 
                                Enabled="false" />
                        </td>
                        <td class="style2">
                            <asp:CheckBox ID="c24CheckBox" runat="server" Checked='<%# Bind("c24") %>' 
                                Enabled="false" />
                        </td>
                        <td class="style3">
                            &nbsp;<asp:CheckBox ID="c17CheckBox" runat="server" Checked='<%# Bind("c17") %>' 
                                Enabled="false" />
                            <br />
                            &nbsp;<asp:CheckBox ID="c18CheckBox" runat="server" Checked='<%# Bind("c18") %>' 
                                Enabled="false" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style28">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;&nbsp;&nbsp;
                            <asp:CheckBox ID="c25CheckBox" runat="server" Checked='<%# Bind("c25") %>' 
                                Enabled="false" />
                        </td>
                        <td class="style2">
                            <asp:CheckBox ID="c26CheckBox" runat="server" Checked='<%# Bind("c26") %>' 
                                Enabled="false" />
                        </td>
                        <td class="style3">
                            <br />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mydb %>" 
            
            SelectCommand="SELECT [c1] as c1, [c2] as c2, [c3] as c3, [c4] as c4, [c5] as c5, [c6] as c6, [c7] as c7, [c8] as c8, [c9] as c9, [c10] as c10, [c11] as c11, [c12] as c12, [c13] as c13, [c14] as c14, [c15] as c15, [c16] as c16, [c17] as c17, [c18] as c18, [c19] as c19, [c20] as c20, [c21] as c21, [c22] as c22, [c23] as c23, [c24] as c24, [c25] as c25, [c26] as c26 FROM [ekspertiz]">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
