using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace MelodiProgram
{
	public partial class Cari : System.Web.UI.Page
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

		protected void cari_kaydet_Click(object sender, EventArgs e)
		{
			string car_kod = cari_kod.Text.ToUpper();
			string unv = unvan.Text.ToUpper();
			string unv2 = unvan2.Text.ToUpper();
			string unv3 = unvan3.Text.ToUpper();
			string yet = yetkili.Text.ToUpper();
			string yet2 = yetkili2.Text.ToUpper();
			string yet3 = yetkili3.Text.ToUpper();
			string ozel1 = ozel_kod1.Text.ToUpper();
			string ozel2 = ozel_kod2.Text.ToUpper();
			string ozel3 = ozel_kod3.Text.ToUpper();
			string ozel4 = ozel_kod4.Text.ToUpper();
			string ozel5 = ozel_kod5.Text.ToUpper();
			string verad = vergi_adi.Text.ToUpper();
			string verno = vergi_no.Text.ToUpper();
			string adr1 = adres1.Text.ToUpper();
			string adr2 = adres2.Text.ToUpper();
			string ulk = ulke.Text.ToUpper();
			string sehir = il.Text.ToUpper();
			string ilc = ilce.Text.ToUpper();
			string tel = tel_no.Text.ToUpper();
			string mail = email.Text.ToUpper();


			/*
			string BaglantiAdresi = "server = AYHAN-PC\\SQLEXPRESS; Initial Catalog = ETA_MELODI_2019; Integrated Security = SSPI";
			SqlConnection con = new SqlConnection(BaglantiAdresi);
			SqlCommand cmd = new SqlCommand();
			cmd.Connection = con;
			cmd.CommandText = "SELECT * FROM CARKART WHERE CARKOD="+car_kod+"";
			con.Open();
			int result = cmd.ExecuteNonQuery();
			con.Close();
			*/

			SqlConnection baglan = new SqlConnection(@"Server = AYHAN-PC\SQLEXPRESS; Database = ETA_MELODI_2019; Trusted_Connection = True;");
			baglan.Open();

			SqlCommand cmd = new SqlCommand();
			cmd.Connection = baglan;
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "sp_cari_kart_ekle";
			cmd.Parameters.Add("@car_kod", car_kod);
			cmd.Parameters.Add("@unvan", unv);
			cmd.Parameters.Add("@unvan2", unv2);
			cmd.Parameters.Add("@unvan3", unv3);
			cmd.Parameters.Add("@yetki", yet);
			cmd.Parameters.Add("@yetki2", yet2);
			cmd.Parameters.Add("@yetki3", yet3);
			cmd.Parameters.Add("@ozel1", ozel1);
			cmd.Parameters.Add("@ozel2", ozel2);
			cmd.Parameters.Add("@ozel3", ozel3);
			cmd.Parameters.Add("@ozel4", ozel4);
			cmd.Parameters.Add("@ozel5", ozel5);
			cmd.Parameters.Add("@verad", verad);
			cmd.Parameters.Add("@verno", verno);
			cmd.Parameters.Add("@adr1", adr1);
			cmd.Parameters.Add("@adr2", adr2);
			cmd.Parameters.Add("@ulke", ulk);
			cmd.Parameters.Add("@sehir", sehir);
			cmd.Parameters.Add("@ilce", ilc);
			cmd.Parameters.Add("@tel", tel);
			cmd.Parameters.Add("@mail", mail);

			try
			{
				cmd.ExecuteNonQuery();
				Response.Write("<script lang='javascript'>alert('Kayıt Başarı İle Eklendi')</script>");

			}
			catch(Exception)
			{
				Response.Write("<script lang='javascript'>alert('Kayıt Eklenemedi')</script>");

			}
			finally
			{
				
				baglan.Close();
				

			}






















		}
	}
}