<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="AddNew.aspx.cs"
    Inherits="ZLzuche.Admin.AddNew" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>添加新闻</title>
    <script charset="utf-8" type="text/javascript" src="<%=this.ResolveUrl("~/Scripts/jquery.min.js") %>"></script>
    <script charset="utf-8" type="text/javascript" src="<%=this.ResolveUrl("~/kindeditor-v4.0.6/kindeditor.js") %>"></script>
    <script charset="utf-8" type="text/javascript" src="<%=this.ResolveUrl("~/kindeditor-v4.0.6/lang/zh_CN.js") %>"></script>
    <script type="text/javascript" language="javascript">
        var editor;
        KindEditor.ready(function (K) {
            editor = K.create('#editor_id');
            K('input[name=getHtml]').click(function (e) {
                alert(editor.html());
            });
            K('input[name=isEmpty]').click(function (e) {
                alert(editor.isEmpty());
            });
            K('input[name=getText]').click(function (e) {
                alert(editor.text());
            });
            K('input[name=selectedHtml]').click(function (e) {
                alert(editor.selectedHtml());
            });
            K('input[name=setHtml]').click(function (e) {
                editor.html('<h3>Hello KindEditor</h3>');
            });
            K('input[name=setText]').click(function (e) {
                editor.text('<h3>Hello KindEditor</h3>');
            });
            K('input[name=insertHtml]').click(function (e) {
                editor.insertHtml('<strong>插入HTML</strong>');
            });
            K('input[name=appendHtml]').click(function (e) {
                editor.appendHtml('<strong>添加HTML</strong>');
            });
            K('input[name=clear]').click(function (e) {
                editor.html('');
            });

        });

        function AddClient(){
            var noticeContent = editor.html();
            var encodeContent = encodeURIComponent(noticeContent);
            $("#hidcontent").val(encodeContent);
        };
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <table class="myTable">
        <tr>
            <td width="150px;">
                <asp:Label ID="Label1" runat="server" Text="新闻类型"></asp:Label>
            </td>
            <td width="300px;">
                <asp:DropDownList ID="NewType" runat="server" Width="150px">
                    <asp:ListItem Value="新闻中心" Selected="True">新闻中心</asp:ListItem>
                    <asp:ListItem Value="特惠活动">特惠活动</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td width="150px;">
                <asp:Label ID="Label2" runat="server" Text="标题"></asp:Label>
            </td>
            <td width="300px;">
                <asp:TextBox runat="server" ID="Subject" Width="300px" Rows="3">
                </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="150px;">
                <asp:Label ID="Label3" runat="server" Text="内容"></asp:Label>
            </td>
            <td width="300px;">
                <textarea id="editor_id" name="content" style="width: 700px; height: 300px;">
                </textarea>
            </td>
        </tr>
        <tr>
            <td width="150px;">
            </td>
            <td width="300px;">
                <asp:LinkButton runat="server" ID="btnNew" CssClass="btn" OnClientClick="AddClient();" OnClick="btnNew_Click">
                    <div>
                        保存
                    </div>
                </asp:LinkButton>
            </td>
        </tr>
    </table>
    <asp:HiddenField ID="hidcontent" runat="server" />
    </form>
</body>
</html>
