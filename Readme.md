<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/HtmlEditorCustomFontDialog/Default.aspx) (VB: [Default.aspx](./VB/HtmlEditorCustomFontDialog/Default.aspx))
* [Default.aspx.cs](./CS/HtmlEditorCustomFontDialog/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/HtmlEditorCustomFontDialog/Default.aspx.vb))
* [CustomFontDialog.ascx](./CS/HtmlEditorCustomFontDialog/UserControls/CustomFontDialog.ascx) (VB: [CustomFontDialog.ascx](./VB/HtmlEditorCustomFontDialog/UserControls/CustomFontDialog.ascx))
* [CustomFontDialog.ascx.cs](./CS/HtmlEditorCustomFontDialog/UserControls/CustomFontDialog.ascx.cs) (VB: [CustomFontDialog.ascx.vb](./VB/HtmlEditorCustomFontDialog/UserControls/CustomFontDialog.ascx.vb))
<!-- default file list end -->
# How to set up a custom font dialog


<p>This sample is based upon the ideas from sample <a href="https://www.devexpress.com/Support/Center/p/E360">Implementing custom commands and dialogs</a>.  It illustrates how to replace the default <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxHtmlEditorToolbarParagraphFormattingEditMembersTopicAll">ToolbarParagraphFormattingEdit</a>, <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxHtmlEditorToolbarFontNameEditMembersTopicAll">ToolbarFontNameEdit</a> and <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxHtmlEditorToolbarFontSizeEditMembersTopicAll">ToolbarFontSizeEdit</a> buttons of your ASPxHtmlEditor by a single nice-looking dialog.</p>


<h3>Description</h3>

<p>There is an ASPxHtmlEditor on the form. We&#39;ve set up a <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxHtmlEditorCustomToolbarButtonMembersTopicAll">CustomToolbarButton</a> on its toolbar, and handle it via the ASPxHtmlEditor&#39;s <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxHtmlEditorScriptsASPxClientHtmlEditor_CustomCommandtopic">CustomCommand</a> client-side event.</p><p>The font dialog is designed as a web user control.  We load it on a callback via an <a href="http://documentation.devexpress.com/#AspNet/clsDevExpressWebASPxCallbackPanelASPxCallbackPaneltopic">ASPxCallbackPanel</a>.</p>

<br/>


