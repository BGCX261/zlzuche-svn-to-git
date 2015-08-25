<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewApply.aspx.cs" Inherits="ZLzuche.NewApply" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>企业融资租赁申请</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="myTable">
            <tr>
                <td width="150px;">
                    <asp:Label ID="Label1" runat="server" Text="企业名称"></asp:Label>
                </td>
                <td width="300px;">
                    <asp:TextBox runat="server" ID="EnterpriseName" Width="300px">
                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td width="150px;">
                    <asp:Label ID="Label2" runat="server" Text="联系人"></asp:Label>
                </td>
                <td width="300px;">
                    <asp:TextBox runat="server" ID="Linkman" Width="300px">
                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td width="150px;">
                    <asp:Label ID="Label4" runat="server" Text="联系电话"></asp:Label>
                </td>
                <td width="300px;">
                    <asp:TextBox runat="server" ID="LinkTel" Width="300px">
                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td width="150px;">
                    <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                </td>
                <td width="300px;">
                    <asp:TextBox runat="server" ID="Email" Width="300px">
                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td width="150px;">
                    <asp:Label ID="Label3" runat="server" Text="需求信息"></asp:Label>
                </td>
                <td width="300px;">
                    <asp:TextBox runat="server" ID="NeedInfo" TextMode="MultiLine" Width="300px" Rows="6">
                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td width="150px;">
                </td>
                <td width="300px;">
                    <asp:Button ID="btnNew" runat="server" Text="保存" Width="100px" OnClick="btnNew_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
