<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MusteriEkle.aspx.cs" Inherits="musteriEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style=" width:900px; margin-top:5%; margin-Left:100px;"><h1>Müşteri Ekle</h1></div>
    <table class="MusteriEkleTablo">
        <tr>
            <td class="MusteriEkleTD">T.C. Kimik No</td>
            <td >
                <asp:TextBox ID="txtTCNo" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td >
                <asp:RequiredFieldValidator ID="ValiRfvTCno" runat="server" 
                    ControlToValidate="txtEPosta" ErrorMessage="*" 
                    ValidationGroup="EkleValidations"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="ValiRevTCNo" runat="server" 
                    ControlToValidate="txtTCNo" ErrorMessage="Kimlik Numaranızı Kontol Ediniz!" 
                    ValidationExpression="^[0-9]{11}$" ValidationGroup="EkleValidations"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="MusteriEkleTD">Adı Soyadı</td>
            <td class="MusteriEkleTabloKolonIki" >
                <asp:TextBox ID="txtAdSad" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td >
                <asp:RequiredFieldValidator ID="AdSad" runat="server" 
                    ControlToValidate="txtAdSad" ErrorMessage="*" ValidationGroup="EkleValidations"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="MusteriEkleTD">Cep Telefonu</td>
            <td class="MusteriEkleTabloKolonIki" >
                <asp:TextBox ID="txtCepTelefon" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td >
                <asp:RequiredFieldValidator ID="ValiRfvCepTel" runat="server" 
                    ControlToValidate="txtCepTelefon" ErrorMessage="*" 
                    ValidationGroup="EkleValidations"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="ValiRevEPosta1" runat="server" 
                    ControlToValidate="txtCepTelefon" 
                    ErrorMessage="Cep Telefonunuzu 10 Haneli Olmalıdır" 
                    ValidationExpression="(([\+]90?)|([0]?))([ ]?)((\([0-9]{3}\))|([0-9]{3}))([ ]?)([0-9]{3})(\s*[\-]?)([0-9]{2})(\s*[\-]?)([0-9]{2})" 
                    ValidationGroup="EkleValidations"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="MusteriEkleTD">Sabit Telefon</td>
            <td class="MusteriEkleTabloKolonIki" >
                <asp:TextBox ID="txtSabitTelefon" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td >
                <asp:RequiredFieldValidator ID="ValiRfvSabitTel" runat="server" 
                    ControlToValidate="txtSabitTelefon" ErrorMessage="*" 
                    ValidationGroup="EkleValidations"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="ValiRevEPosta0" runat="server" 
                    ControlToValidate="txtSabitTelefon" 
                    ErrorMessage="Sabit Telefonunuzu 10 Haneli Olmalıdır" 
                    ValidationExpression="(([\+]90?)|([0]?))([ ]?)((\([0-9]{3}\))|([0-9]{3}))([ ]?)([0-9]{3})(\s*[\-]?)([0-9]{2})(\s*[\-]?)([0-9]{2})" 
                    ValidationGroup="EkleValidations"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="MusteriEkleTD">E-Posta</td>
            <td class="MusteriEkleTabloKolonIki" >
                <asp:TextBox ID="txtEPosta" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td >
                <asp:RequiredFieldValidator ID="ValiRfvEPosta" runat="server" 
                    ControlToValidate="txtEPosta" ErrorMessage="*" 
                    ValidationGroup="EkleValidations"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="ValiRevEPosta" runat="server" ControlToValidate="txtEPosta" ErrorMessage="Posta Adresinizi kontrol ediniz!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="EkleValidations"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="MusteriEkleTD">Adres</td>
            <td class="MusteriEkleTabloKolonIki" >
                <asp:TextBox ID="txtAdres" runat="server" Height="93px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
            <td >
                <asp:RequiredFieldValidator ID="ValiRfvAdres" runat="server" 
                    ControlToValidate="txtAdres" ErrorMessage="*" ValidationGroup="EkleValidations"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="btnEkle" runat="server" Text="Müşteri Ekle" OnClick="btnEkle_Click" CssClass="MusteriEkleButon" ValidationGroup="EkleValidations" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                Bütün Alanların Doldurulması Zorunludur!</td>
        </tr>
    </table>
</asp:Content>

