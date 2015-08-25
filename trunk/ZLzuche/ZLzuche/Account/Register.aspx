<%@ Page Title="注册" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Register.aspx.cs" Inherits="ZLzuche.Account.Register" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link href="../Styles/Register.css" rel="stylesheet" type="text/css" />
    <script language="javascript" type="text/javascript">
        function CheckCode() {
            $("#chkCode").attr("src", "../Web/CheckCode.aspx?" + Math.random());
        }
    </script>
    <style type="text/css">
        .regPanel
        {
            width: 100%;
            border: 1px solid #ccc;
        }
        .regPanel .caption {
            height: 40px;
            line-height: 40px;
            background-color: #F0F0F0;
            font-size: 14px;
            font-weight: bold;
        }
        .register {
            height: 36px;
            line-height: 36px;
            
        }
        .register .title {
            font-size: 12px;
        }
        .register input {
            height: 26px;
            line-height: 26px;
            border: 1px solid #ccc;
        }
    </style>
    <script language="javascript" type="text/javascript">
        function CheckForm() {
            var phone = $("#phone").val();
            if (phone.trim() == "") {
                alert("请输入手机号码");
                return false;
            }
            var email = $("#email").val();
            if (email.trim() == "") {
                alert("请输入电子邮箱");
                return false;
            }
            var name = $("#name").val();
            if (name.trim() == "") {
                alert("请输入您的真实姓名");
                return false;
            }
            var cardno = $("#cardno").val();
            if (cardno.trim() == "") {
                alert("请输入您的身份证号");
                return false;
            }
            var password = $("#password").val();
            if (password.trim() == "") {
                alert("请输入您的登陆密码");
                return false;
            }
            var repassword = $("#repassword").val();
            if (repassword.trim() == "") {
                alert("请输入您的确认密码");
                return false;
            }
            var checkcode = $("#checkcode").val();
            if (checkcode.trim() == "") {
                alert("请输入验证码");
                return false;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div style="padding-top: 10px;" class="center_container">
        <table cellpadding="0" cellspacing="0" border="0" style="width: 976px; height: 460px;"
            class="center">
            <tr>
                <td style="background: url(<%=this.ResolveUrl("~/images/login_pic3.jpg") %>) no-repeat">
                </td>
                <td style="width: 320px; vertical-align: top; padding-top: 30px;">
                    <div class="regPanel">
                        <div class="caption">
                            欢迎注册
                        </div>
                        <div class="register">
                            <span class="required">*</span>
                            <asp:Label ID="Label1" runat="server" Text=" 手机号码：" CssClass="title">
                            </asp:Label><asp:TextBox ID="phone" Width="200px" runat="server"></asp:TextBox>
                        </div>
                        <div class="register">
                            <span class="required">*</span>
                            <asp:Label ID="Label2" runat="server" Text=" 电子邮箱：" CssClass="title"></asp:Label>
                            <asp:TextBox ID="email" Width="200px" runat="server"></asp:TextBox>
                        </div>
                        <div class="register">
                            <span class="required">*</span>
                            <asp:Label ID="Label3" runat="server" Text=" 真实姓名：" CssClass="title"></asp:Label>
                            <asp:TextBox ID="name" Width="200px" runat="server"></asp:TextBox>
                        </div>
                        <div class="register">
                            <span class="required">*</span>
                            <asp:Label ID="Label4" runat="server" Text=" 身份证号：" CssClass="title"></asp:Label>
                            <asp:TextBox ID="cardno" Width="200px" runat="server"></asp:TextBox>
                        </div>
                        <div class="register">
                            <span class="required">*</span>
                            <asp:Label ID="Label5" runat="server" Text=" 登录密码：" CssClass="title"></asp:Label>
                            <asp:TextBox ID="password" Width="200px" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="register">
                            <span class="required">*</span>
                            <asp:Label ID="Label6" runat="server" Text=" 确认密码：" CssClass="title"></asp:Label>
                            <asp:TextBox ID="repassword" Width="200px" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="register">
                            <span class="required">*</span>
                            <asp:Label ID="Label7" runat="server" Text=" 验证号码：" CssClass="title"></asp:Label>
                            <asp:TextBox ID="checkcode" Width="120px" runat="server"></asp:TextBox>
                            <img id="chkCode" title="点击切换" src="../Web/CheckCode.aspx" onclick="javascript:CheckCode();"
                                style="cursor: pointer;" />
                        </div>
                        <div class="register">
                            <asp:LinkButton runat="server" CssClass="btn" ID="BtnRegister" OnClientClick="checkform();" OnClick="BtnRegister_Click">
                                <div>
                                    注册
                                </div>
                            </asp:LinkButton>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>