Imports Microsoft.VisualBasic
Imports System
Imports DevExpress.Web.ASPxClasses
Imports DevExpress.Web.ASPxCallbackPanel
Imports HtmlEditorCustomFontDialog.UserControls

Namespace HtmlEditorCustomFontDialog
	Partial Public Class _Default
		Inherits System.Web.UI.Page
		Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

		End Sub

		Protected Sub OnCustomFontDialogContainerCallback(ByVal sender As Object, ByVal e As CallbackEventArgsBase)
			Dim dialog As CustomFontDialog = CType(LoadControl("~/UserControls/CustomFontDialog.ascx"), CustomFontDialog)
			dialog.HtmlEditorID = heHtmlEditor1.ClientID
			CType(sender, ASPxCallbackPanel).Controls.Add(dialog)
		End Sub
	End Class
End Namespace