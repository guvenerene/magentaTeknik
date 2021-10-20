<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AnaSayfa.aspx.cs" Inherits="AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    <br />
    <hr />
    <br />
        <div class="bilgiKutu" style="height:95px;">
            <div class="bilgiBaslik">SERVİS</div>
            <div class="bilgi">Bu Gün Servise Alınan Cihaz Sayısı</div>
            <div class="bilgi">Bu Gün Servisten Çıkan Cihaz Sayısı</div>
            <div class="bilgi">Serviste Bulunan Toplam Cihaz Sayısı</div>

            <div class="bilgi"><asp:Label ID="lblBuGunGiris" runat="server" Text="Label"></asp:Label></div>
            <div class="bilgi"><asp:Label ID="lblBuGunCikis" runat="server" Text="Label"></asp:Label></div>
            <div class="bilgi"><asp:Label ID="lblToplamServis" runat="server" Text="Label"></asp:Label></div>
        </div>
    <br />
    <br />
    <hr />
    <br />

        <div class="bilgiKutu" style="height:296px;">
            <div class="bilgiBaslik">Tarihe Göre Kasa Grafiği</div>
            <asp:Chart ID="Chart1" runat="server" Width="900px" 
                DataSourceID="SqlDataSource1" Height="250px">
                <Series>
                    <asp:Series Name="Series1" ChartType="Line" XValueMember="TeslimTarihi" 
                        YValueMembers="Toplam" YValuesPerPoint="4">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:listeleMusteri %>" 
                ProviderName="<%$ ConnectionStrings:listeleMusteri.ProviderName %>" 
                SelectCommand="SELECT * FROM [TarihToplam]"></asp:SqlDataSource>
        </div>
</asp:Content>

