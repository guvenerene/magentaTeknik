<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ServisListele.aspx.cs" Inherits="listeleServis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style3 {
            margin-left: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            <table style="margin-top:6%; margin-bottom:6%;">
        <tr>
            <td><h1>SERVİS CİHAZLARI</h1></td>
        </tr>
        <tr>
            <td>

            

                <br />

            

        <asp:GridView ID="GridView1" runat="server" Width="1000px" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" 
                    DataKeyNames="ID" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    CellPadding="4" ForeColor="#333333" 
                    onrowcommand="GridView1_RowCommand" Font-Size="10pt">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
            
                <asp:ButtonField ButtonType="Image" CommandName="mcSec" 
                    ImageUrl="~/img/yazdir.png" Text="Button" HeaderText="Form" />
                <asp:CommandField ButtonType="Image" SelectImageUrl="~/img/teslimat.png" 
                    ShowSelectButton="True" HeaderText="Teslim" />
                <asp:BoundField DataField="AdSoyad" HeaderText="Ad Soyad" 
                    SortExpression="AdSoyad" />
                <asp:BoundField DataField="CepTelefon" HeaderText="Cep Telefon" 
                    SortExpression="CepTelefon" />
                <asp:BoundField DataField="SeriNo" HeaderText="Seri No" 
                    SortExpression="SeriNo" />
                <asp:BoundField DataField="Marka" HeaderText="Marka" 
                    SortExpression="Marka" />
                <asp:BoundField DataField="Model" HeaderText="Model" 
                    SortExpression="Model" />
                <asp:BoundField DataField="Ariza" HeaderText="Arıza" 
                    SortExpression="Ariza" />
                <asp:BoundField DataField="Sifre" HeaderText="Şifre" 
                    SortExpression="Sifre" />
                <asp:BoundField DataField="EklemeTarihi" HeaderText="Ekleme Tarihi" 
                    SortExpression="EklemeTarihi" />
                <asp:BoundField DataField="Personel" HeaderText="Personel" 
                    SortExpression="Personel" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" 
                Width="900px" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>

            

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:listeleMusteri %>" 
                    ProviderName="<%$ ConnectionStrings:listeleMusteri.ProviderName %>" 
                    
                    SelectCommand="SELECT * FROM [servisCihazlari]" 
                    OldValuesParameterFormatString="original_{0}">
                </asp:SqlDataSource>

            

            </td>
        </tr>
    </table>
</asp:Content>

