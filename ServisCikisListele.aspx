<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ServisCikisListele.aspx.cs" Inherits="listeleCikis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="margin-top:6%; margin-bottom:6%;">
        <tr>
            <td>
                <h1>
                    TESLİM EDİLMİŞ CİHAZLAR</h1>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Width="1000px" 
                    AllowSorting="True" CellPadding="4" ForeColor="#333333" Font-Size="10pt">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="AdSoyad" HeaderText="Adı Soyadı" 
                            SortExpression="AdSoyad" />
                        <asp:BoundField DataField="CepTelefon" HeaderText="Cep Telefonu" 
                            SortExpression="CepTelefon" />
                        <asp:BoundField DataField="Marka" HeaderText="Marka" SortExpression="Marka" />
                        <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                        <asp:BoundField DataField="Ariza" HeaderText="Arıza" SortExpression="Ariza" />
                        <asp:BoundField DataField="OnarimNotu" HeaderText="Onarim Notu" 
                            SortExpression="OnarimNotu" />
                        <asp:BoundField DataField="TeslimTarihi" HeaderText="Teslim Tarihi" 
                            SortExpression="TeslimTarihi" />
                        <asp:BoundField DataField="Ucret" HeaderText="Ücret" 
                            SortExpression="Ucret" />
                        <asp:BoundField DataField="Personel" HeaderText="Teslim Eden Personel" 
                            SortExpression="Personel" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" 
                        Width="1000px" Wrap="True" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:listeleMusteri %>" 
                    ProviderName="<%$ ConnectionStrings:listeleMusteri.ProviderName %>" 
                    
                    SelectCommand="SELECT [AdSoyad], [CepTelefon], [SeriNo], [Marka], [Model], [Ariza], [OnarimNotu], [EklemeTarihi], [TeslimTarihi], [Ucret], [Personel] FROM [servisCikis]">
                </asp:SqlDataSource>
                <br />
                
            </td>
        </tr>
    </table>
</asp:Content>

