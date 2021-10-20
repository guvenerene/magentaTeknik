using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnGiris_Click(object sender, EventArgs e)
    {
        kontrol();
    }

    //Bu metod veritabanın da ki personel tablosunda kullanıcı adı ve şifre nin aynı satır da bulunma durumunu kontrol eder.
    //Yoksa metin alanlarını temizler.
    //Varsa PersonelAd ve PersonelKAd oturumları oluşturur.
    void kontrol()
    {
        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath(@"App_Data\magentaVeri.accdb") + ";Persist Security Info=True");
        OleDbCommand oku = new OleDbCommand("select * from personel where KullaniciAdi='" + txtKullaniciAdi.Text + "' AND sifre='" + txtSifre.Text + "'", baglanti);

        baglanti.Open();

        OleDbDataReader dr = oku.ExecuteReader();
        if (dr.Read())
        {
            Response.Write("<script>alert('Giriş Onaylandı')</script>");

            Session["PersonelAd"] = dr["AdSoyad"].ToString();
            Session["PersonelKAd"] = txtKullaniciAdi.Text;
            Response.Redirect("AnaSayfa.aspx");
        }
        else
        {
            Response.Write("<script>alert('Giriş Onaylanmadı')</script>");
            txtKullaniciAdi.Text = "";
            txtSifre.Text = "";
        }
        baglanti.Close();
    }
}