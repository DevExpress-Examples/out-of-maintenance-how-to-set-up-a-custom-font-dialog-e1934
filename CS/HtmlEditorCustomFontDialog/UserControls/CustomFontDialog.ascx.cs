using System;

namespace HtmlEditorCustomFontDialog.UserControls {
    public partial class CustomFontDialog : System.Web.UI.UserControl {
        protected void Page_Load(object sender, EventArgs e) {
            pcCustomFontDialog.PopupElementID = HtmlEditorID;
            hf["HtmlEditorID"] = HtmlEditorID;
            hf["PopupID"] = pcCustomFontDialog.ClientID;
        }

        public string HtmlEditorID {
            get { return (string)ViewState["HtmlEditorID"]; }
            set { ViewState["HtmlEditorID"] = value; }
        }
    }
}