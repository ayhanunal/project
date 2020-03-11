using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MelodiProgram
{
	public partial class Eski_Stok : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (Session["oturum_test"] != null)
			{
				if (Session["oturum_test"].Equals(0))
				{
					Response.Redirect("Default.aspx");
				}
			}
			else
			{
				Response.Redirect("Default.aspx");
			}
		}

		string silinecek = "";
		protected void sec_kayit_sil_Click(object sender, EventArgs e)
		{
			try
			{
				int indis = this.GridView1.SelectedIndex;
				GridViewRow satir = GridView1.Rows[indis];
				silinecek = satir.Cells[1].Text;
				silinecek = silinecek.Trim();
			}
			catch (Exception)
			{
				Response.Write("<script lang='javascript'>alert('Seçim Yapınız')</script>");
			}


			if (silinecek != "")
			{

				SqlConnection baglan = new SqlConnection(@"Server = AYHAN-PC\SQLEXPRESS; Database = ETA_MELODI_2019; Trusted_Connection = True;");
				baglan.Open();

				SqlCommand cmd = new SqlCommand("delete from STKKART where STKKOD=@sil_stok", baglan);
				SqlCommand cmd2 = new SqlCommand("delete from STKFIYAT where STKFIYSTKKOD=@sil_stok2", baglan);
				cmd.Parameters.AddWithValue("@sil_stok", silinecek);
				cmd2.Parameters.AddWithValue("@sil_stok2", silinecek);
				try
				{

					cmd.ExecuteNonQuery();
					cmd2.ExecuteNonQuery();
					Response.Write("<script lang='javascript'>alert('Silme İşlemi Başarıyla Gerçekleşti')</script>");

				}
				catch (Exception)
				{
					Response.Write("<script lang='javascript'>alert('Silme Gerçekleşemedi')</script>");
				}
				finally
				{
					baglan.Close();
				}
			}
		}

		string guncelle = "";
		protected void Button1_Click(object sender, EventArgs e)
		{
			try
			{
				int indis2 = this.GridView1.SelectedIndex;
				GridViewRow satir2 = GridView1.Rows[indis2];
				guncelle = satir2.Cells[1].Text;
				guncelle = guncelle.Trim();
			}
			catch (Exception)
			{
				Response.Write("<script lang='javascript'>alert('Seçim Yapınız')</script>");
			}

			if (guncelle != "")
			{
				Response.Redirect("Stok_Guncelle.aspx?kod=" + guncelle);
			}
			else
			{
				Response.Write("<script lang='javascript'>alert('Seçim Yapınız')</script>");
			}
		}
	}
}