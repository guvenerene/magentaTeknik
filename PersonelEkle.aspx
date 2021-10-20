<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PersonelEkle.aspx.cs" Inherits="eklePersonel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            width: 182px;
        }
        .style1
        {
            width: 195px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
<br />
<br />
<div style=" width:900px; margin-Left:100px;"><h1>Personel Ekle</h1></div>
    <table class="ServisKayitDoldur">
        <tr>
            <td class="style2">
                Adı Soyadı</td>
            <td class="style1">
                <asp:TextBox ID="txtAdSad" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtAdSad" ErrorMessage="Boş Geçilemez!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Kullanıcı Adı</td>
            <td class="style1">
                <asp:TextBox ID="txtKAd" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtKAd" ErrorMessage="Boş Geçilemez!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Şifre</td>
            <td class="style1">
                <asp:TextBox ID="txtSifre" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtSifre" ErrorMessage="Boş Geçilemez!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Şifre Tekrar</td>
            <td class="style1">
                <asp:TextBox ID="txtSifreTekrar" runat="server" TextMode="Password"></asp:TextBox>
            </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtSifreTekrar" ControlToValidate="txtSifre" 
                        ErrorMessage="Şifreniz Uyuşmuyor!"></asp:CompareValidator>
            </td>
                    <tr>
            <td>İşe Giriş Tarihi</td>
            <td class="style1">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                    BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                    DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                    ForeColor="#003399" Height="147px" 
                    SelectedDate="05/06/2016 01:32:25" Width="180px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                        Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
                        </td>
            <td>
                &nbsp;</td>
        </tr>
                <tr>
            <td>Cep Telefon</td>
            <td class="style1">
                <asp:TextBox ID="txtCepTelefon" runat="server"></asp:TextBox>
                    </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtCepTelefon" ErrorMessage="Telefon Numaranız Hatalı!" 
                    ValidationExpression="(([\+]90?)|([0]?))([ ]?)((\([0-9]{3}\))|([0-9]{3}))([ ]?)([0-9]{3})(\s*[\-]?)([0-9]{2})(\s*[\-]?)([0-9]{2})"></asp:RegularExpressionValidator>
                    </td>
        </tr>
                <tr>
            <td>Ünvan</td>
            <td class="style1">
                <asp:TextBox ID="txtUnvan" runat="server"></asp:TextBox>
                    </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtUnvan" ErrorMessage="Boş Geçilemez!"></asp:RequiredFieldValidator>
                    </td>
        </tr>
        </tr>

        <tr>
            <td colspan="3" style="text-align:center;"">
                <asp:Button ID="btnPersonelEkle" runat="server" Text="Personel Ekle" 
                    OnClick="btnPersonelEkle_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

