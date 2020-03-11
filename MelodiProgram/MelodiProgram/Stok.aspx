<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stok.aspx.cs" Inherits="MelodiProgram.Stok" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Yeni Stok</title>

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
		.auto-style15 {
			width: 190px;
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




					<table class="auto-style7" align="center">

						<tr><td class="auto-style11"><b>Stok Kart Ekle</b></td><td class="auto-style12"></td><td class="auto-style14"></td><td class="auto-style12"></td><td class="auto-style12"></td><td class="auto-style12"></td>
						
						</tr>

						<tr>
							<td class="auto-style11"></td><td class="auto-style12"></td><td class="auto-style14"></td><td class="auto-style12"></td><td class="auto-style12"></td><td class="auto-style12"></td>
						</tr>

						<tr><td class="auto-style13">&nbsp;</td>
						<td class="auto-style6">Stok Kod:</td>
						<td class="auto-style10">
							<asp:TextBox ID="stok_kod" runat="server" Height="27px" Width="150px"></asp:TextBox>
							</td>

						<td class="auto-style6">Özel Kod1:</td>
						<td class="auto-style6">
							<asp:TextBox ID="ozel1" runat="server" Height="27px" Width="150px"></asp:TextBox>
							</td>

						<td class="auto-style9">&nbsp;</td>
						</tr>

						<tr><td class="auto-style13">&nbsp;</td>
						<td class="auto-style6">Cinsi:</td>
						<td class="auto-style10">
							<asp:TextBox ID="cinsi" runat="server" Height="27px" Width="150px"></asp:TextBox>
							</td>

						

						<td class="auto-style6">Özel Kod2:</td>
						<td class="auto-style6">
							<asp:TextBox ID="ozel2" runat="server" Height="27px" Width="150px"></asp:TextBox>
							</td>
						<td class="auto-style9">&nbsp;</td>
						</tr>
						
						<tr><td class="auto-style13">&nbsp;</td>
						<td class="auto-style6">Cinsi2:</td>
						<td class="auto-style10">
							<asp:TextBox ID="cinsi2" runat="server" Height="27px" Width="150px"></asp:TextBox>
							</td>

						<td>Özel Kod3:</td>
						<td class="auto-style6">
							<asp:TextBox ID="ozel3" runat="server" Height="27px" Width="150px"></asp:TextBox>
							</td>
						<td class="auto-style9">&nbsp;</td>
						</tr>
						
						<tr><td class="auto-style13">&nbsp;</td>
						<td class="auto-style6">Cinsi3:</td>
						<td class="auto-style10">
							<asp:TextBox ID="cinsi3" runat="server" Height="27px" Width="150px"></asp:TextBox>
							<br/></td>

						<td>Özel Kod4:</td>
						<td class="auto-style6">
							<asp:TextBox ID="ozel4" runat="server" Height="27px" Width="150px"></asp:TextBox>
							</td>
						<td class="auto-style9">&nbsp;</td>
						</tr>

						<tr><td class="auto-style13">&nbsp;</td>
						<td class="auto-style6">Cinsi4:</td>
						<td class="auto-style10">
							<asp:TextBox ID="cinsi4" runat="server" Height="27px" Width="150px"></asp:TextBox>
							<br/></td>

						<td>Özel Kod5:</td>
						<td class="auto-style6">
							<asp:TextBox ID="ozel5" runat="server" Height="27px" Width="150px"></asp:TextBox>
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
						
						<table border="0" align="center">
							
							<tr>
								
								<td class="auto-style4"><center>Fiyat No</center></td>
								<td class="auto-style4"><center>Fiyat Adı</center></td>
								

								<td class="auto-style4"><center>Açıklama</center></td>
								<td class="auto-style4"><center>Tip</center></td>

								<td class="auto-style4"><center>Tutarı</center></td>
								<td class="auto-style4"><center>Döviz Kodu</center></td>

								<td class="auto-style15"><center>Döviz Tutarı</center></td>
								
								
							</tr>

							
							<tr>
								<td colspan="7">&nbsp;</td>
							</tr>
						

							<tr>
								<td class="auto-style4"><center>1</center></td>
								<td class="auto-style4"><center>Alış</center></td>
								<td class="auto-style4"><center>Alış Fiyatı</center></td>
								<td class="auto-style4"><center>Alış/Gelir</center></td>

								<td class="auto-style5" align="center">
									<asp:TextBox ID="al_tutar" runat="server" Height="27px" Width="130px"></asp:TextBox>
								</td>

								<td class="auto-style5" align="center">
									<asp:TextBox ID="al_dov_kod" runat="server" Height="27px" Width="130px"></asp:TextBox>
								</td>

								<td class="auto-style15" align="center">
									<asp:TextBox ID="al_dov_tutar" runat="server" Height="27px" Width="130px"></asp:TextBox>
								</td>
							</tr>

							<tr>
								<td class="auto-style4"><center>2</center></td>
								<td class="auto-style4"><center>Satış</center></td>
								<td class="auto-style4"><center>Satış Fiyatı</center></td>
								<td class="auto-style4"><center>Satış/Gider</center></td>

								<td class="auto-style5" align="center">
									<asp:TextBox ID="sat_tutar" runat="server" Height="27px" Width="130px"></asp:TextBox>
								</td>

								<td class="auto-style5" align="center">
									<asp:TextBox ID="sat_dov_kod" runat="server" Height="27px" Width="130px"></asp:TextBox>
								</td>

								<td class="auto-style15" align="center">
									<asp:TextBox ID="sat_dov_tutar" runat="server" Height="27px" Width="130px"></asp:TextBox>
								</td>
							</tr>

							<tr>
								<td colspan="7">&nbsp;</td>
							</tr>

							<tr>
								<td colspan="7">&nbsp;</td>
							</tr>

							<tr>
								<td>
									Birim:
								</td>
								<td>

									<asp:DropDownList ID="birim" runat="server" Width="79px" DataSourceID="SqlDataSource1" DataTextField="STKBIRIMAD" DataValueField="STKBIRIMAD">
									</asp:DropDownList>

									<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ETA_MELODI_2019ConnectionString %>" SelectCommand="SELECT [STKBIRIMAD] FROM [STKBIRIM]"></asp:SqlDataSource>

								</td>
							</tr>

							<tr>
								<td colspan="7">&nbsp;</td>
							</tr>

							<tr>
								<td colspan="7" class="auto-style12"></td>
							</tr>

							<tr>
								<td>
									<asp:Button ID="Button1" runat="server" Text="Kaydet" Width="78px" OnClick="Button1_Click" />
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
