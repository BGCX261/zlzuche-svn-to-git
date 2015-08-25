<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Leasing.aspx.cs" Inherits="ZLzuche.com.Leasing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .rightContainer .nav_tabs
        {
            height: 20px;
            line-height: 20px;
        }
        .rightContainer .nav_tabs .nav_tabItem
        {
            width: 80px;
            height: 20px;
            line-height: 20px;
            color: #ffffff;
            float: left;
            margin-left: 20px;
            cursor: pointer;
        }
        .rightContainer .nav_tabs .nav_tabSelect
        {
            background-color: #FABD03;
        }
        .rightContainer .nav_tabs .nav_tabNoSelect
        {
            background-color: #CCCCCC;
        }
        .rightContainer .nav_tabPanel
        {
            border: 1px solid #EFBD4E;
            padding: 20px 16px;
            text-align: left;
        }
    </style>
    <script type="text/javascript">
        // 切换右边区域的菜单
        function switchRightTab(index) {
            var tabArray = [];
            tabArray.push('tabItem00');
            tabArray.push('tabItem01');
            tabArray.push('tabItem02');
            $(tabArray).each(function (i) {
                if (i == index) {
                    $('#' + this).addClass("nav_tabSelect");
                    $('#' + this).removeClass("nav_tabNoSelect");

                } else {
                    $('#' + this).addClass("nav_tabNoSelect");
                    $('#' + this).removeClass("nav_tabSelect");
                }
            });
            var tabPanelArray = [];
            tabPanelArray.push('tabPanel00');
            tabPanelArray.push('tabPanel01');
            tabPanelArray.push('tabPanel02');
            $(tabPanelArray).each(function (i) {
                if (i == index)
                    $('#' + this).show();
                else $('#' + this).hide();
            });
        }

        function clearForm() {//objE为form表单
            objE = document.forms[0];
            $(objE).find(':input').each(
                function () {
                    switch (this.type) {
                        case 'passsword':
                        case 'select-multiple':
                        case 'select-one':
                        case 'text':
                        case 'textarea':
                            $(this).val('');
                            break;
                        case 'checkbox':
                        case 'radio':
                            this.checked = false;
                    }
                }
            );
        }

        function NewApply() {
            var iWidth = 600; //窗口宽度
            var iHeight = 400; //窗口高度
            var iTop = (window.screen.height - iHeight) / 2;
            var iLeft = (window.screen.width - iWidth) / 2;
            window.open("NewApply.aspx", "New", "Scrollbars=no,Toolbar=no,Location=no,Direction=no,Resizeable=no,Width=" + iWidth + " ,Height=" + iHeight + ",top=" + iTop + ",left=" + iLeft);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding-top: 10px;" class="center_container">
        <table class="center" style="width: 976px;">
            <tr>
                <td id="leftContainer" style="width: 326px; vertical-align: top;">
                    <div style="border: 1px solid #EFBD4E;">
                        <div style="padding: 0px 20px 10px;">
                            <table>
                                <tr>
                                    <th colspan="4" style="text-align: left;">
                                        车辆信息
                                    </th>
                                </tr>
                                <tr>
                                    <td>
                                        品牌
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="CarTypeId" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CarTypeId_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        车型
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="CarName" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CarName_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        型号
                                    </td>
                                    <td colspan="3">
                                        <asp:DropDownList Width="100%" ID="CarModel" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CarModel_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div style="margin-top: 30px;">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th style="text-align: left;">
                                        购车费用
                                    </th>
                                    <td>
                                        <span id="gcfy" runat="server" style="color: Red; text-align: center"></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        车辆指导价
                                    </td>
                                    <td colspan="3">
                                        <asp:TextBox ID="clzdj" runat="server" Enabled="false" ReadOnly="true"></asp:TextBox>元
                                    </td>
                                </tr>
                                <%--                                <tr>
                                    <td>
                                    </td>
                                    <td colspan="3">
                                        <asp:CheckBox ID="CheckBox1" runat="server" Text="没有指到想要的车型，请输入价格" />
                                    </td>
                                </tr>--%>
                                <tr>
                                    <td>
                                        车辆购置税
                                    </td>
                                    <td colspan="3">
                                        <asp:TextBox ID="clgzs" runat="server" Enabled="false" ReadOnly="true"></asp:TextBox>元
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        验车上牌费
                                    </td>
                                    <td colspan="3">
                                        <asp:TextBox ID="ycspf" runat="server" Enabled="false" ReadOnly="true"></asp:TextBox>元
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div style="margin-top: 30px;">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th style="text-align: left;">
                                        融资租赁费用
                                    </th>
                                    <td>
                                        <span id="rzzlfy" runat="server" style="color: Red; text-align: center"></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        融资年限
                                    </td>
                                    <td>
                                        <asp:RadioButton ID="oneyear" runat="server" OnCheckedChanged="rdo_CheckedChanged"
                                            AutoPostBack="true" GroupName="rzYear" Text="1年" />
                                    </td>
                                    <td>
                                        <asp:RadioButton ID="twoyear" runat="server" OnCheckedChanged="rdo_CheckedChanged"
                                            AutoPostBack="true" GroupName="rzYear" Text="2年" />
                                    </td>
                                    <td>
                                        <asp:RadioButton ID="threeyear" Checked="true" OnCheckedChanged="rdo_CheckedChanged"
                                            AutoPostBack="true" runat="server" GroupName="rzYear" Text="3年" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        首付比例
                                    </td>
                                    <td colspan="3">
                                        <asp:RadioButton ID="sfbl" Style="text-align: left;" Checked="true" runat="server"
                                            Text="30%" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        尾付比例
                                    </td>
                                    <td colspan="3">
                                        <asp:RadioButton ID="wfbl" Style="text-align: left;" Checked="true" runat="server"
                                            Text="0%" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        首付租金
                                    </td>
                                    <td colspan="3">
                                        <asp:TextBox ID="sfzj" runat="server" Enabled="false" ReadOnly="true"></asp:TextBox>元
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        尾付租金
                                    </td>
                                    <td colspan="3">
                                        <asp:TextBox ID="wfzj" runat="server" Enabled="false" ReadOnly="true">0</asp:TextBox>元
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        月租金
                                    </td>
                                    <td colspan="3">
                                        <asp:TextBox ID="yzj" runat="server" Enabled="false" ReadOnly="true"></asp:TextBox>元
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div style="padding-bottom: 10px;">
                            <table style="width: 60%;" class="center">
                                <tr>
                                    <td>
                                        <div class="button" onclick="clearForm();" style="font-weight: normal; height: 22px;
                                            line-height: 22px;">
                                            重新计算</div>
                                    </td>
                                    <td>
                                        <div class="button" onclick="NewApply();" style="font-weight: normal; height: 22px; line-height: 22px;">
                                            申请融资租赁</div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </td>
                <td id="splitPanel" style="width: 20px;">
                </td>
                <td id="rightContainer" class="rightContainer" style="vertical-align: top;">
                    <div>
                        <div class="nav_tabs" style="height: 20px;">
                            <div id="tabItem00" class="nav_tabItem nav_tabSelect" onclick="switchRightTab(0)">
                                产品介绍
                            </div>
                            <div id="tabItem01" class="nav_tabItem nav_tabNoSelect" onclick="switchRightTab(1)">
                                办理流程
                            </div>
                            <div id="tabItem02" class="nav_tabItem nav_tabNoSelect" onclick="switchRightTab(2)">
                                联系我们
                            </div>
                            <div class="clear">
                            </div>
                        </div>
                        <div id="tabPanel00" class="nav_tabPanel">
                            融资租赁是指中联租车为企业客户购买指定车辆或者以账面净值回购其自有车辆，并签订车辆租赁合同，企业客户在租赁期限内获得车辆的使用权并按约定向中联租车支付租金，租期届满，租金付清后，企业客户即可获得该车辆产权的交易行为。融资租赁的期限一般为1-3年。
                            <br />
                            <br />
                            <strong>融资租赁的优点：</strong>
                            <div style="height: 5px">
                            </div>
                            1. 以租代购，轻松拥有，节约企业宝贵的现金流<br />
                            2. 手续办理，方便、灵活
                        </div>
                        <div id="tabPanel01" class="nav_tabPanel" style="display: none;">
                            <img src="http://static.zuchecdn.com/images/FinancingLease/zl_flow1.png" />
                        </div>
                        <div id="tabPanel02" class="nav_tabPanel" style="display: none;">
                            <p class="ent_content">
                                如果您希望进一步了解中联租车融资租赁相关信息，请通过以下方式联系我们，我们将会由资深的客户经理为您提供专业的服务。<br />
                                <br />
                                <strong><span>地</span><span style="padding-left: 26px">址：</span></strong>XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX<br />
                                <strong><span>邮</span><span style="padding-left: 26px">编：</span></strong><span style="font-family: Arial">123456</span><br />
                                <strong><span>电</span><span style="padding-left: 26px">话：</span></strong><span style="font-family: Arial">400
                                    123 4567</span><br />
                                <strong><span>传</span><span style="padding-left: 26px">真：</span></strong><span style="font-family: Arial">XXXXXXXXXXXXXXX</span><br />
                                <strong>电子邮箱：</strong><span style="font-family: Arial"><a href="mailto:sales@zuche.com">abc@abc.com</a></span></p>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
