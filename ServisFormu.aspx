<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ServisFormu.aspx.cs" Inherits="zzz" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .logo
        {
            width: 300px;
            height: 92px;
        }
        table, th, td 
        {
            border: 1px solid black;
            border-collapse: collapse;
        }
        li
        {
            font-size:12px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:900px; margin-left:auto; margin-right:auto;">

        <div style="width:900px; height:92px;">
            <div style="width:300px; height:92px;float:left;">
                <img alt="" class="logo" src="img/logo.png" />
            </div>
                <h2 style="margin-bottom: 0px; width: 341px; margin-left: 388px; margin-top: 31px;">
                    <br />
                    ..::HİZMET SÖZLEŞMESİ::..</h2>
        </div>
        
        <br />
            <table style="width:900px; border:1px solid ;">
                <tr>
                    <td style="width:200px;">Müşteri</td>
                    <td>
                        <asp:Label ID="lblMusteriAdSad" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width:200px;">İrtibat</td>
                    <td>
                        <asp:Label ID="lblMusteriIrtibat" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width:200px;">Adres</td>
                    <td>
                        <asp:Label ID="lblMusteriAdres" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <table style="width:900px;" border="1px" frame="border">
                <tr>
                    <td style="width:200px;">Marka / Model&nbsp; </td>
                    <td>
                        <asp:Label ID="lblCihazMModel" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width:200px;">Seri No</td>
                    <td>
                        <asp:Label ID="lblCihazSeriNo" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width:200px;">Şikayet</td>
                    <td>
                        <asp:Label ID="lblCihazSikayet" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

        <div style="width:900px;">
        <ul>
            <br />
            <li>Servis formu geri alınmadan cihaz teslim edilmez. 
                Servis formunun bulunmaması durumunda; Firmalardan cihazın teslim alındığına 
                dair kaşeli ve imzalı bir yazı, şahıslardan ise ön ve arka kimlik fotokopisi ile 
                birlikte yine benzer bir yazı talep edilir.</li>
            <br />
            <li>Olumlu veya olumsuz sonuç bilgisi müşteriye iletilmiş 
                olan cihazlar<strong> 3 ay</strong> 
                    içerisinde alınmadığı takdirde hiçbir 
                şekilde sorumluluk kabul edilmeyecektir.
            </li>
            <br />
            <li>Ön Arıza tespit süresi maksimum 7 iş günüdür. 
                Onaylanmış cihazlarda ortalama tamir süresi 7 İş günüdür. (özel parçalar hariç)
                Sisteme müdahale sonucu oluşabilecek data kayıplarından firmamız sorumlu 
                değildir. Lütfen cihazınızı servisimize teslim etmeden önce tüm yedeklerinizi 
                alınız.
            </li>
            <br />
            <li>Sistemde mevcut yüklenmiş tüm yazılımlar ile ilgili 
                hukuki sorumluluk cihaz sahibine aittir.
            </li>
            <br />
            <li>Arıza tespit aşamasında cihazın orijinal yapısını 
                değiştirecek hiçbir elektronik müdahalede bulunulmaz, ölçüm ve testlerle arıza 
                tespit edilir. Bazen, özellikle anakart problemlerinde, cihaz tespit amacıyla 
                demonte hale getirildiğinde arızanın tezahürleri değişebilir, cihaz ilk 
                geldiğindeki arıza belirtilerinden farklı belirtiler gösterebilir. Bu gibi 
                durumlardan dolayı hiçbir sorumluluk kabul edilmez.
            </li>
            <br />
            <li>Toplam maliyeti parça dahil<strong> 
                    50 USD+KDV</strong>&#39; yi aşmayan 
                işlemler herhangi bir onay alınmadan doğrudan yapılır. Toplam maliyeti parça 
                dahil<strong> 50 USD+KDV</strong>&#39; yi 
                geçen işlemlerde müşteri onayı istenir.
            </li>
            <br />
            <li>Belirtilen arızanın yapılan tüm test ve kontrollere 
                rağmen cihazda arıza tespit edilememesi durumunda 
                    <strong>30 USD+KDV</strong> 
                    standart servis ücreti alınır ve 
                belirtilen arızanın cihazda bulunmadığı 3 ay boyunca garanti edilir.
            </li>
            <br />
            <li>Onay verildiği takdirde önceden fiyatlandırılan ve 
                belirlenen işlemler uygulanır, son kontrol ve testler yapılarak cihaz hazır hale 
                getirilir.
            </li>
            <br />
            <li>Arıza tespiti yapılan ancak onaylanmayan cihazlardan 
                    <strong>20 USD+KDV</strong> 
                    arıza tespit ücreti alınır. (Onaylanan 
                cihazlardan hiçbir şekilde arıza tespit ücreti alınmaz). 
                                        
            </li>
            <br />
            <li>Ram, cpu, hdd arızası tespit edildiğinde arızalı parça 
                değişimi onaylansın veya onaylanmasın parça hariç 
                    <strong>30 USD+KDV</strong> 
                    standart servis ücreti alınır.
            </li>
            <br />
            <li>Tamiri onaylanmayan cihaz demonte edilmiş durumda ise 
                hemen iade edilemez. Toparlanması için geçecek süre sebebiyle asgari 1 gün, 
                azami 3 gün sonra iade edilir. Gecikmeden dolayı mağdur olmamak için lütfen 
                onaylanmayan tamir işlemlerini önceden bildiriniz.
            </li>
            <br />
            <li>Onay verilen işlemler hangi sebeple olursa olsun 
                (istisnai durumlar aşağıda belirtilmiştir) müşteri tarafından iptal edildiğinde; 
                tamir işlemi yapılmış olsun veya olmasın, onaylanmış servis ve parça bedeli 
                toplamının %40&#39; ı servis ücreti olarak alınır. &nbsp;İade durumunda cihazın 
                servisimize ilk geldiğinde gösterdiği arızalarda değişim olabilir. (Söküp ve 
                toplanması sebebiyle)
            </li>
            <br />
            <li>Servisimizde tamir edilen tüm cihazlar teslim 
                tarihinden itibaren 3 ay işçilik garantilidir.
            </li>
            <br />
            <li>Kullanılan veya değiştirilen tüm yedek parçaların 
                garantileri için, teslim tarihinden itibaren yedek parça bazında geçerli olan 
                garanti süreleri uygulanır.
            </li>
            <br />
            <li>Verilen garanti cihazın tamamı için geçerli değildir, 
                yedek parçalar ve tamir edilen donanımın tamir edilen bölgesi ile 
                sınırlandırılmıştır.
            </li>
            <br />
            <li>Tamir edilen cihazın kritik bölgelerine ve değiştirilen 
                parçaların üzerine garanti etiketi yapıştırılır. Garanti etiketlerinin 
                yırtılması ya da sökülmesi durumunda garanti geçersiz kalır.
            </li>
            <br />
            <li>Kullanım hataları, fiziksel darbeler, sıvı teması gibi 
                dış kaynaklı sebeplerle oluşan arıza tekrarlarında ya da aynı sebeplerle yedek 
                parçaların arızalanması durumunda garanti dışı işlem uygulanır.
            </li>
            <br />
            <li>Aynı arıza sebebiyle cihazın en az üç kez servisimize 
                gelmesi durumunda, müşteri dilerse işlemleri iptal ederek ödediği ücreti geri 
                alabilir.
            </li>
            <br />
            <li>Lisansı olmayan hiçbir yazılım firmamız tarafından 
                sisteme yüklenmez, yüklenmesi talep edilemez. Daha önce yüklenmiş yazılımlardan 
                firmamız sorumlu tutulamaz.
            </li>
            <br />
            <li>Ödemeler ürün teslimatı esnasında nakit ya da 
                teslimattan önce banka havalesi yolu ile tahsil edilir.
            </li>
            <br />
            <li>Parça değişimlerinde hurda indirimli fiyat 
                verilmektedir. (eski değişen parça) Değişen parçanın iade istenmesi durumunda 
                parça fiyatının %40 oranında fark uygulanır.
            </li>
        </ul>
        </div>

        <br />
        <br />
        <br />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblTeslimEden" runat="server"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; İmza:<br />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
