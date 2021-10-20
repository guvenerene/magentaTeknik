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
        if (IsPostBack!=true)
        {
            if (Session["DuzenleMusteri"] != null)
            {
                OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath(@"App_Data\magentaVeri.accdb") + ";Persist Security Info=True");
                OleDbCommand oku = new OleDbCommand("select * from musteri where TCno='" + Session["DuzenleMusteri"] + "'", baglanti);
                baglanti.Open();

                OleDbDataReader dr = oku.ExecuteReader();
                if (dr.Read())
                {
                    txtAdres.Text = dr["Adres"].ToString();
                    txtAdSad.Text = dr["AdSoyad"].ToString();
                    txtCepTelefon.Text = dr["CepTelefon"].ToString();
                    txtEPosta.Text = dr["EPosta"].ToString();
                    txtSabitTelefon.Text = dr["SabitTelefon"].ToString();
                    txtTCNo.Text = dr["TCno"].ToString();
                    baglanti.Close();
                }
            }
            else
            {
                Response.Redirect("MusteriListele.aspx");
            }
        }
        
    }

    protected void btnDuzenle_Click(object sender, EventArgs e)
    {
        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath(@"App_Data\magentaVeri.accdb") + ";Persist Security Info=True");


        OleDbCommand oku = new OleDbCommand("select * from musteri where TCno<>'"+txtTCNo.Text+"' AND CepTelefon='" + txtCepTelefon.Text + "'", baglanti);

        baglanti.Open();

        OleDbDataReader dr = oku.ExecuteReader();
        if (dr.Read())
        {
            Response.Write("<script>alert('Şu anda tanımlamakta olduğunuz Cep Telefonu Başka Müşteriye Ait!')</script>");
        }
        else
        {
            OleDbCommand duzenle = new OleDbCommand("Update musteri set SabitTelefon=@st, CepTelefon=@ct, EPosta=@ep, Adres=@adrs Where TCno='" + Session["DuzenleMusteri"] + "'", baglanti);
            duzenle.Parameters.AddWithValue("@st", txtSabitTelefon.Text);
            duzenle.Parameters.AddWithValue("@ct", txtCepTelefon.Text);
            duzenle.Parameters.AddWithValue("@ep", txtEPosta.Text);
            duzenle.Parameters.AddWithValue("@adrs", txtAdres.Text);
            duzenle.ExecuteNonQuery();
            Response.Write("<script>setTimeout(function(){window.open('MusteriListele.aspx','_self');},500);</script>");
            
        }
        baglanti.Close();
 
        
        
        
    }
}