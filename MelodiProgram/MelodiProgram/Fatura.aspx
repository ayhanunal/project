<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fatura.aspx.cs" Inherits="MelodiProgram.Fatura" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Yeni Fatura</title>

	<script src="https://ajax.aspnetcdn.com/ajax/jquery/jquery-1.8.0.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.22/jquery-ui.js"></script>
	<link rel="Stylesheet" href="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.10/themes/redmond/jquery-ui.css" />
	<script type="text/javascript">  
		$(document).ready(function () {
			SearchText();
		});
		function SearchText() {
			$("#txb_car_kod").autocomplete({
				source: function (request, response) {
					$.ajax({
						type: "POST",
						contentType: "application/json; charset=utf-8",
						url: "Fatura.aspx/GetEmployeeName",
						data: "{'empName':'" + document.getElementById('txb_car_kod').value + "'}",
						dataType: "json",
						success: function (data) {
							response(data.d);
						},
						error: function (result) {
							alert("No Match");
						}
					});
				}
			});
		}
    </script>  

	

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
		.auto-style1 {
			height: 26px;
		}
		.auto-style4 {
			width: 88px;
		}
		.auto-style5 {
			height: 26px;
			width: 88px;
		}
		.auto-style6 {
			width: 100px;
		}
		.auto-style7 {
			height: 26px;
			width: 100px;
		}
	</style>
	</head>
<body>

	<form id="form1" runat="server">
	<asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods = "true">  
  
    </asp:ScriptManager>

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


					<table align="center" class="auto-style18">

						<tr>
							<td class="auto-style22"><b>Yeni Fatura</b></td><td class="auto-style6">&nbsp;</td><td class="auto-style21">&nbsp;</td><td class="auto-style6">&nbsp;</td><td class="auto-style24">&nbsp;</td><td class="auto-style4">&nbsp;</td>
						</tr>

						<tr>
							<td class="auto-style1"></td><td class="auto-style7"></td><td class="auto-style1"></td><td class="auto-style7"></td><td class="auto-style1"></td><td class="auto-style5"></td>
						</tr>

						<tr>
							<td class="auto-style22">&nbsp;</td>
							<td class="auto-style6">
								Fatura Tarihi:
							</td>
							<td class="auto-style21">

								<asp:Label ID="Label1" runat="server" Text="Label" Width="188px"></asp:Label>

							</td>
							<td class="auto-style6">
								Cari Kod:
							</td>
							<td class="auto-style24">

								<asp:TextBox ID="txb_car_kod" runat="server" Width="188px"></asp:TextBox>
								<cc1:AutoCompleteExtender ServiceMethod="GetCompletionList" ID="txb_car_kod_AutoCompleteExtender" runat="server" CompletionInterval="10" CompletionSetCount="1" EnableCaching="False" MinimumPrefixLength="1" TargetControlID="txb_car_kod">
								</cc1:AutoCompleteExtender>
								<br />

							</td>
							<td class="auto-style4">&nbsp;</td>
						</tr>

						<tr>
							<td class="auto-style22">&nbsp;</td>
							<td class="auto-style6">
								Fatura No:
							</td>
							<td class="auto-style21">

								<asp:TextBox ID="TextBox3" runat="server" Width="188px"></asp:TextBox>

							</td>
							<td class="auto-style6">
								Vade Tarihi:
							</td>
							<td class="auto-style24">

								<asp:TextBox ID="TextBox9" runat="server" TextMode="Date" Width="188px"></asp:TextBox>

							</td>
							<td class="auto-style4">&nbsp;</td>
						</tr>

						<tr>
							<td class="auto-style25"></td>
							<td class="auto-style6">
								B. İşlem No:
							</td>
							<td class="auto-style27">

								<asp:TextBox ID="TextBox5" runat="server" Width="188px"></asp:TextBox>

							</td>
							<td class="auto-style6">
								İrsaliye Tarihi:
							</td>
							<td class="auto-style28">

								<asp:TextBox ID="TextBox6" runat="server" TextMode="Date" Width="188px"></asp:TextBox>

							</td>
							<td class="auto-style4"></td>
						</tr>

						<tr>
							<td class="auto-style22">&nbsp;</td>
							<td class="auto-style6">
								Evrak No:
							</td>
							<td class="auto-style21">

								<asp:TextBox ID="TextBox7" runat="server" Width="188px"></asp:TextBox>

							</td>
							<td class="auto-style6">
								İrsaliye No:
							</td>
							<td class="auto-style24">

								<asp:TextBox ID="TextBox8" runat="server" Width="188px"></asp:TextBox>

							</td>
							<td class="auto-style4">&nbsp;</td>
						</tr>

						<tr>
							<td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td>
						</tr>

						<tr>
							<td class="auto-style4">&nbsp;</td><td class="auto-style4">Fatura Tipi:</td><td class="auto-style4">
							<asp:DropDownList ID="DropDownList1" runat="server" Width="188px">
								<asp:ListItem>Alım</asp:ListItem>
							</asp:DropDownList>
							</td><td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td>
						</tr>

						<tr>
							<td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td>
						</tr>
						<tr>
							<td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td>
						</tr>
						<tr>
							<td class="auto-style4">Stok Kodu:</td><td class="auto-style4">
							<asp:TextBox ID="TextBox10" runat="server" Width="100px"></asp:TextBox>
							</td><td class="auto-style4">Fiyat:</td><td class="auto-style4">
							<asp:TextBox ID="TextBox11" runat="server" Width="100px"></asp:TextBox>
							</td><td class="auto-style4">Açıklama :</td><td class="auto-style4">
							<asp:TextBox ID="TextBox12" runat="server" Width="100px"></asp:TextBox>
							</td>
						</tr>
						<tr>
							<td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td>
						</tr>
						<tr>
							<td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td>
						</tr>
						<tr>
							<td class="auto-style4">
								<asp:Button ID="Button1" runat="server" Text="Kaydet" />
							</td><td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td><td class="auto-style4">&nbsp;</td>
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
