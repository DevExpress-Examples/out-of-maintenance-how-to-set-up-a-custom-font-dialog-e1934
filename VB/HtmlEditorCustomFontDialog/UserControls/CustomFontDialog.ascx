<%@ Control Language="vb" AutoEventWireup="true" CodeBehind="CustomFontDialog.ascx.vb" Inherits="HtmlEditorCustomFontDialog.UserControls.CustomFontDialog" %>

<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web" TagPrefix="dxhf" %>
<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web" TagPrefix="dxpc" %>
<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web" TagPrefix="dxe" %>

<script id="dxss_" type="text/javascript">
	function __OnOKButtonClick(s, e) {
		var htmlEditorID = __GetHiddenField(s).Get("HtmlEditorID");
		var htmlEditor = __GetControlByID(htmlEditorID);

		htmlEditor.RestoreSelectionForPopup();

		var fontSize = __GetEditor(s, "spnFontSize").GetValue();
		if(fontSize)
			htmlEditor.ExecuteCommand(ASPxClientCommandConsts.FONTSIZE_COMMAND, fontSize, true /* addToHistory */);

		var fontName = __GetEditor(s, "cmbFontName").GetText();
		if(fontName)
			htmlEditor.ExecuteCommand(ASPxClientCommandConsts.FONTNAME_COMMAND, fontName, true);

		var fontColor = __GetEditor(s, "clrFontColor").GetValue();
		if(fontColor)
			htmlEditor.ExecuteCommand(ASPxClientCommandConsts.FONTCOLOR_COMMAND, fontColor, true);

		__HideDialog(s);
	}
	function __OnCancelButtonClick(s, e) {
		__HideDialog(s);
	}

	function __HideDialog(requester) {
		var popupID = __GetHiddenField(requester).Get("PopupID")
		__GetControlByID(popupID).Hide();
	}
	function __GetEditor(requester, editorID) {
		var editorID = __GetIDPrefix(requester) + editorID;
		return __GetControlByID(editorID);
	}
	function __GetHiddenField(requester) {
		var hiddenFieldID = __GetIDPrefix(requester) + "hf";
		return __GetControlByID(hiddenFieldID);
	}
	function __GetIDPrefix(requester) {
		return requester.name.substr(0, requester.name.lastIndexOf('_') + 1);
	}
	function __GetControlByID(controlID) {
		return ASPxClientControl.GetControlCollection().Get(controlID);
	}
</script>

<dxpc:ASPxPopupControl ID="pcCustomFontDialog" runat="server" ClientInstanceName="__customFontDialog"
	PopupHorizontalAlign="Center" PopupVerticalAlign="Middle" HeaderText="Font Settings" PopupAction="None">
	<ContentCollection>
		<dxpc:PopupControlContentControl runat="server">

			<dxhf:ASPxHiddenField ID="hf" runat="server" SyncWithServer="false" />

			<table>
				<tr>
					<td>
						Font&nbsp;Name:
					</td>
					<td>
						<dxe:ASPxComboBox ID="cmbFontName" runat="server" Width="170px">
							<Items>
								<dxe:ListEditItem Text="" />
								<dxe:ListEditItem Text="Times New Roman" />
								<dxe:ListEditItem Text="Tahoma" />
								<dxe:ListEditItem Text="Verdana" />
								<dxe:ListEditItem Text="Arial" />
								<dxe:ListEditItem Text="MS Sans Serif" />
								<dxe:ListEditItem Text="Courier" />
							</Items>
						</dxe:ASPxComboBox>
					</td>
				</tr>
				<tr>
					<td>
						Size:
					</td>
					<td>
						<dxe:ASPxSpinEdit ID="spnFontSize" runat="server" MinValue="1" MaxValue="10" Width="170px" />
					</td>
				</tr>
				<tr>
					<td>
						Color:
					</td>
					<td>
						<dxe:ASPxColorEdit ID="clrFontColor" runat="server" Width="170px" />
					</td>
				</tr>
				<tr>
					<td>
						&nbsp;
					</td>
					<td>
						<table cellpadding="0" cellspacing="0" style="margin-top: 8px;">
							<tr>
								<td>
									<dxe:ASPxButton ID="btnOK" runat="server" Text="OK" Width="83px"
										AutoPostBack="false" UseSubmitBehavior="false" CausesValidation="false">
										<ClientSideEvents Click="__OnOKButtonClick" />
									</dxe:ASPxButton>
								</td>
								<td style="padding-left: 4px;">
									<dxe:ASPxButton ID="btnCancel" runat="server" Text="Cancel" Width="83px"
										AutoPostBack="false" UseSubmitBehavior="false" CausesValidation="false">
										<ClientSideEvents Click="__OnCancelButtonClick" />
									</dxe:ASPxButton>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</dxpc:PopupControlContentControl>
	</ContentCollection>
</dxpc:ASPxPopupControl>