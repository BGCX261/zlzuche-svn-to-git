<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSiteMaster.Master" AutoEventWireup="true"
    CodeBehind="AdminIndex.aspx.cs" Inherits="ZLzuche.Admin.AdminIndex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <table cellpadding="0" cellspacing="0" border="0" class="center" style="width: 980px;">
            <tr>
                <td>
                    <fieldset>
                        <legend>订单统计信息</legend>
                        <asp:Button ID="Button1" runat="server" Text="Button" />
                        <asp:Button ID="Button2" runat="server" Text="Button" />
                    </fieldset>
                    <fieldset>
                        <legend>会员统计信息</legend>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <asp:Button ID="Button3" runat="server" Text="Button" />
                    </fieldset>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
