<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cari_Guncelle.aspx.cs" Inherits="MelodiProgram.Cari_Guncelle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Cari Güncelle</title>

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
	<link rel="stylesheet" type="text/css" href="css/menu.css"/>
<!--===============================================================================================-->
	<style type="text/css">
		.auto-style4 {
			width: 80px;
		}
		.auto-style5 {
			width: 172px;
		}
		.auto-style6 {
			width: 83px;
		}
		.auto-style7 {
			width: 891px;
		}
		.auto-style9 {
			width: 95px;
		}
		.auto-style10 {
			width: 169px;
		}
		.auto-style11 {
			width: 139px;
			height: 26px;
		}
		.auto-style12 {
			height: 26px;
		}
		.auto-style13 {
			width: 139px;
		}
		.auto-style14 {
			height: 26px;
			width: 169px;
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




					<table class="auto-style7" align="center" border="0">

						<tr><td class="auto-style11"><b>Cari Kart Güncelle</b></td><td class="auto-style12"></td><td class="auto-style14"></td><td class="auto-style12"></td><td class="auto-style12"></td><td class="auto-style12"></td>
						
						</tr>

						<tr>
							<td class="auto-style11"></td><td class="auto-style12"></td><td class="auto-style14"></td><td class="auto-style12"></td><td class="auto-style12"></td><td class="auto-style12"></td>
						</tr>

						<tr><td class="auto-style13">&nbsp;</td>
						<td class="auto-style6">Cari Kod:</td>
						<td class="auto-style10">
							<asp:Label ID="Label1" runat="server" Text="Label" BackColor="Red"></asp:Label>
							</td>

						<td class="auto-style6">Özel Kod1:</td>
						<td class="auto-style6">
							<asp:TextBox ID="ozel_kod1" runat="server" Height="27px" Width="150px"></asp:TextBox>
							</td>

						<td class="auto-style9">&nbsp;</td>
						</tr>

						<tr><td class="auto-style13">&nbsp;</td>
						<td class="auto-style6">Unvan:</td>
						<td class="auto-style10">
							<asp:TextBox ID="unvan" runat="server" Height="27px" Width="150px"></asp:TextBox>
							</td>

						

						<td class="auto-style6">Özel Kod2:</td>
						<td class="auto-style6">
							<asp:TextBox ID="ozel_kod2" runat="server" Height="27px" Width="150px"></asp:TextBox>
							</td>
						<td class="auto-style9">&nbsp;</td>
						</tr>
						
						<tr><td class="auto-style13">&nbsp;</td>
						<td class="auto-style6">Unvan2:</td>
						<td class="auto-style10">
							<asp:TextBox ID="unvan2" runat="server" Height="27px" Width="150px"></asp:TextBox>
							</td>

						<td>Özel Kod3:</td>
						<td class="auto-style6">
							<asp:TextBox ID="ozel_kod3" runat="server" Height="27px" Width="150px"></asp:TextBox>
							</td>
						<td class="auto-style9">&nbsp;</td>
						</tr>
						
						<tr><td class="auto-style13">&nbsp;</td>
						<td class="auto-style6">Unvan3:</td>
						<td class="auto-style10">
							<asp:TextBox ID="unvan3" runat="server" Height="27px" Width="150px"></asp:TextBox>
							<br/></td>

						<td>Özel Kod4:</td>
						<td class="auto-style6">
							<asp:TextBox ID="ozel_kod4" runat="server" Height="27px" Width="150px"></asp:TextBox>
							</td>
						<td class="auto-style9">&nbsp;</td>
						</tr>

						<tr><td class="auto-style13">&nbsp;</td>
						<td class="auto-style6">Yetkili:</td>
						<td class="auto-style10">
							<asp:TextBox ID="yetkili" runat="server" Height="27px" Width="150px"></asp:TextBox>
							<br/></td>

						<td>Özel Kod5:</td>
						<td class="auto-style6">
							<asp:TextBox ID="ozel_kod5" runat="server" Height="27px" Width="150px"></asp:TextBox>
							</td>
						<td class="auto-style9">&nbsp;</td>
						</tr>

						<tr><td class="auto-style13">&nbsp;</td>
						<td class="auto-style6">Yetkili2:</td>
						<td class="auto-style10">
							<asp:TextBox ID="yetkili2" runat="server" Height="27px" Width="150px"></asp:TextBox>
							<br/></td>

						<td>V.D. Adı:</td>
						<td class="auto-style6">
							<asp:TextBox ID="vergi_adi" runat="server" Height="27px" Width="150px"></asp:TextBox>
							</td>
						<td class="auto-style9">&nbsp;</td>
						</tr>

						<tr><td class="auto-style13">&nbsp;</td>
						<td class="auto-style6">Yetkili3:</td>
						<td class="auto-style10">
							<asp:TextBox ID="yetkili3" runat="server" Height="27px" Width="150px"></asp:TextBox>
							<br/></td>

						<td>V.D.H No:</td>
						<td class="auto-style6">
							<asp:TextBox ID="vergi_no" runat="server" Height="27px" Width="150px"></asp:TextBox>
							</td>
						<td class="auto-style9">&nbsp;</td>
						</tr>
						

						<tr>
						<td class="auto-style13">&nbsp;</td>
						</tr>

						<tr>
						<td class="auto-style13">&nbsp;</td>
						</tr>

						<tr>
						<td class="auto-style13">&nbsp;</td>
						</tr>

						<tr>
						<td class="auto-style13">&nbsp;</td>
						</tr>

						<tr>
						<td class="auto-style13">&nbsp;</td>
						</tr>

						</table>
						
						<table align="center">

							<tr>
								<td class="auto-style4">Adres1:</td>
								<td class="auto-style5">
									<asp:TextBox ID="adres1" runat="server" Height="27px" Width="130px"></asp:TextBox>
								</td>

								<td class="auto-style4">Adres2:</td>
								<td class="auto-style5">
									<asp:TextBox ID="adres2" runat="server" Height="27px" Width="130px"></asp:TextBox>
								</td>

								<td class="auto-style4">Ülke:</td>
								<td class="auto-style5">
									<asp:TextBox ID="ulke" runat="server" Height="27px" Width="130px"></asp:TextBox>
								</td>

								<td class="auto-style4">İl:</td>
								<td class="auto-style5">
									<asp:TextBox ID="il" runat="server" Height="27px" Width="130px"></asp:TextBox>
								</td>

								<td class="auto-style4">İlçe:</td>
								<td class="auto-style5">
									<asp:TextBox ID="ilce" runat="server" Height="27px" Width="130px"></asp:TextBox>
								</td>

								
							</tr>

							

						

							<tr>
								<td class="auto-style4">Telefon No:</td>
								<td class="auto-style5">
									<asp:TextBox ID="tel_no" runat="server" Height="27px" Width="130px" TextMode="Phone"></asp:TextBox>
								</td>
							</tr>

							<tr>
								<td class="auto-style4">Email:</td>
								<td class="auto-style5">
									<asp:TextBox ID="email" runat="server" Height="27px" Width="130px" TextMode="Email"></asp:TextBox>
								</td>
							</tr>

							<tr>
							<td class="auto-style4">&nbsp;</td>
							</tr>

							<tr>
							<td class="auto-style4">&nbsp;</td>
							</tr>

							<tr>
								<td class="auto-style4"><asp:Button ID="cari_guncel" runat="server" Text="Güncelle" Width="85px" OnClick="cari_guncel_Click" />
								</td>
													
							</tr>
							

						</table>
						

						
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