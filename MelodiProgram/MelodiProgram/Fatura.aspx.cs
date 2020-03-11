using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Services;



namespace MelodiProgram
{
	public partial class Fatura : System.Web.UI.Page
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

			DateTime tarih = DateTime.Now.Date;

			Label1.Text = tarih.ToString();

			


		}


		/*
		[WebMethod]
		public static List<string> GetEmp(string empdetails)
		{
			List<string> emp = new List<string>();
			string mainconn = ConfigurationManager.ConnectionStrings["ETA_MELODI_2019ConnectionString"].ConnectionString;
			SqlConnection sqlconn = new SqlConnection(mainconn);
			string sqlquery = string.Format("select CARKOD from [dbo].[CARKART] where CARKOD like '%{0}%'", empdetails);
			sqlconn.Open();
			SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
			SqlDataReader sdr = sqlcomm.ExecuteReader();
			while(sdr.Read())
			{
				emp.Add(sdr.GetString(0));
			}
			sqlconn.Close();

			return emp;

			
		}
		*/

		[System.Web.Script.Services.ScriptMethod()]
		[System.Web.Services.WebMethod]
		public static List<string> GetCompletionList(string prefixText, int count)
		{
			using (SqlConnection con = new SqlConnection())
			{
				con.ConnectionString = ConfigurationManager.ConnectionStrings["ETA_MELODI_2019ConnectionString"].ConnectionString;

				using (SqlCommand com = new SqlCommand())
				{
					com.CommandText = "select CARKOD from CARKART where " + "CARKOD like @Search + '%'";

					com.Parameters.AddWithValue("@Search", prefixText);
					com.Connection = con;
					con.Open();
					List<string> countryNames = new List<string>();
					using (SqlDataReader sdr = com.ExecuteReader())
					{
						while (sdr.Read())
						{
							countryNames.Add(sdr["CARKOD"].ToString());
						}
					}
					con.Close();
					return countryNames;


				}

			}

		}

		
	}
}