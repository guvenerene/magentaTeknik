<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageGiris.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="girisTablosu">
        <tr>
            <td class="ilkKolon">Kullanıcı Adı:</td>
            <td><asp:TextBox ID="txtKullaniciAdi" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" class="girisTablosuAraCizgi"></td>
        </tr>
        <tr>
            <td class="ilkKolon">Şifre</td>
            <td><asp:TextBox ID="txtSifre" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" class="girisTablosuAraCizgi"></td>
        </tr>
        <tr>
            <td colspan="2"><asp:Button ID="btnGiris" runat="server" Text="Giriş" OnClick="btnGiris_Click" /></td>
        </tr>
    </table>
</asp:Content>

