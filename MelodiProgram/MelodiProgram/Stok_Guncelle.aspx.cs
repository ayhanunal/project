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
	public partial class Stok_Guncelle : System.Web.UI.Page
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



			Label1.Text = Request.QueryString["kod"].ToString();
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			decimal al_tut;
			decimal sat_tut;

			string stk_kod = Label1.Text.ToUpper();
			string cins = cinsi.Text.ToUpper();
			string cins2 = cinsi2.Text.ToUpper();
			string cins3 = cinsi3.Text.ToUpper();
			string cins4 = cinsi4.Text.ToUpper();
			string oz1 = ozel1.Text.ToUpper();
			string oz2 = ozel2.Text.ToUpper();
			string oz3 = ozel3.Text.ToUpper();
			string oz4 = ozel4.Text.ToUpper();
			string oz5 = ozel5.Text.ToUpper();
			string alis_tutar = al_tutar.Text;
			if (alis_tutar != "") al_tut = Convert.ToDecimal(alis_tutar);
			else al_tut = -1;
			string al_d_kod = al_dov_kod.Text.ToUpper();
			string al_d_tut = al_dov_tutar.Text.ToUpper();
			string satis_tutar = sat_tutar.Text;
			if (satis_tutar != "") sat_tut = Convert.ToDecimal(satis_tutar);
			else sat_tut = -1;
			string sat_d_kod = sat_dov_kod.Text.ToUpper();
			string sat_d_tut = sat_dov_tutar.Text.ToUpper();
			string brm = birim.Text;

			SqlConnection baglan = new SqlConnection(@"Server = AYHAN-PC\SQLEXPRESS; Database = ETA_MELODI_2019; Trusted_Connection = True;");
			baglan.Open();

			SqlCommand cmd = new SqlCommand();
			cmd.Connection = baglan;
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "sp_stok_kart_guncelle";

			cmd.Parameters.Add("@stk_kod", stk_kod);
			cmd.Parameters.Add("@cins", cins);
			cmd.Parameters.Add("@cins2", cins2);
			cmd.Parameters.Add("@cins3", cins3);
			cmd.Parameters.Add("@birim", brm);
			cmd.Parameters.Add("@oz1", oz1);
			cmd.Parameters.Add("@oz2", oz2);
			cmd.Parameters.Add("@oz3", oz3);
			cmd.Parameters.Add("@oz4", oz4);
			cmd.Parameters.Add("@oz5", oz5);
			cmd.Parameters.Add("@al_tut", al_tut);
			cmd.Parameters.Add("@al_d_kod", al_d_kod);
			cmd.Parameters.Add("@al_d_tut", al_d_tut);
			cmd.Parameters.Add("@sat_tut", sat_tut);
			cmd.Parameters.Add("@sat_d_kod", sat_d_kod);
			cmd.Parameters.Add("@sat_d_tut", sat_d_tut);

			try
			{
				cmd.ExecuteNonQuery();
				Response.Write("<script lang='javascript'>alert('Kayıt Başarı İle Guncellendi')</script>");

			}
			catch (Exception)
			{
				Response.Write("<script lang='javascript'>alert('Kayıt Guncellenemedi')</script>");

			}
			finally
			{

				baglan.Close();


			}
		}
	}
}