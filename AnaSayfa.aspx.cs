using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class AnaSayfa : System.Web.UI.Page
{
    //Sayfa ilk yüklenecek ve sırasıyla metodlar çalışacaktır.
    protected void Page_Load(object sender, EventArgs e)
    {

        BuGunGirenCihazlar();
        BuGunCikanCihazlar();
        toplamServis();

    }
    //Veritabanı ile bağlantı kurar ve bu güne eklenmiş olan cihazları sayarak "lblBuGunGiris etiketine yazar."
    void BuGunGirenCihazlar()
    {
        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath(@"App_Data\magentaVeri.accdb") + ";Persist Security Info=True");
        OleDbCommand buGunuGirenGetir = new OleDbCommand("SELECT COUNT(EklemeTarihi)AS buGunuGirenGetir FROM servisCihazlari where EklemeTarihi='" + DateTime.Now.ToShortDateString() + "'", baglanti);
        OleDbCommand buGunGirenCikanGetir = new OleDbCommand("SELECT COUNT(EklemeTarihi)AS buGunGirenCikanGetir FROM servisCikis where EklemeTarihi='" + DateTime.Now.ToShortDateString() + "'", baglanti);
        baglanti.Open();
        OleDbDataReader buGunGiren = buGunuGirenGetir.ExecuteReader();
        OleDbDataReader buGunGirenCikan = buGunGirenCikanGetir.ExecuteReader();
        while (buGunGiren.Read())
        {
            lblBuGunGiris.Text = buGunGiren["buGunuGirenGetir"].ToString();
        }
        while (buGunGirenCikan.Read())
        {
            int bg = Convert.ToInt16(lblBuGunGiris.Text), bggc= Convert.ToInt16(buGunGirenCikan["buGunGirenCikanGetir"]);
            lblBuGunGiris.Text = (bg + bggc).ToString();
        }
        baglanti.Close();
    }

    //Veritabanı ile bağlantı kurar ve bu güne çıkartılmış olan cihazları sayarak "lblBuGunCikis etiketine yazar."
    void BuGunCikanCihazlar()
    {
        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath(@"App_Data\magentaVeri.accdb") + ";Persist Security Info=True");
        OleDbCommand buGunCikanGetir = new OleDbCommand("SELECT COUNT(EklemeTarihi)AS BuGunToplam FROM servisCikis where TeslimTarihi='" + DateTime.Now.ToShortDateString() + "'", baglanti);
        baglanti.Open();
        OleDbDataReader buGunCikan = buGunCikanGetir.ExecuteReader();
        while (buGunCikan.Read())
        {
            lblBuGunCikis.Text = buGunCikan["BuGunToplam"].ToString();
        }
        baglanti.Close();
    }

    //Veritabanı ile bağlantı kurar ve servis cihazlarını sayarak "lblToplamServis" etiketine yazar.
    void toplamServis()
    {
        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath(@"App_Data\magentaVeri.accdb") + ";Persist Security Info=True");
        OleDbCommand toplamServisGetir = new OleDbCommand("SELECT COUNT(EklemeTarihi)AS BuGunToplam FROM servisCihazlari", baglanti);
        baglanti.Open();
        OleDbDataReader toplamServis = toplamServisGetir.ExecuteReader();
        while (toplamServis.Read())
        {
            lblToplamServis.Text = toplamServis["BuGunToplam"].ToString();
        }
        baglanti.Close();
    }
}