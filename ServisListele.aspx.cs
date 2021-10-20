using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class listeleServis : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
    /*GridView1 de seçilmiş olan satırın ID değerini Urun adlı oturuma atayacak
     *ardından servisCik.aspx sayfasına yönlendirecek.*/
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["Urun"] = GridView1.SelectedValue.ToString();
        Response.Redirect("servisCik.aspx");
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int siraNo = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "mcSec")
        {
            GridViewRow satirBilgileri = GridView1.Rows[siraNo];
            string CepTelefonu = GridView1.Rows[siraNo].Cells[3].Text;
            string seriNo = GridView1.Rows[siraNo].Cells[4].Text;
            Session["SeriNo"] = seriNo;
            Session["CepTelefon"] = CepTelefonu;
            Response.Write("<script>window.open('servisFormu.aspx','_blank');</script>");
        }
    }
}