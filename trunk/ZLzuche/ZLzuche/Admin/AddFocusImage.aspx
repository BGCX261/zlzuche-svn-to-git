<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="AddFocusImage.aspx.cs"
    Inherits="ZLzuche.Admin.AddFocusImage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>新增焦点图</title>
    <link href="../Styles/Register.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src='<%=this.ResolveUrl("~/Scripts/jquery.min.js") %>'></script>
    <script type="text/javascript" language="javascript">
        function CheckForm() {
            var shopId = $("#foucsimage").val();
            if (shopId.trim() == "") {
                alert("焦点图不能为空");
                return false;
            }
            var Describe = $("#Describe").val();
            if (Describe.trim() == "") {
                alert("描述不能为空");
                return false;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <table class="myTable">
        <tr>
            <td width="150px;">
                <asp:Label ID="Label1" runat="server" Text="焦点图(图片尺寸:621*268)"></asp:Label>
            </td>
            <td width="300px;">
                <asp:FileUpload ID="foucsimage" runat="server" Width="300px" />
            </td>
        </tr>
        <tr>
            <td width="150px;">
                <asp:Label ID="Label2" runat="server" Text="描述"></asp:Label>
            </td>
            <td width="300px;">
                <asp:TextBox runat="server" ID="Describe" Width="300px">
                </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="150px;">
                <asp:Label ID="Label3" runat="server" Text="链接地址"></asp:Label>
            </td>
            <td width="300px;">
                <asp:TextBox runat="server" ID="LinkUrl" Width="300px">
                </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="150px;">
                <asp:Label ID="Label4" runat="server" Text="备注"></asp:Label>
            </td>
            <td width="300px;">
                <asp:TextBox runat="server" ID="Remark" Width="300px" TextMode="MultiLine" Rows="5">
                </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="150px;">
            </td>
            <td width="300px;">
                <asp:Button ID="btnNew" runat="server" Text="保存" Width="100px" OnClientClick="return CheckForm();"
                    OnClick="btnNew_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
