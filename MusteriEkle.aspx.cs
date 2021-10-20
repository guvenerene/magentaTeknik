using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class musteriEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /*musteri tablosuna müşteri eksiksiz bir şekilde eklenecektir ve ardından,
     *CepTelefonu ve TCKno oturumları ilgili araçlar tarafından doldurulacaktır.*/
    protected void btnEkle_Click(object sender, EventArgs e)
    {
        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath(@"App_Data\magentaVeri.accdb") + ";Persist Security Info=True");

        OleDbCommand oku = new OleDbCommand("select * from musteri where TCno='"+txtTCNo.Text+"'",baglanti);
        OleDbCommand oku2 = new OleDbCommand("select * from musteri where CepTelefon='" + txtCepTelefon.Text + "'", baglanti);

        baglanti.Open();

        OleDbDataReader dr2 = oku2.ExecuteReader();
        OleDbDataReader dr = oku.ExecuteReader();
        if (dr.Read()||dr2.Read())
        {
            Response.Write("<script>alert('Şu anda tanımlamakta olduğunuz müşteri kayıtlarımızda mevcut!')</script>");
            temizle();
        }
        else
        {
            OleDbCommand ekle = new OleDbCommand("insert into musteri(TCno,AdSoyad,SabitTelefon,CepTelefon,EPosta,Adres) values(@TCno,@AdSoyad,@SabitTelefon,@CepTelefon,@EPosta,@Adres)", baglanti);

            ekle.Parameters.AddWithValue("TCno", txtTCNo.Text);
            ekle.Parameters.AddWithValue("AdSoyad", txtAdSad.Text);
            ekle.Parameters.AddWithValue("SabitTelefon", txtSabitTelefon.Text);
            ekle.Parameters.AddWithValue("CepTelefon", txtCepTelefon.Text);
            ekle.Parameters.AddWithValue("EPosta", txtEPosta.Text);
            ekle.Parameters.AddWithValue("Adres", txtAdres.Text);
            ekle.ExecuteNonQuery();

            Session["CepTelefonu"] = txtCepTelefon.Text;
            Session["TCKno"] = txtCepTelefon.Text;


            Response.Write("<script>setTimeout(function(){window.open('MusteriListele.aspx', '_self');},500);</script>");
        }   
        baglanti.Close();
    }

            

    void temizle()
    {
        txtTCNo.Text = "";
        txtAdSad.Text = "";
        txtSabitTelefon.Text = "";
        txtCepTelefon.Text = "";
        txtEPosta.Text = "";
        txtAdres.Text = "";
    }

}