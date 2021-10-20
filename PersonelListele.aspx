<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PersonelListele.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<table style="margin-top:6%; margin-bottom:6%;">
    <tr>
        <td class="style1"><h1>PERSONEL LİSTESİ</h1></td>
    </tr>




        <tr>
            <td>

            

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="ID" DataSourceID="SqlDataSource1" CellPadding="4" 
                    ForeColor="#333333" Font-Size="10pt" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="AdSoyad" HeaderText="Adı Soyadı" 
                            SortExpression="AdSoyad" />
                        <asp:BoundField DataField="KullaniciAdi" HeaderText="Kullanıcı Adı" 
                            SortExpression="KullaniciAdi" />
                        <asp:BoundField DataField="Unvan" HeaderText="Ünvanı" SortExpression="Unvan" />
                        <asp:BoundField DataField="CepTelefon" HeaderText="Cep Telefonu" 
                            SortExpression="CepTelefon" />
                        <asp:BoundField DataField="GirisTarihi" HeaderText="Giriş Tarihi" 
                            SortExpression="GirisTarihi" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:listeleMusteri %>" 
                    ProviderName="<%$ ConnectionStrings:listeleMusteri.ProviderName %>" 
                    SelectCommand="SELECT * FROM [personel]" 
                    OldValuesParameterFormatString="original_{0}">
                </asp:SqlDataSource>

            </td>
        </tr>
    </table>


</asp:Content>

