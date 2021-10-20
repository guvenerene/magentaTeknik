<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ServisEkle.aspx.cs" Inherits="servisKayit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


    <style type="text/css">
        .style1
        {
            width: 195px;
        }
        .style2
        {
            width: 182px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style=" width:900px; margin-top:5%; margin-Left:100px;"><h1>Servis Ekle</h1></div>
    <table class="ServisKayitDoldur">
    <tr>
            <td class="style2">Müşteri Adı Soyadı</td>
            <td class="style1"><asp:TextBox ID="txtAdSad" runat="server" Enabled="False"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td class="style2">Müşteri T.C.</td>
            <td class="style1"><asp:TextBox ID="txtTCno" runat="server" Enabled="False"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td class="style2">Cep Telefonu</td>
            <td class="style1"><asp:TextBox ID="txtCepTelefon" runat="server" Enabled="False"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td class="style2">Seri No</td>
            <td class="style1"><asp:TextBox ID="txtSeriNo" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtSeriNo" ErrorMessage="Bu Alan Zorunludur!"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="style2">Markası</td>
            <td class="style1"><asp:TextBox ID="txtMarka" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtMarka" ErrorMessage="Bu Alan Zorunludur!"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="style2">Modeli</td>
            <td class="style1"><asp:TextBox ID="txtModel" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtModel" ErrorMessage="Bu Alan Zorunludur!"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="style2">Kısaca Arızası</td>
            <td class="style1"><asp:TextBox ID="txtAriza" runat="server" Height="46px" TextMode="MultiLine"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td class="style2">&nbsp;Bilgisayar Şifresi</td>
            <td colspan="2"><asp:TextBox ID="txtSifre" runat="server" Width="99px"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="3" style="text-align:center;""><asp:Button ID="btnCihazEkle" runat="server" Text="Cihazı Kaydet" OnClick="btnCihazEkle_Click" />
            </td>
        </tr>
    </table>

</asp:Content>

