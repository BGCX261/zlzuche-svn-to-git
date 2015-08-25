<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="MyZL.aspx.cs" Inherits="ZLzuche.MyZL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>我的中联</title>
    <link href="'<%=this.ResolveUrl("~/Styles/CarServiceStyle.css") %>'" rel="stylesheet"
        type="text/css" />
    <style type="text/css">
        body
        {
            font: normal 11px verdana;
        }
        
        #leftSearch ul
        {
            margin: 0;
            padding: 0;
            list-style: none;
            width: 270px; /* Width of Menu Items */
            border-bottom: 1px solid #ccc;
        }
        
        #leftSearch ul li
        {
            position: relative;
        }
        
        #leftSearch li ul
        {
            position: absolute;
            left: 149px; /* Set 1px less than menu width */
            top: 0;
            display: none;
        }
        
        /* Styles for Menu Items */
        #leftSearch ul li a
        {
            display: block;
            text-decoration: none;
            color: #777;
            background: #fff; /* IE6 Bug */
            padding: 5px;
            border: 1px solid #ccc; /* IE6 Bug */
            border-bottom: 0;
        }
        
        /* Holly Hack. IE Requirement \*/
        #leftSearch ul li
        {
            float: none;
            height: 1%;
        }
        #leftSearch ul li a
        {
            height: 1%;
        }
        /* End */
    </style>
    <script type="text/javascript" language="javascript">
        function fun(key) {
            if (key == "OrderList") {
                $("#OrderList").show();
                $("#UpdatePassword").hide();
            }
            if (key == "UpdatePassword") {
                $("#UpdatePassword").show();
                $("#OrderList").hide();
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding-top: 10px;" class="center_container">
        <table cellpadding="0" cellspacing="0" border="0" class="center" style="width: 980px;">
            <tr>
                <td id="leftSearch" style="width: 150px; vertical-align: top;">
                    <ul id="nav">
                        <li><a href="javascript:" onclick="fun('OrderList')">订单管理</a></li>
                        <%-- <li><a href="javascript:" >个人信息</a> </li>--%>
                        <li><a href="javascript:" onclick="fun('UpdatePassword')">修改密码</a> </li>
                    </ul>
                </td>
                <td id="splitPanel" style="width: 10px;">
                </td>
                <td id="rightContent">
                    <div id="OrderList" style="margin-top: 15px; margin-right: 17px; margin-bottom: 17px;
                        text-align: left;">
                        <asp:GridView ID="OrderGrid" runat="server" SkinID="gv" DataKeyNames="ID"
                             >
                            <Columns>
                                <asp:TemplateField HeaderText="会员姓名" HeaderStyle-Width="100px" HeaderStyle-Height="17px">
                                    <ItemTemplate>
                                        <%# GetCustomerName(Convert.ToString(Eval("CustomerID")))%>
                                    </ItemTemplate>
                                    <HeaderStyle Width="100px"></HeaderStyle>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="所租车辆" HeaderStyle-Width="100px" HeaderStyle-Height="17px">
                                    <ItemTemplate>
                                        <%# GetCarName(Convert.ToString(Eval("ID")))%>
                                    </ItemTemplate>
                                    <HeaderStyle Width="100px"></HeaderStyle>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="订单类型" HeaderStyle-Width="100px" HeaderStyle-Height="17px">
                                    <ItemTemplate>
                                        <%#Eval("OrderType")%>
                                    </ItemTemplate>
                                    <HeaderStyle Width="100px"></HeaderStyle>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="取车时间" HeaderStyle-Width="100px" HeaderStyle-Height="17px">
                                    <ItemTemplate>
                                        <%#Eval("GetCarTime")%>
                                    </ItemTemplate>
                                    <HeaderStyle Width="100px"></HeaderStyle>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="还车时间" HeaderStyle-Width="100px" HeaderStyle-Height="17px">
                                    <ItemTemplate>
                                        <%#Eval("ReturnCarTime")%>
                                    </ItemTemplate>
                                    <HeaderStyle Width="100px"></HeaderStyle>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="租期" HeaderStyle-Width="150px" HeaderStyle-Height="17px">
                                    <ItemTemplate>
                                        <%#Eval("HireDays")%>
                                    </ItemTemplate>
                                    <HeaderStyle Width="150px"></HeaderStyle>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="押金" HeaderStyle-Width="150px" HeaderStyle-Height="17px">
                                    <ItemTemplate>
                                        <%#Eval("Deposit")%>
                                    </ItemTemplate>
                                    <HeaderStyle Width="150px"></HeaderStyle>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                               <%-- <asp:CommandField ShowDeleteButton="false" HeaderStyle-Width="80px" HeaderStyle-Height="17px">
                                    <HeaderStyle Width="80px"></HeaderStyle>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:CommandField>--%>
                            </Columns>
                        </asp:GridView>
                    </div>
                    <div id="UpdatePassword" style="margin-top: 15px; margin-right: 17px; margin-bottom: 17px;
                        text-align: left; display: none;">
                        <table>
                            <tr>
                                <td width="150px;" style="text-align: right">
                                    <asp:Label ID="Label4" runat="server" Text="原始密码："></asp:Label>
                                </td>
                                <td width="300px;">
                                    <asp:TextBox runat="server" ID="OldPassword" Width="200px" TextMode="Password">
                                    </asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="150px;" style="text-align: right">
                                    <asp:Label ID="Label1" runat="server" Text=" 新密码："></asp:Label>
                                </td>
                                <td width="300px;">
                                    <asp:TextBox runat="server" ID="NewPassword" Width="200px" TextMode="Password">
                                    </asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="150px;" style="text-align: right">
                                    <asp:Label ID="Label2" runat="server" Text="确认新密码："></asp:Label>
                                </td>
                                <td width="300px;">
                                    <asp:TextBox runat="server" ID="ReNewPassword" Width="200px" TextMode="Password">
                                    </asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="150px;">
                                </td>
                                <td width="300px;">
                                    <asp:Button ID="btnSave" runat="server" Text="保存" Width="100px" OnClick="btnSave_Click" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
