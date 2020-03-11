using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MelodiProgram
{
	public partial class Default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			Session.Add("oturum_test", 0);
		}
		
		protected void giris_yap_Click(object sender, EventArgs e)
		{
			string mail = email.Text;
			string sifre = pass.Text;
			

			if (mail=="admin@admin" && sifre=="deneme")
			{
				Session["oturum_test"] = 1;
				Response.Redirect("Anasayfa.aspx");
			
			}
			else if(mail == "" || sifre == "")
			{
				Response.Write("<script lang='javascript'>alert('Boş Bırakılamaz');</script>");
				
			}
			else
			{
				Response.Write("<script lang='javascript'>alert('Giriş Bilgileri Hatalı');</script>");
			
			}

			
			 
		}
	}
}