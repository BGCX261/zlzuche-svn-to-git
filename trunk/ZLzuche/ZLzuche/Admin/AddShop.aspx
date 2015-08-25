<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddShop.aspx.cs" Inherits="ZLzuche.Admin.AddShop" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>新增店铺</title>
    <link href="../Styles/Register.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <table class="myTable">
        <tr>
            <td width="150px;">
                <asp:Label ID="Label1" runat="server" Text="店铺名称"></asp:Label>
            </td>
            <td width="300px;">
                <asp:TextBox runat="server" ID="Name" Width="300px">
                </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="150px;">
                <asp:Label ID="Label4" runat="server" Text="电话"></asp:Label>
            </td>
            <td width="300px;">
                <asp:TextBox runat="server" ID="Tel" Width="300px" Rows="3">
                </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="150px;">
                <asp:Label ID="Label5" runat="server" Text="地址"></asp:Label>
            </td>
            <td width="300px;">
                <asp:TextBox runat="server" ID="Address" TextMode="MultiLine" Width="300px" Rows="3">
                </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="150px;">
                <asp:Label ID="Label6" runat="server" Text="描述"></asp:Label>
            </td>
            <td width="300px;">
                <asp:TextBox runat="server" ID="Describe" TextMode="MultiLine" Width="300px" Rows="3">
                </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="150px;">
                <asp:Label ID="Label2" runat="server" Text="描述"></asp:Label>
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
