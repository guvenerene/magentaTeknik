using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class listeleMusteri : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
    /*Gridview1 de bulunan müşterilerden birisi seçildiğinde, 
     *Musteri oturumuna seçilen müşterinin IDsi eklenip ServisEkle.aspx e yönlendirilecek.*/
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["Musteri"] = GridView1.SelectedValue.ToString();
        Response.Redirect("ServisEkle.aspx");
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int siraNo = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "Duzenle")
        {
            GridViewRow satirBilgileri = GridView1.Rows[siraNo];
            string CepTelefonu = GridView1.Rows[siraNo].Cells[3].Text;
            Session["DuzenleMusteri"] = CepTelefonu;
            Response.Write("<script>window.open('MusteriDuzenle.aspx','_self');</script>");
        }
    }
}