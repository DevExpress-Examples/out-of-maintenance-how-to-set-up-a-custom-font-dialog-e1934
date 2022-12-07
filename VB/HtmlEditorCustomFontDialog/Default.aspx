<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="HtmlEditorCustomFontDialog._Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
		Namespace="DevExpress.Web" TagPrefix="dxlp" %>
<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
		Namespace="DevExpress.Web" TagPrefix="dxcp" %>
<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
		Namespace="DevExpress.Web" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxSpellChecker.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
		Namespace="DevExpress.Web.ASPxSpellChecker" TagPrefix="dxwsc" %>
<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
		Namespace="DevExpress.Web.ASPxHtmlEditor" TagPrefix="dxhe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
	<div>

		<script type="text/javascript">
			function OnCustomCommand(s, e) {
				if(e.commandName == "OpenCustomFontDialog")
					OpenCustomFontDialog();
			}
			function OnBeginCallback(s, e) {
				if(window.__customFontDialog)
					window.__customFontDialog.Hide();
			}

			function OpenCustomFontDialog() {
				if(!window.__customFontDialogReceived) {
					cpCustomFontDialogContainer.PerformCallback();
					window.__customFontDialogReceived = true;
				} else
					OpenCustomFontDialogCore();
			}
			function OnCustomFontDialogContainerEndCallback(s, e) {
				OpenCustomFontDialogCore();
			}
			function OpenCustomFontDialogCore() {
				htmlEditor.SaveSelectionForPopup();
				__customFontDialog.Show();
			}
		</script>

		<dxhe:ASPxHtmlEditor ID="heHtmlEditor1" runat="server" ClientInstanceName="htmlEditor">
			<ClientSideEvents CustomCommand="OnCustomCommand" BeginCallback="OnBeginCallback" />
			<Toolbars>
				<dxhe:HtmlEditorToolbar>
					<Items>
						<dxhe:ToolbarBoldButton />
						<dxhe:ToolbarItalicButton />
						<dxhe:CustomToolbarButton CommandName="OpenCustomFontDialog" ToolTip="Change Font" ViewStyle="Image">
							<Image Url="~/i/OpenCustomFontDialog.png" Width="16px" Height="16px" />
						</dxhe:CustomToolbarButton>
						<dxhe:ToolbarJustifyLeftButton BeginGroup="True" />
						<dxhe:ToolbarJustifyCenterButton />
						<dxhe:ToolbarJustifyRightButton />
						<dxhe:ToolbarJustifyFullButton />
					</Items>
				</dxhe:HtmlEditorToolbar>
			</Toolbars>
		</dxhe:ASPxHtmlEditor>

		<dxcp:ASPxCallbackPanel ID="cpCustomFontDialogContainer" runat="server"
			ClientInstanceName="cpCustomFontDialogContainer" OnCallback="OnCustomFontDialogContainerCallback" ShowLoadingPanel="false" Style="z-index: 49999;">
			<ClientSideEvents EndCallback="OnCustomFontDialogContainerEndCallback" />
		</dxcp:ASPxCallbackPanel>

	</div>
	</form>
</body>
</html>