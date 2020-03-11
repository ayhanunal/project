<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Eski_Stok.aspx.cs" Inherits="MelodiProgram.Eski_Stok" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Eski Stok</title>

	<script lang="javascript">
		function UserDeleteConfirmation() {
			return confirm("Kayıt Silinecektir. Onaylıyormusunuz?")
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

					<div>
						<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ETA_MELODI_2019ConnectionString %>" 
							SelectCommand="SELECT STKKOD, STKCINSI, STKBIRIM, STKBAKIYE, TIP FROM eski_stok_kart"></asp:SqlDataSource>
						<br />
						<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="STKKOD" DataSourceID="SqlDataSource1" HorizontalAlign="Left" Width="931px" AllowPaging="True">
							<Columns>
								<asp:CommandField ShowSelectButton="True" />
								<asp:BoundField DataField="STKKOD" HeaderText="STKKOD" ReadOnly="True" SortExpression="STKKOD" />
								<asp:BoundField DataField="STKCINSI" HeaderText="STKCINSI" SortExpression="STKCINSI" />
								<asp:BoundField DataField="STKBIRIM" HeaderText="STKBIRIM" SortExpression="STKBIRIM" />
								<asp:BoundField DataField="STKBAKIYE" HeaderText="STKBAKIYE" SortExpression="STKBAKIYE" />
								<asp:BoundField DataField="TIP" HeaderText="TIP" ReadOnly="True" SortExpression="TIP" />
							</Columns>
							<FooterStyle BackColor="White" ForeColor="#000066" />
							<HeaderStyle BackColor="#7795BD" Font-Bold="True" ForeColor="White" />
							<PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
							<RowStyle ForeColor="#000066" />
							<SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
							<SortedAscendingCellStyle BackColor="#F1F1F1" />
							<SortedAscendingHeaderStyle BackColor="#007DBB" />
							<SortedDescendingCellStyle BackColor="#CAC9C9" />
							<SortedDescendingHeaderStyle BackColor="#00547E" />
						</asp:GridView>
					</div>

					<div>
						<br />
						<br />
						<asp:Button ID="sec_kayit_sil" OnClientClick=" if (!UserDeleteConfirmation()) return false; " runat="server" OnClick="sec_kayit_sil_Click" Text="Seçili Kaydı Sil" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Seçili Kaydı Düzenle" Width="149px" />

					</div>

						
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
