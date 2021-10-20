<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="servisCik.aspx.cs" Inherits="servisCik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style2
    {
        width: 118px;
    }
    .style1
    {
        width: 195px;
    }
        .style3
        {
            height: 82px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style=" width:900px; margin-top: 6%; margin-left:100px;"><h1>Servis Çıkışı</h1></div>
    <table class="ServisKayitDoldur">
    <tr>
            <td class="style2">
                Müşteri Adı Soyadı</td>
            <td class="style1">
                <asp:TextBox ID="txtAdSad" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Müşteri T.C.</td>
            <td class="style1">
                <asp:TextBox ID="txtTCno" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Seri No</td>
            <td class="style1">
                <asp:TextBox ID="txtSeriNo" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Cep Telefonu</td>
            <td class="style1">
                <asp:TextBox ID="txtCepTelefon" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Markası</td>
            <td class="style1">
                <asp:TextBox ID="txtMarka" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Modeli</td>
            <td class="style1">
                <asp:TextBox ID="txtModel" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Kısaca Arızası</td>
            <td class="style1">
                <asp:TextBox ID="txtAriza" runat="server" Height="46px" TextMode="MultiLine" 
                    Enabled="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;Ekleme Tarihi</td>
            <td colspan="2">
                <asp:TextBox ID="txtEklemeTarihi" runat="server" Width="99px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">Arıza Onarım Bilgisi</td>
            <td class="style3">
                <asp:TextBox ID="txtArizaOnarimBilgisi" runat="server" Height="46px" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Bu Alanın Doldurulması Zorunludur." 
                    ControlToValidate="txtArizaOnarimBilgisi"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Alınan Ücret</td>
            <td>
                <asp:TextBox ID="txtAlinanUcret" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Bu Alanın Doldurulması Zorunludur." 
                    ControlToValidate="txtAlinanUcret"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtAlinanUcret" 
                    ErrorMessage="Alınan Ücreti Rakamlar İle İfade Ediniz." 
                    ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align:center;"">
                <asp:Button ID="btnTeslimEt" runat="server" Text="Ürün Teslimi" 
                    OnClick="btnTeslimEt_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

