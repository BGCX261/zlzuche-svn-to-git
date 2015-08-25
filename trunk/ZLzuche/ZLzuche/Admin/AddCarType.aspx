<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCarType.aspx.cs" Inherits="ZLzuche.Admin.AddCarType" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>新增汽车品牌</title>
    <link href="../Styles/Register.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <table class="myTable">
        <tr>
            <td width="150px;">
                <asp:Label runat="server" Text="汽车品牌名称"></asp:Label>
            </td>
            <td width="300px;">
                <asp:TextBox runat="server" ID="CarTypeName" Width="300px">
                </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="150px;">
                <asp:Label runat="server" Text="描述"></asp:Label>
            </td>
            <td width="300px;">
                <asp:TextBox runat="server" ID="Describe" TextMode="MultiLine" Width="300px" Rows="3">
                </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="150px;">
                <asp:Label ID="Label1" runat="server" Text="备注"></asp:Label>
            </td>
            <td width="300px;">
                <asp:TextBox runat="server" ID="Remark" TextMode="MultiLine" Width="300px" Rows="3">
                </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="150px;">
            </td>
            <td width="300px;">
                <asp:LinkButton runat="server" ID="btnNew" CssClass="btn" OnClick="btnNew_Click">
                    <div>
                        保存
                    </div>
                </asp:LinkButton>

            </td>
        </tr>
    </table>
    </form>
</body>
</html>
