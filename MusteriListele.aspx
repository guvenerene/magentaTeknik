<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MusteriListele.aspx.cs" Inherits="listeleMusteri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            margin-left: 18px;
        }
        .style1
        {
            height: 77px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <table style="margin-top:6%; margin-bottom:6%;">
    <tr>
        <td class="style1"><h1>MÜŞTERİ LİSTESİ</h1></td>
    </tr>




        <tr>
            <td dir="ltr">

            

        <asp:GridView ID="GridView1" runat="server" Width="1000px" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" DataKeyNames="ID" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" CellPadding="4" 
                    ForeColor="#333333" Font-Size="10pt" onrowcommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField SelectText="Servis Al" ShowSelectButton="True" 
                    ButtonType="Image" HeaderText="Servis Al" SelectImageUrl="~/img/ServisAl.png" />
                <asp:ButtonField ButtonType="Image" CommandName="Duzenle" HeaderText="Düzenle" 
                    ImageUrl="~/img/guncelle.png" />
                <asp:BoundField DataField="AdSoyad" HeaderText="Adı Soyadı" 
                    SortExpression="AdSoyad" />
                <asp:BoundField DataField="TCno" HeaderText="T.C. Kimlik Numarası" 
                    SortExpression="TCno" />
                <asp:BoundField DataField="CepTelefon" HeaderText="Cep Telefonu" 
                    SortExpression="CepTelefon" />
                <asp:BoundField DataField="SabitTelefon" HeaderText="Sabit Telefonu" 
                    SortExpression="SabitTelefon" />
                <asp:BoundField DataField="EPosta" HeaderText="E-Posta" 
                    SortExpression="EPosta" />
                <asp:BoundField DataField="Adres" HeaderText="Açık Adres" 
                    SortExpression="Adres" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" 
                Width="1000px" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:listeleMusteri %>" 
                    OldValuesParameterFormatString="original_{0}" 
                    ProviderName="<%$ ConnectionStrings:listeleMusteri.ProviderName %>" 
                    
                    
                    SelectCommand="SELECT [AdSoyad], [TCno], [CepTelefon], [SabitTelefon], [EPosta], [Adres], [ID] FROM [musteri]" 
                    ConflictDetection="CompareAllValues" 
                    DeleteCommand="DELETE FROM [musteri] WHERE [ID] = ? AND (([AdSoyad] = ?) OR ([AdSoyad] IS NULL AND ? IS NULL)) AND (([TCno] = ?) OR ([TCno] IS NULL AND ? IS NULL)) AND (([CepTelefon] = ?) OR ([CepTelefon] IS NULL AND ? IS NULL)) AND (([SabitTelefon] = ?) OR ([SabitTelefon] IS NULL AND ? IS NULL)) AND (([EPosta] = ?) OR ([EPosta] IS NULL AND ? IS NULL)) AND (([Adres] = ?) OR ([Adres] IS NULL AND ? IS NULL))" 
                    InsertCommand="INSERT INTO [musteri] ([AdSoyad], [TCno], [CepTelefon], [SabitTelefon], [EPosta], [Adres], [ID]) VALUES (?, ?, ?, ?, ?, ?, ?)" 
                    UpdateCommand="UPDATE [musteri] SET [AdSoyad] = ?, [TCno] = ?, [CepTelefon] = ?, [SabitTelefon] = ?, [EPosta] = ?, [Adres] = ? WHERE [ID] = ? AND (([AdSoyad] = ?) OR ([AdSoyad] IS NULL AND ? IS NULL)) AND (([TCno] = ?) OR ([TCno] IS NULL AND ? IS NULL)) AND (([CepTelefon] = ?) OR ([CepTelefon] IS NULL AND ? IS NULL)) AND (([SabitTelefon] = ?) OR ([SabitTelefon] IS NULL AND ? IS NULL)) AND (([EPosta] = ?) OR ([EPosta] IS NULL AND ? IS NULL)) AND (([Adres] = ?) OR ([Adres] IS NULL AND ? IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_AdSoyad" Type="String" />
                        <asp:Parameter Name="original_AdSoyad" Type="String" />
                        <asp:Parameter Name="original_TCno" Type="String" />
                        <asp:Parameter Name="original_TCno" Type="String" />
                        <asp:Parameter Name="original_CepTelefon" Type="String" />
                        <asp:Parameter Name="original_CepTelefon" Type="String" />
                        <asp:Parameter Name="original_SabitTelefon" Type="String" />
                        <asp:Parameter Name="original_SabitTelefon" Type="String" />
                        <asp:Parameter Name="original_EPosta" Type="String" />
                        <asp:Parameter Name="original_EPosta" Type="String" />
                        <asp:Parameter Name="original_Adres" Type="String" />
                        <asp:Parameter Name="original_Adres" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="AdSoyad" Type="String" />
                        <asp:Parameter Name="TCno" Type="String" />
                        <asp:Parameter Name="CepTelefon" Type="String" />
                        <asp:Parameter Name="SabitTelefon" Type="String" />
                        <asp:Parameter Name="EPosta" Type="String" />
                        <asp:Parameter Name="Adres" Type="String" />
                        <asp:Parameter Name="ID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="AdSoyad" Type="String" />
                        <asp:Parameter Name="TCno" Type="String" />
                        <asp:Parameter Name="CepTelefon" Type="String" />
                        <asp:Parameter Name="SabitTelefon" Type="String" />
                        <asp:Parameter Name="EPosta" Type="String" />
                        <asp:Parameter Name="Adres" Type="String" />
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_AdSoyad" Type="String" />
                        <asp:Parameter Name="original_AdSoyad" Type="String" />
                        <asp:Parameter Name="original_TCno" Type="String" />
                        <asp:Parameter Name="original_TCno" Type="String" />
                        <asp:Parameter Name="original_CepTelefon" Type="String" />
                        <asp:Parameter Name="original_CepTelefon" Type="String" />
                        <asp:Parameter Name="original_SabitTelefon" Type="String" />
                        <asp:Parameter Name="original_SabitTelefon" Type="String" />
                        <asp:Parameter Name="original_EPosta" Type="String" />
                        <asp:Parameter Name="original_EPosta" Type="String" />
                        <asp:Parameter Name="original_Adres" Type="String" />
                        <asp:Parameter Name="original_Adres" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            </td>
        </tr>
    </table>
            
            

        </asp:Content>

