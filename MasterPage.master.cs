using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        kontrol();
        AdSoyad();

    }
    protected void btnCikis_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("AnaSayfa.aspx");
    }


    //personel oturunlarının doluluğunu kontrol eder.
    void kontrol()
    {
        if (Session["PersonelAd"] == null || Session["PersonelKAd"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }

    //giriş yapan personelin personel tablosunda "AdSoyad" bilgisini çekip boşlum karakterine kadar ayırır ve ilk değeri etikete yazar.
    void AdSoyad()
    {
        string AdSad = Session["PersonelAd"].ToString();
        string[] Ad = AdSad.Split(' ');
        lblPersonelAdi.Text = Ad[0].ToString();

    }
}