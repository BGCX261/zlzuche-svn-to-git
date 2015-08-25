<%@ Page Title="登录" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Login.aspx.cs" Inherits="ZLzuche.Account.Login" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script language="javascript" type="text/javascript">
        function CheckCode() {
            $("#chkCode").attr("src", "../Web/CheckCode.aspx?" + Math.random());
        }
    </script>
    <style type="text/css">
        .loginPanel
        {
            width: 100%;
            border: 1px solid #ccc;
        }
        .loginPanel .caption {
            height: 40px;
            line-height: 40px;
            background-color: #F0F0F0;
            font-size: 14px;
            font-weight: bold;
        }
        
        .loginPanel .title
        {
            color: #333;
            font-weight: bold;
            height: 26px;
            line-height: 26px;
        }
        
        .loginPanel .title, .loginPanel .textbox
        {
            text-align: left;padding-left: 40px;
        }
        .loginPanel .textbox input
        {
            height: 28px;border: 1px solid #ccc;width: 230px;
        }
    </style>
    <script language="javascript" type="text/javascript">
        function CheckForm() {
            var txtUname = $("#<%=this.txtUserName.ClientID %>").val();
            var txtPwd = $("#<%=this.txtPassword.ClientID %>").val();
            if (txtUname.trim() == "") {
                alert("请输入手机号、证件号或者邮箱登陆");
                return false;
            }
            if (txtPwd.trim() == "") {
                alert("请输入密码");
                return false;
            }
            return true;
        }


        function  textboxKeyup(event) {
            var keyCode = event.keyCode?event.keyCode:event.which?event.which:event.charCode;
            if (keyCode == 13) {
                $('#<%=this.Button1.ClientID %>').click();
            }
        }

        $(function () {
            $("#<%=this.txtUserName.ClientID %>,#<%=this.txtPassword.ClientID %>").keyup(textboxKeyup);
        });
    </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div style="padding-top: 10px;" class="center_container">
        <table cellpadding="0" cellspacing="0" border="0" style="width: 976px; height: 460px;"
            class="center">
            <tr>
                <td style="background: url(<%=this.ResolveUrl("~/images/login_pic3.jpg") %>) no-repeat">
                </td>
                <td style="width: 320px; vertical-align: top; padding-top: 40px;">
                    <table cellpadding="0" cellspacing="0" class="loginPanel">
                        <tr>
                            <td class="caption">
                                会员登录
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 20px;">
                            </td>
                        </tr>
                        <tr>
                            <td class="title">
                                手机号\证件号\邮箱：
                            </td>
                        </tr>
                        <tr>
                            <td class="textbox">
                                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 20px;">
                            </td>
                        </tr>
                        <tr>
                            <td class="title">
                                密码：
                            </td>
                        </tr>
                        <tr>
                            <td class="textbox">
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 20px;">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:LinkButton runat="server" ID="Button1" CssClass="btn" OnClientClick="CheckForm();" OnClick="BtnLogin_Click">
                                    <div>
                                        登录
                                    </div>
                                </asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td style="padding: 12px 40px 10px;">
                                <a href="Register.aspx" style="float: right;">免费注册</a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
