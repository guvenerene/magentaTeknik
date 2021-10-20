using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class servisCik : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Urun"] == null)
        {
            Response.Write("<script>alert('Servis Listeleme sayfasına ulaşabilmek için Müşteri seçmeniz gerekir!')</script>");
            Response.Redirect("ServisListele.aspx");

        }

            OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath(@"App_Data\magentaVeri.accdb") + ";Persist Security Info=True");
            OleDbCommand getir = new OleDbCommand("SELECT ID, AdSoyad, CepTelefon, SeriNo, Marka, Model, Ariza, EklemeTarihi, TCno FROM servisCihazlari where ID=" + Session["urun"], baglanti);
            baglanti.Open();
            OleDbDataReader okuGetir = getir.ExecuteReader();
            while (okuGetir.Read())
            {
                txtAdSad.Text=okuGetir["AdSoyad"].ToString();
                txtCepTelefon.Text = okuGetir["CepTelefon"].ToString();
                txtSeriNo.Text = okuGetir["SeriNo"].ToString();
                txtMarka.Text = okuGetir["Marka"].ToString();
                txtModel.Text = okuGetir["Model"].ToString();
                txtAriza.Text = okuGetir["Ariza"].ToString();
                txtEklemeTarihi.Text = okuGetir["EklemeTarihi"].ToString();
                txtTCno.Text = okuGetir["TCno"].ToString();
            }
            baglanti.Close();
        
    }
    protected void btnTeslimEt_Click(object sender, EventArgs e)
    {
        /*servisCikis tablosuna servisCihazları tablosundan seçtiğim ürünü ekledim.*/
        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath(@"App_Data\magentaVeri.accdb") + ";Persist Security Info=True");
        OleDbCommand okuEkle = new OleDbCommand("insert into servisCikis(AdSoyad,TCno,SeriNo,Marka,Model,Ariza,OnarimNotu,CepTelefon,TeslimTarihi,EklemeTarihi,Ucret,Personel) values(@AdSoyad,@TCno,@SeriNo,@Marka,@Model,@Ariza,@OnarimNotu,@CepTelefon,@TeslimTarihi,@EklemeTarihi,@Ucret,@Personel)", baglanti);

        okuEkle.Parameters.AddWithValue("AdSoyad",txtAdSad.Text);
        okuEkle.Parameters.AddWithValue("TCno", txtTCno.Text);
        okuEkle.Parameters.AddWithValue("SeriNo", txtSeriNo.Text);
        okuEkle.Parameters.AddWithValue("Marka", txtMarka.Text);
        okuEkle.Parameters.AddWithValue("Model", txtModel.Text);
        okuEkle.Parameters.AddWithValue("Ariza", txtAriza.Text);
        okuEkle.Parameters.AddWithValue("OnarimNotu", txtArizaOnarimBilgisi.Text);
        okuEkle.Parameters.AddWithValue("CepTelefon", txtCepTelefon.Text);
        okuEkle.Parameters.AddWithValue("EklemeTarihi", txtEklemeTarihi.Text);
        okuEkle.Parameters.AddWithValue("TeslimTraihi", DateTime.Now.ToShortDateString());
        okuEkle.Parameters.AddWithValue("Ucret", Convert.ToInt16(txtAlinanUcret.Text));
        okuEkle.Parameters.AddWithValue("Personel", Session["PersonelKAd"].ToString());

        baglanti.Open();
        okuEkle.ExecuteNonQuery();
        baglanti.Close();




        /*servisCikis tablosuna eklediğim ürünü servisCihazlari tablosundan sildim.*/
        OleDbCommand komut = new OleDbCommand("DELETE FROM servisCihazlari where ID=" + Session["urun"], baglanti);
        baglanti.Open();
        OleDbDataReader okuSil = komut.ExecuteReader();
        baglanti.Close();

        ClientScript.RegisterStartupScript(this.GetType(), "PrintOperation", "printing()", true);

        /*Urun oturumunu temizledim.*/
        Session.Remove("Urun");
        Response.Write("<script>window.open('ServisListele.aspx','_self');</script>");
        
    }
}