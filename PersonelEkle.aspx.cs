using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class eklePersonel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnPersonelEkle_Click(object sender, EventArgs e)
    {
        if (Calendar1.SelectedDate > DateTime.Now)
        {
            Response.Write("<script>alert('İşe giriş tarihinizi kontrol ediniz!')</script>");
        }
        else
        {
            OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath(@"App_Data\magentaVeri.accdb") + ";Persist Security Info=True");

            OleDbCommand oku = new OleDbCommand("select * from personel where KullaniciAdi='" + txtKAd.Text + "'", baglanti);

            baglanti.Open();

            OleDbDataReader dr = oku.ExecuteReader();
            if (dr.Read())
            {
                Response.Write("<script>alert('Şu anda tanımlamakta olduğunuz kullanıcı adı kayıtlarımızda mevcut!')</script>");
                temizle();
            }
            else
            {
                OleDbCommand ekle = new OleDbCommand("insert into personel(KullaniciAdi,AdSoyad,sifre,GirisTarihi,CepTelefon,Unvan) values(@KullaniciAdi,@AdSoyad,@sifre,@GirisTarihi,@CepTelefon,@Unvan)", baglanti);

                ekle.Parameters.AddWithValue("KullaniciAdi", txtKAd.Text);
                ekle.Parameters.AddWithValue("AdSoyad", txtAdSad.Text);
                ekle.Parameters.AddWithValue("sifre", txtSifre.Text);
                ekle.Parameters.AddWithValue("GirisTarihi", Calendar1.SelectedDate.ToShortDateString());
                ekle.Parameters.AddWithValue("CepTelefon", txtCepTelefon.Text);
                ekle.Parameters.AddWithValue("Unvan", txtUnvan.Text);
                ekle.ExecuteNonQuery();

                Response.Write("<script>setTimeout(function(){window.open('PersonelListele.aspx', '_self');},500);</script>");
            }
            baglanti.Close();
        }
    }
    void temizle()
    {
        txtKAd.Text = "";
    }
}