<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="MelodiProgram.Anasayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Anasayfa</title>
<link rel="stylesheet" type="text/css" href="css/menu.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css" />
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css"/>
	<link rel="stylesheet" type="text/css" href="css/main1.css"/>
<!--===============================================================================================-->
	<style type="text/css">
		.auto-style1 {
			width: 345px;
		}
		.auto-style2 {
			width: 402px;
		}
	</style>
</head>
<body>

	<form id="form1" runat="server">

<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
					<div>

						<asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" CssClass="Menu">

							<Items>
								<asp:MenuItem NavigateUrl="#" Text="Cari" Value="cari">
									<asp:MenuItem NavigateUrl="Cari.aspx" Text="Cari Kart Ekle" Value="cari_kart_ekle"></asp:MenuItem>
									<asp:MenuItem NavigateUrl="Eski_Cari.aspx" Text="Eski Cari Kartlar" Value="eski_cari_kart"></asp:MenuItem>
									
								</asp:MenuItem>

								<asp:MenuItem NavigateUrl="#" Text="Stok" Value="stok">
									<asp:MenuItem NavigateUrl="Stok.aspx" Text="Stok Kart Ekle" Value="stok_kart_ekle"></asp:MenuItem>
									<asp:MenuItem NavigateUrl="Eski_Stok.aspx" Text="Eski Stok Kartlar" Value="eski_stok_kart"></asp:MenuItem>
								</asp:MenuItem>

								<asp:MenuItem NavigateUrl="#" Text="Fatura" Value="fatura">
									<asp:MenuItem NavigateUrl="Fatura.aspx" Text="Yeni Fatura" Value="yeni_fatura"></asp:MenuItem>
									<asp:MenuItem NavigateUrl="Eski_Fatura.aspx" Text="Eski Fatura" Value="eski_fatura"></asp:MenuItem>
								</asp:MenuItem>

								<asp:MenuItem NavigateUrl="Guvenli_Cikis.aspx" Text="Güvenli Çıkış" Value="cikis"> </asp:MenuItem>

								

							</Items>

						</asp:Menu>
						
					</div>
				<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />




					
				</div>
			</div>
		</div>
	
	

	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>


	</form>

</body>
</html>
