<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="LongRent.aspx.cs" Inherits="ZLzuche.com.LongRent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .opernav_prev div, .opernav_curr div, .opernav_next div
        {
            color: #ffffff;
            height: 36px;
            line-height: 36px;
            float: left;
        }
        .opernav_prev .opernav_start, .opernav_curr .opernav_start, .opernav_next .opernav_start
        {
            width: 22px;
            font-size: 20px;
            font-weight: bold;
        }
        .opernav_prev .opernav_split, .opernav_curr .opernav_split, .opernav_next .opernav_split
        {
            width: 16px;
        }
        .opernav_prev .opernav_content, .opernav_curr .opernav_content, .opernav_next .opernav_content
        {
            width: 80px;
            font-size: 16px;
            font-weight: bold;
        }
        .opernav_prev .opernav_content a, .opernav_curr .opernav_content a, .opernav_next .opernav_content a
        {
            color: #ffffff;
        }
        .opernav_prev .opernav_end, .opernav_curr .opernav_end, .opernav_next .opernav_end
        {
            width: 6px;
        }
        
        .opernav_prev .opernav_start
        {
            background: url(images/shortrent_03.gif) no-repeat;
        }
        .opernav_prev .opernav_split
        {
            background: url(images/shortRent_04.gif) no-repeat;
        }
        .opernav_prev .opernav_content
        {
            background: url(images/shortRent_05.gif);
        }
        .opernav_prev .opernav_end
        {
            background: url(images/shortRent_05.gif) right;
        }
        
        .opernav_curr .opernav_start
        {
            background: url(images/shortRent_07.gif) no-repeat;
        }
        .opernav_curr .opernav_split
        {
            background: url(images/shortRent_08.gif) no-repeat;
        }
        .opernav_curr .opernav_content
        {
            background: url(images/shortRent_09.gif);
        }
        .opernav_curr .opernav_end
        {
            background: url(images/shortRent_09.gif) right;
        }
        
        .opernav_next .opernav_start
        {
            background: url(images/shortRent_15.gif) no-repeat;
        }
        .opernav_next .opernav_split
        {
            background: url(images/shortRent_16.gif) no-repeat;
        }
        .opernav_next .opernav_content
        {
            background: url(images/shortRent_17.gif);
        }
        .opernav_content a:hover
        {
            color: #357caa;
        }
        .opernav_next .opernav_end
        {
            background: url(images/shortRent_18.gif) right;
        }
        
        
        .rightHelp
        {
            margin-bottom: 10px;
            text-align: left;
        }
        .rightHelp .rightHelpTitle
        {
            border: solid 1px #A4C1CD;
            font-size: 14px;
            font-weight: bold;
            color: #357CAA;
            height: 26px;
            line-height: 26px;
            padding-left: 8px;
            text-align: left;
            background-color: #DFF6FE;
        }
        
        .rightHelp .rightHelpContent
        {
            border-left: solid 1px #A4C1CD;
            border-right: solid 1px #A4C1CD;
            border-bottom: solid 1px #A4C1CD;
            padding: 10px;
        }
        
        .table td, .table th
        {
            padding: 4px 0;
        }
        
        .center_container
        {
        }
        .center_container .leftPanel
        {
            vertical-align: top;
        }
        .center_container .centerPanel
        {
            width: 20px;
        }
        .center_container .rightPanel
        {
            width: 230px;
        }
        
        .tbSelectCar
        {
            border-collapse: collapse;
        }
        
        .tbSelectCar .title
        {
            background-color: #dff6fe;
            height: 38px;
            line-height: 38px;
            text-align: center;
            font-weight: bold;
            border: 1px solid #a4c1cd;
        }
        
        .tbSelectCar .content
        {
            height: 46px;
            line-height: 46px;
            border: 1px solid #a4c1cd;
        }
        
        
        
        
        .tbOrder
        {
            width: 100%;
        }
        .tbOrder .tdItem
        {
            border: 1px solid #a4c1cd;
            border-top: none;
            height: 36px;
        }
        .tbOrder .tdItemTop
        {
            border-top: 1px solid #a4c1cd;
        }
        .tbOrder .cation
        {
            font-size: 24px;
            font-weight: bold;
            color: #f6a51a;
        }
        .tbOrder .title
        {
            text-align: left;
            padding-left: 30px;
            font-weight: bold;
            font-size: 14px;
            background-color: #F0F0F0;
        }
        .tbOrder .textitem
        {
            height: 30px;
            line-height: 30px;
        }
        
        .tbOrder table td
        {
            height: 30px;
            line-height: 30px;
            text-align: left;
        }
        
        .tbOrder .divText
        {
            height: 22px;
            line-height: 22px;
        }
        .leftJusting {
            text-align: left;
        }
        .rightJusting {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:HiddenField runat="server" ID="hfCurrentStepIndex" />
    <div style="padding-top: 10px;" class="center_container" runat="server" id="divStep01">
        <table class="center" style="width: 976px;">
            <tr>
                <td id="leftContainer" style="width: 326px; vertical-align: top;">
                    <div style="border: 1px solid #EFBD4E;">
                        <div style="height: 36px; line-height: 36px; text-align: left; font-size: 16px; font-weight: bold;
                            padding-left: 20px; color: #efbd4e;">
                            长租预订（超过90天）
                        </div>
                        <div style="padding: 10px 20px;">
                            <table style="width: 100%;">
                                <tr>
                                    <td style="width: 38%;">
                                        取车城市
                                    </td>
                                    <td style="text-align: left;">
                                        <%--<asp:DropDownList ID="DropDownList1" runat="server">
                                        </asp:DropDownList>--%>
                                        <asp:Label runat="server" ID="lblShortRentTakeCity"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div style="margin-top: 20px;">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        取车日期
                                    </td>
                                    <td style="text-align: left;">
                                        <asp:TextBox ID="GetCarTime" runat="server" Width="100" ClientIDMode="Static" CssClass="Wdate"
                                            onfocus="WdatePicker({maxDate:'#F{$dp.$D(\'GetCarTime\')}'})"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div style="margin-top: 20px;">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        租期
                                    </td>
                                    <td style="text-align: left;">
                                        <asp:DropDownList ID="ddlRentCycle" runat="server" Width="100">
                                            <asp:ListItem Selected="True">--请选择--</asp:ListItem>
                                            <asp:ListItem Value="3">3个月</asp:ListItem>
                                            <asp:ListItem Value="4">4个月</asp:ListItem>
                                            <asp:ListItem Value="5">5个月</asp:ListItem>
                                            <asp:ListItem Value="6">6个月</asp:ListItem>
                                            <asp:ListItem Value="7">7个月</asp:ListItem>
                                            <asp:ListItem Value="8">8个月</asp:ListItem>
                                            <asp:ListItem Value="9">9个月</asp:ListItem>
                                            <asp:ListItem Value="10">10个月</asp:ListItem>
                                            <asp:ListItem Value="11">11个月</asp:ListItem>
                                            <asp:ListItem Value="12">1年</asp:ListItem>
                                            <asp:ListItem Value="24">2年</asp:ListItem>
                                            <asp:ListItem Value="36">3年</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div style="margin-top: 20px;">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        品牌
                                    </td>
                                    <td style="text-align: left;">
                                        <asp:DropDownList ID="CarTypeId" runat="server" Width="100" AutoPostBack="True" OnSelectedIndexChanged="CarTypeId_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div style="margin-top: 20px;">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        车型
                                    </td>
                                    <td style="text-align: left;">
                                        <asp:DropDownList ID="CarName" runat="server" Width="100">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div style="margin-top: 20px;">
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div style="padding-bottom: 20px;">
                            <asp:LinkButton runat="server" CssClass="btn" ID="lbnNext" OnClick="lbnNext2_Click">
                                <div>下一步</div>
                            </asp:LinkButton>
                        </div>
                    </div>
                    <div style="margin-top: 10px;">
                        <img src="images/longRent_01.gif" width="329" height="287" alt="">
                    </div>
                </td>
                <td id="splitPanel" style="width: 20px;">
                </td>
                <td id="rightContainer" style="vertical-align: top;">
                    <div>
                        <div style="background: url(images/longRent_02.gif) no-repeat -2px -2px; border: 1px solid #EFBD4E;">
                            <div style="height: 28px; line-height: 24px; text-align: left; padding-left: 26px;
                                color: #fff; font-weight: bold;">
                                促销特惠
                            </div>
                            <div style="padding-left: 20px; padding-right: 20px; text-align: left;">
                                <table style="width: 100%;">
                                    <tr style="height: 26px;">
                                        <td>
                                            [北京] 起亚K5 2.0GLS AT
                                        </td>
                                        <td>
                                            百公里新车
                                        </td>
                                        <td>
                                            5888元/月起
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <div style="border-top: 1px dashed #ccc; height: 1px; line-height: 1px;">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr style="height: 26px;">
                                        <td>
                                            [北京] 起亚K5 2.0GLS AT
                                        </td>
                                        <td>
                                            百公里新车
                                        </td>
                                        <td>
                                            5888元/月起
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div style="margin-top: 10px;">
                        <div style="background: url(images/longRent_02.gif) no-repeat -2px -2px; border: 1px solid #EFBD4E;">
                            <div style="height: 28px; line-height: 24px; text-align: left; padding-left: 26px;
                                color: #fff; font-weight: bold;">
                                推荐车型
                            </div>
                            <div style="padding-left: 20px; padding-right: 20px; text-align: left;">
                                <table style="width: 100%;">
                                    <tr style="height: 26px;">
                                        <td>
                                        </td>
                                        <td style="font-weight: bold;">
                                            12个月
                                        </td>
                                        <td style="font-weight: bold;">
                                            24个月
                                        </td>
                                        <td style="font-weight: bold;">
                                            36个月
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
                                        <td colspan="3">
                                            <div style="border-top: 1px solid #ccc; height: 1px; line-height: 1px;">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr style="height: 26px;">
                                        <td>
                                            [北京] 起亚K5 2.0GLS AT
                                        </td>
                                        <td>
                                            百公里新车
                                        </td>
                                        <td>
                                            百公里新车
                                        </td>
                                        <td>
                                            5888元/月起
                                        </td>
                                    </tr>
                                    <tr style="height: 26px;">
                                        <td>
                                            [北京] 起亚K5 2.0GLS AT
                                        </td>
                                        <td>
                                            百公里新车
                                        </td>
                                        <td>
                                            百公里新车
                                        </td>
                                        <td>
                                            5888元/月起
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    <asp:Panel Style="padding-top: 10px;" CssClass="center_container" runat="server"
        Visible="False" ID="divStep02">
        <table style="width: 976px;" class="center">
            <tr>
                <td class="leftPanel">
                    <div>
                        <table class="center">
                            <tr>
                                <td style="width: 6px;">
                                </td>
                                <td>
                                    <div class="<%=CurrentNavIndex == 1 ? "opernav_curr" : "opernav_prev" %>">
                                        <div class="opernav_start">
                                            1
                                        </div>
                                        <div class="opernav_split">
                                        </div>
                                        <div class="opernav_content">
                                            <asp:LinkButton runat="server" ID="btnStepSwitchOver" CommandName="Step01" Text="需求选择"
                                                OnClick="btnStepSwitchOver_Click"></asp:LinkButton>
                                        </div>
                                        <div class="opernav_end">
                                        </div>
                                        <br class="clear" />
                                    </div>
                                </td>
                                <td style="width: 6px;">
                                </td>
                                <td>
                                    <div class="<%=CurrentNavIndex == 2 ? "opernav_curr" : (CurrentNavIndex > 2 ? "opernav_prev" : "opernav_next") %>">
                                        <div class="opernav_start">
                                            2
                                        </div>
                                        <div class="opernav_split">
                                        </div>
                                        <div class="opernav_content">
                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Step02" Text="选择车型"></asp:LinkButton>
                                        </div>
                                        <div class="opernav_end">
                                        </div>
                                        <br class="clear" />
                                    </div>
                                </td>
                                <td style="width: 6px;">
                                </td>
                                <td>
                                    <div class="<%=CurrentNavIndex == 4 ? "opernav_curr" : (CurrentNavIndex > 4 ? "opernav_prev" : "opernav_next") %>">
                                        <div class="opernav_start">
                                            3
                                        </div>
                                        <div class="opernav_split">
                                        </div>
                                        <div class="opernav_content">
                                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Step04" Text="确认订单"></asp:LinkButton>
                                        </div>
                                        <div class="opernav_end">
                                        </div>
                                        <br class="clear" />
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="margin-top: 10px;" runat="server" id="divCarInfo">
                        <table style="width: 100%;" class="center tbSelectCar" cellpadding="0" cellspacing="0"
                            border="0">
                            <tr class="title">
                                <td style="width: 30%;">
                                    车型
                                </td>
                                <td style="width: 15%;">
                                    变速器
                                </td>
                                <td style="width: 10%;">
                                    车龄
                                </td>
                                <td style="width: 15%;">
                                    基本月租
                                </td>
                                <td style="width: 15%;">
                                    车辆数
                                </td>
                            </tr>
                            <tr class="content">
                                <td>
                                    <asp:Literal runat="server" ID="ltlCarName"></asp:Literal>
                                </td>
                                <td>
                                    <asp:Literal ID="ltlDerailleur" runat="server"></asp:Literal>
                                </td>
                                <td>
                                    <asp:Literal ID="ltlCarAge" runat="server"></asp:Literal>
                                </td>
                                <td>
                                    <asp:Literal ID="ltlRentCost" runat="server"></asp:Literal>
                                </td>
                                <td>
                                    <span class="required">*</span>
                                    <asp:TextBox runat="server" Width="80" Style="text-align: center;" ID="txtRentNum"></asp:TextBox>台
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="margin-top: 10px;" runat="server" id="divClientLinkInfo">
                        <table style="width: 100%; border-collapse: collapse;" class="center tbSelectCar">
                            <tr>
                                <td colspan="4" style="text-align: left; height: 20px; line-height: 20px;">
                                    <span class="required">请注意带*的选项为必填项</span>
                                </td>
                            </tr>
                            <tr class="content">
                                <td class="title">
                                    <span class="required">*</span>联系人
                                </td>
                                <td>
                                    <asp:TextBox ID="txtLinkMan" runat="server" Width="120"></asp:TextBox>
                                </td>
                                <td class="title">
                                    <span class="required">*</span>联系电话
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPhone" runat="server" Width="120"></asp:TextBox>
                                </td>
                            </tr>
                            <tr class="content">
                                <td class="title">
                                    企业名称
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCompanyName" runat="server" Width="120"></asp:TextBox>
                                </td>
                                <td class="title">
                                    Email
                                </td>
                                <td>
                                    <asp:TextBox ID="txtEmail" runat="server" Width="120"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <div style="padding: 10px; text-align: right;">
                            <table class="center">
                                <tr>
                                    <td>
                                        <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn" 
                                            onclick="lbnNext1_Click">
                                            <div>
                                                上一步
                                            </div>
                                        </asp:LinkButton>
                                    </td>
                                    <td style="width: 20px;">
                                    </td>
                                    <td>
                                        <asp:LinkButton runat="server" CssClass="btn" ID="lbnNext3" onclick="lbnNext3_Click">
                                            <div>
                                                下一步
                                            </div>
                                        </asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div style="margin-top: 10px;" runat="server" id="divClient">
                        <table cellpadding="1" cellspacing="0" border="0" class="tbOrder">
                            <tr>
                                <td class="tdItem tdItemTop title">
                                    客户信息
                                </td>
                            </tr>
                            <tr>
                                <td class="tdItem">
                                    <table style="width: 95%;" class="center">
                                        <tr>
                                            <td>
                                                联系人
                                            </td>
                                            <td>
                                                <asp:Literal runat="server" ID="ltlLinkMan"></asp:Literal>
                                            </td>
                                            <td>
                                                联系电话
                                            </td>
                                            <td>
                                                <asp:Literal runat="server" ID="ltlPhone"></asp:Literal>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                企业名称
                                            </td>
                                            <td>
                                                <asp:Literal ID="ltlCompanyName" runat="server"></asp:Literal>
                                            </td>
                                            <td>
                                                Email
                                            </td>
                                            <td>
                                                <asp:Literal ID="ltlEmail" runat="server"></asp:Literal>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 10px;">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table style="width: 100%;" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="width: 49%;">
                                                <table style="width: 100%;" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td class="tdItem tdItemTop title">
                                                            车辆信息
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="tdItem" style="height: 90px; vertical-align: top;">
                                                            <table style="width: 100%;">
                                                                <tr>
                                                                    <td style="width: 45%; text-align: center; vertical-align: top;">
                                                                        <asp:Image runat="server" ID="imgCar" CssClass="center" Width="90" Height="60" />
                                                                        <div class="divText">
                                                                            奥迪A6L 2.0TFSI标准型</div>
                                                                    </td>
                                                                    <td style="height: 80px;">
                                                                        <div class="left_split">
                                                                        </div>
                                                                    </td>
                                                                    <td style="vertical-align: top;">
                                                                        <div class="divText">
                                                                            品牌：<asp:Literal ID="ltlCarType3" runat="server"></asp:Literal></div>
                                                                        <div class="divText">
                                                                            车型：<asp:Literal ID="ltlCar3" runat="server"></asp:Literal></div>
                                                                        <div class="divText">
                                                                            车龄：<asp:Literal ID="ltlCarAge3" runat="server"></asp:Literal></div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="width:10px;">
                                            </td>
                                            <td style="width: 49%;">
                                                <table style="width: 100%;" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td class="tdItem tdItemTop title">
                                                            用车信息
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="tdItem" style="height: 90px; vertical-align: top; padding-left: 20px;">
                                                            <div class="divText">
                                                                取车城市：<asp:Literal ID="ltlTakeCity3" runat="server"></asp:Literal>
                                                            </div>
                                                            <div class="divText">
                                                                取车时间：<asp:Literal ID="ltlTakeTime3" runat="server"></asp:Literal>
                                                            </div>
                                                            <div class="divText">
                                                                租期：<asp:Literal ID="ltlRentCycle3" runat="server"></asp:Literal>
                                                            </div>
                                                            <div class="divText">
                                                                数量：<asp:Literal ID="ltlRentNum3" runat="server"></asp:Literal>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 10px;">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="tdItem tdItemTop title">
                                    基本租金
                                    <asp:Label runat="server" Text="" ID="ltlBaseMonthRentCost" Style="float: right; margin-right: 20px;
                                        font-weight: normal; font-size: 12px;"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="tdItem" style="text-align: left; padding: 2px 0 2px 20px;">
                                    <div class="divText">
                                        全国救援服务 (已含)
                                    </div>
                                    <div class="divText">
                                        年检服务 (已含)
                                    </div>
                                    <div class="divText">
                                        车船税 (已含)
                                    </div>
                                    <div class="divText">
                                        月行驶里程 5000公里 (已含)
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <div style="padding: 10px; text-align: right;">
                            <table class="center">
                                <tr>
                                    <td>
                                        <asp:LinkButton ID="lbnPrev2" runat="server" OnClick="lbnNext2_Click" CssClass="btn">
                                            <div>
                                                上一步
                                            </div>
                                        </asp:LinkButton>
                                    </td>
                                    <td style="width: 20px;">
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="lbnSubmit" runat="server" CssClass="btn"  OnClientClick="return IsLogin();"
                                            onclick="lbnSubmit_Click">
                                            <div>
                                                确认订单
                                            </div>
                                        </asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </td>
                <td class="centerPanel">
                </td>
                <td class="rightPanel" style="vertical-align: top;">
                    <div class="rightHelp" runat="server" id="divOrderInfo">
                        <div class="rightHelpTitle">
                            订单信息
                        </div>
                        <div class="rightHelpContent">
                            <table class="table" style="width: 100%;">
                                <tr>
                                    <th class="leftJusting" style="width:50%;">
                                        取车城市：
                                    </th>
                                    <td class="rightJusting">
                                        <asp:Literal runat="server" ID="ltlTakeCity2"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <div class="split">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="leftJusting">
                                        取车日期：
                                    </th>
                                    <td class="rightJusting">
                                        <asp:Literal runat="server" ID="ltlTakeTime2"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <div class="split">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="leftJusting">
                                        租期：
                                    </th>
                                    <td class="rightJusting">
                                        <asp:Literal runat="server" ID="ltlRentCycle"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <div class="split">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="leftJusting">
                                        品牌：
                                    </th>
                                    <td class="rightJusting">
                                        <asp:Literal runat="server" ID="ltlTrank2"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <div class="split">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="leftJusting">
                                        车型：
                                    </th>
                                    <td class="rightJusting">
                                        <asp:Literal runat="server" ID="ltlCar2"></asp:Literal>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    
                    <div class="rightHelp" runat="server" id="divQuotationList">
                        <div class="rightHelpTitle">
                            报价单（RMB）
                        </div>
                        <div class="rightHelpContent">
                            <table class="table" style="width: 100%;">
                                <tr>
                                    <th style="width:50%;" class="leftJusting">
                                        单车基本租金：
                                    </th>
                                    <td class="rightJusting">
                                        <asp:Literal runat="server" ID="ltlSingleCarRentCost3"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <div class="split">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="leftJusting">
                                        <span class="required">月租金小计：</span>
                                    </th>
                                    <td class="rightJusting">
                                        <asp:Literal runat="server" ID="ltlMonthCost"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="leftJusting">
                                        <span class="required">租期：</span>
                                    </th>
                                    <td class="rightJusting">
                                        <asp:Literal runat="server" ID="ltlCarRentCycle3"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="leftJusting">
                                        <span class="required">数量：</span>
                                    </th>
                                    <td class="rightJusting">
                                        <asp:Literal runat="server" ID="ltlCarRentNum"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <div class="split">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="leftJusting">
                                        <span class="required">总计：</span>
                                    </th>
                                    <td class="rightJusting">
                                        <asp:Literal runat="server" ID="ltlTotalRentCost"></asp:Literal>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
