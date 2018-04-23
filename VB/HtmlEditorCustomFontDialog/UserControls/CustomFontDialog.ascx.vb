Imports Microsoft.VisualBasic
Imports System

Namespace HtmlEditorCustomFontDialog.UserControls
	Partial Public Class CustomFontDialog
		Inherits System.Web.UI.UserControl
		Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
			pcCustomFontDialog.PopupElementID = HtmlEditorID
			hf("HtmlEditorID") = HtmlEditorID
			hf("PopupID") = pcCustomFontDialog.ClientID
		End Sub

		Public Property HtmlEditorID() As String
			Get
				Return CStr(ViewState("HtmlEditorID"))
			End Get
			Set(ByVal value As String)
				ViewState("HtmlEditorID") = value
			End Set
		End Property
	End Class
End Namespace