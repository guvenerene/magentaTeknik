using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class zzz : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        oturumKontrol();
        musteriDolum();
        urunDolum();
        
        Session.Remove("CepTelefon");
        Session.Remove("SeriNo");
    }

    //oturumların boş olup olmamalarını kontrol eder.
    void oturumKontrol()
    {
        if (Session["PersonelAd"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (Session["CepTelefon"] == null)
        {
            Response.Redirect("ServisListele.aspx");
        }

    }

    //servisCihazlari tablosundan marka, model, seriNo, Ariza bilgilerini çekerek ilgili etiketlere yazar.
    void musteriDolum()
    {
        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath(@"App_Data\magentaVeri.accdb") + ";Persist Security Info=True");
        OleDbCommand getir = new OleDbCommand("SELECT * FROM musteri where CepTelefon='" + Session["CepTelefon"] + "'", baglanti);
        baglanti.Open();
        OleDbDataReader okuGetir = getir.ExecuteReader();
        while (okuGetir.Read())
        {
            lblMusteriIrtibat.Text = okuGetir["CepTelefon"].ToString() + " / " + okuGetir["SabitTelefon"];
            lblMusteriAdres.Text = okuGetir["Adres"].ToString();
            lblMusteriAdSad.Text = okuGetir["AdSoyad"].ToString();
            lblTeslimEden.Text = "Teslim Eden: <b><u>"+ okuGetir["AdSoyad"].ToString()+"</u></b>";
        }
        baglanti.Close();
    }

    //servisCihazlari tablosundan marka, model, seriNo, Ariza bilgilerini çekerek ilgili etiketlere yazar.
    void urunDolum()
    {
        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath(@"App_Data\magentaVeri.accdb") + ";Persist Security Info=True");
        OleDbCommand getir = new OleDbCommand("SELECT * FROM servisCihazlari where SeriNo='" + Session["SeriNo"] + "'", baglanti);
        baglanti.Open();
        OleDbDataReader okuGetir = getir.ExecuteReader();
        while (okuGetir.Read())
        {
            lblCihazMModel.Text = okuGetir["Marka"].ToString() + " / " + okuGetir["Model"];
            lblCihazSeriNo.Text = okuGetir["SeriNo"].ToString();
            lblCihazSikayet.Text = okuGetir["Ariza"].ToString();
        }
        baglanti.Close();
        Response.Write("<script>window.print();</script>");
    }
    
}