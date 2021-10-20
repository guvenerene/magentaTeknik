using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class servisKayit : System.Web.UI.Page
{
    
    /*Sayfa ilk yüklendiğinde musteri oturumunu kontrol edecek
     * boş olması halinde listeleMusteri.aspx e gidecek.
     * eğer dolu ise musteri tablosundan seçilmiş olan CepTelefon ve TCno bilgilerini alacak.
     * son olarak txtCepTelefon ve txtTCno araçlarına akleyecek.*/
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Musteri"] == null)
        {
            Response.Redirect("MusteriListele.aspx");
        }
        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath(@"App_Data\magentaVeri.accdb") + ";Persist Security Info=True");
        OleDbCommand getir = new OleDbCommand("SELECT * FROM musteri where ID=" + Session["Musteri"], baglanti);
        baglanti.Open();
        OleDbDataReader okuGetir = getir.ExecuteReader();
        while (okuGetir.Read())
        {
            txtCepTelefon.Text = okuGetir["CepTelefon"].ToString();
            txtTCno.Text = okuGetir["TCno"].ToString();
            txtAdSad.Text = okuGetir["AdSoyad"].ToString();
        }
        baglanti.Close();
        
    }


    /*servisCihazları adlı tabloya Müşteri Cihazı kayıt etmek için yazdığım satırlar.*/
    protected void btnCihazEkle_Click(object sender, EventArgs e)
    {
        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath(@"App_Data\magentaVeri.accdb") + ";Persist Security Info=True");
        OleDbCommand oku = new OleDbCommand("select * from servisCihazlari where SeriNo='"+txtSeriNo.Text+"'",baglanti);

        baglanti.Open();

        OleDbDataReader dr = oku.ExecuteReader();
        if (dr.Read())
        {
            Response.Write("<script>alert('Şu anda tanımlamakta olduğunuz cihaz kayıtlarımızda mevcut!')</script>");
        }
        else
        {
            OleDbCommand ekle = new OleDbCommand("insert into servisCihazlari(AdSoyad,TCno,SeriNo,Marka,Model,Ariza,Sifre,CepTelefon,EklemeTarihi,Personel) values(@AdSoyad,@TCno,@SeriNo,@Marka,@Model,@Ariza,@Sifre,@CepTelefon,@EklemeTarihi,@Personel)", baglanti);

            ekle.Parameters.AddWithValue("AdSoyad", txtAdSad.Text);
            ekle.Parameters.AddWithValue("TCno", txtTCno.Text);
            ekle.Parameters.AddWithValue("SeriNo", txtSeriNo.Text);
            ekle.Parameters.AddWithValue("Marka", txtMarka.Text);
            ekle.Parameters.AddWithValue("Model", txtModel.Text);
            ekle.Parameters.AddWithValue("Ariza", txtAriza.Text);
            ekle.Parameters.AddWithValue("Sifre", txtSifre.Text);
            ekle.Parameters.AddWithValue("CepTelefon", txtCepTelefon.Text);
            ekle.Parameters.AddWithValue("EklemeTarihi", DateTime.Now.ToShortDateString());
            ekle.Parameters.AddWithValue("Personel",Session["PersonelKAd"].ToString());
            ekle.ExecuteNonQuery();
            Response.Write("<script>setTimeout(function(){window.open('ServisListele.aspx','_self');},500);</script>");
        }
        baglanti.Close();

        Session.Remove("Musteri");
        
    }
}