<%@ Page Language="C#" MasterPageFile="MasterPage.master"  ValidateRequest="false" AutoEventWireup="true" CodeFile="TianJiaGongGao.aspx.cs" Inherits="HouTai_TianJiaXinWen" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="850" border="1" cellspacing="1">
        <tr>
            <td class="style1" height="20">
                标题：</td>
            <td headers="25" height="20">
                <asp:TextBox ID="TextBox1" runat="server" Width="828px" Height="20px" 
                    style="margin-top: 0px"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td class="style1">
                内容：</td>
            <td>
             <script type="text/javascript" src="./js/nicEdit/nicEdit.js"></script>
<script type="text/javascript">
    bkLib.onDomLoaded(function () { nicEditors.allTextAreas() });
</script>

                <asp:TextBox ID="TextBox2" runat="server" Height="253px" Width="835px" 
                    TextMode="MultiLine" style="margin-left: 0px"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="提交" onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="更新" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="返回" onclick="Button2_Click" />
            </td>
           
        </tr>
    </table>
   </asp:Content>
