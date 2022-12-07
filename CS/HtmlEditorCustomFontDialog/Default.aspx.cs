using System;
using DevExpress.Web;
using HtmlEditorCustomFontDialog.UserControls;

namespace HtmlEditorCustomFontDialog {
    public partial class _Default : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void OnCustomFontDialogContainerCallback(object sender, CallbackEventArgsBase e) {
            CustomFontDialog dialog = (CustomFontDialog)LoadControl("~/UserControls/CustomFontDialog.ascx");
            dialog.HtmlEditorID = heHtmlEditor1.ClientID;
            ((ASPxCallbackPanel)sender).Controls.Add(dialog);
        }
    }
}