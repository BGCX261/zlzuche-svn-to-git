<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="ShortRent.aspx.cs" Inherits="ZLzuche.com.ShortRent" %>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
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
            padding-top: 2px;
            padding-bottom: 2px;
        }
        
        .dlSearch
        {
            padding-left: 20px;
            padding-right: 20px;
            width: 100%;
        }
        .dlSearch div
        {
            float: left;
            vertical-align: top;
        }
        
        .dlSearch dt, .dlSearch dd
        {
            float: left;
            height: 20px;
            line-height: 20px;
        }
        .dlSearch dt
        {
            font-weight: bold;
        }
        .dlSearch dd
        {
            width: 100%;
            height: 40px;
        }
        .dlSearch dd .all
        {
            float: left;
            background-color: orange;
            padding: 2px 5px;
            margin: 2px 5px;
            color: #ffffff;
            text-decoration: none;
        }
        .dlSearch dd .selected
        {
            background-color: cornflowerblue;
            margin: 2px 5px;
            padding: 2px 5px;
            color: #ffffff;
            text-decoration: none;
            float: left;
        }
        .dlSearch dd .text
        {
            color: #000;
            margin: 2px 5px;
            padding: 2px 5px;
            text-decoration: none;
            float: left;
        }
        
        
        .tbSelectCar
        {
            width: 100%;
        }
        .tbSelectCar .title .tabstart
        {
            background: url(images/shortRent_30.gif) no-repeat -1px 5px;
            height: 10px;
            width: 12px;
        }
        .tbSelectCar .title .tabcenter
        {
            background: url(images/shortRent_31.gif);
            width: 100px;
            font-weight: bold;
        }
        .tbSelectCar .title .tabend
        {
            background: url(images/shortRent_33.gif) no-repeat right;
            height: 10px;
            width: 14px;
        }
        .tbSelectCar .title .full
        {
            background: url(images/shortRent_34.gif) center -28px;
        }
        .tbSelectCar .title .end
        {
            background: url(images/shortRent_36.gif) no-repeat -3px -28px;
            height: 10px;
            width: 12px;
        }
        .tbSelectCar .content
        {
            border-left: solid 1px orange;
            border-right: solid 1px orange;
            border-bottom: solid 1px orange;
        }
        .tbSelectCar .content .tdleft
        {
            padding: 10px;
            width: 200px;
            text-align: center;
        }
        .tbSelectCar .content .tdcenter
        {
            width: 120px;
            padding: 20px 10px 5px;
            text-align: left;
            vertical-align: top;
        }
        .tbSelectCar .content .tdcenter div
        {
            padding: 3px;
        }
        .price
        {
            color: #FF9657;
            font-size: 28px;
            font-weight: bold;
        }
        
        .tbSelectCar .content .tdcenter .carname
        {
            font-size: 14px;
            font-weight: bold;
            color: #3F59D2;
        }
        .tbSelectCar .content .tdright
        {
            width: 160px;
            vertical-align: top;
            padding-top: 16px;
        }
        .tbSelectCar .content .tdright .btnChangeShop, .tbSelectCar .content .tdright .btnOrder
        {
            height: 28px;
            line-height: 28px;
            width: 80px;
            font-size: 13px;
            font-weight: bold;
            cursor: pointer;
            margin-left: auto;
            margin-right: auto;
        }
        .tbSelectCar .content .tdright .btnChangeShop, .rightHelpContent .btnChangeShop
        {
            border: solid 1px #9FBE49;
            background-color: #CCF477;
            color: #3E6605;
        }
        .tbSelectCar .content .tdright .btnOrder, .rightHelpContent .btnOrder
        {
            border: solid 1px #EFBD4E;
            background-color: #FEDF46;
            color: #793510;
        }
        .rightHelpContent .btnChangeShop, .rightHelpContent .btnOrder
        {
            width: 44px;
            height: 20px;
            line-height: 20px;
            cursor: pointer;
            margin: auto;
            text-align: center;
        }
        .rightHelpContent .text
        {
            height: 20px;
            line-height: 20px;
            margin-left: 4px;
        }
        
        .tbSelectCar .content .divSplit
        {
            width: 98%;
            height: 1px;
            line-height: 1px;
            border-top: 1px dashed #ccc;
            margin-left: auto;
            margin-right: auto;
        }
        .tbSelectCar .footer
        {
            text-align: right;
        }
        
        .tbSelectCar .footer .btnMoreCar
        {
            background-color: #FABD03;
            border: 1px solid #9FBE49;
            width: 70px;
            height: 22px;
            line-height: 22px;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            float: right;
            color: #ffffff;
        }
        
        .left_justifying
        {
            text-align: left;
        }
        .right_justifying
        {
            text-align: right;
        }
        .paddingtop_10
        {
            padding-top: 10px;
        }
        .paddingleft_10
        {
            padding-left: 10px;
        }
        .paddingright_10
        {
            padding-right: 10px;
        }
        .rent_title
        {
            color: #555;
            font-size: 14px;
            font-weight: bold;
        }
        
        .tab_selected, .tab_noselected
        {
            height: 49px;
            width: 155px;
            font-size: 14px;
            font-weight: bold;
            color: #ffffff;
            cursor: pointer;
        }
        .tab_selected
        {
            color: #000;
            background-image: url(images/index_29.gif);
            background-repeat: no-repeat;
            background-position: center;
        }
        .tab_selected a, .tab_noselected a
        {
            text-decoration: none;
            font-size: 14px;
            font-weight: bold;
        }
        .tab_selected a
        {
            color: #000;
        }
        .tab_noselected a
        {
            color: #ffffff;
        }
        .tab_noselected a:hover, .tab_selected a:hover
        {
            color: gold;
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
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager runat="server">
    </asp:ScriptManager>
    <asp:HiddenField runat="server" ID="hfCurrentStepIndex" />
    <asp:HiddenField runat="server" ID="hfCarId"/>
    <div style="padding-top: 10px;" class="center_container">
        <table cellpadding="0" cellspacing="0" border="0" class="center" style="width: 976px;">
            <tr>
                <td id="leftContainer" style="vertical-align: top;">
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
                                            <asp:LinkButton runat="server" ID="btnStepSwitchOver" CommandName="Step01" Text="选择门店"
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
                                            <asp:LinkButton runat="server" CommandName="Step02" OnClick="btnStepSwitchOver_Click"
                                                Text="选择车型"></asp:LinkButton>
                                        </div>
                                        <div class="opernav_end">
                                        </div>
                                        <br class="clear" />
                                    </div>
                                </td>
                                <td style="width: 6px;">
                                </td>
                                <%--                  <td>
                                    <div class="opernav_next">
                                        <div class="opernav_start">
                                            3
                                        </div>
                                        <div class="opernav_split">
                                        </div>
                                        <div class="opernav_content">
                                            <a href="#">选择服务</a>
                                        </div>
                                        <div class="opernav_end">
                                        </div>
                                        <br class="clear" />
                                    </div>
                                </td>
                                <td style="width: 6px;">
                                </td>--%>
                                <td>
                                    <div class="<%=CurrentNavIndex == 4 ? "opernav_curr" : (CurrentNavIndex > 4 ? "opernav_prev" : "opernav_next") %>">
                                        <div class="opernav_start">
                                            3
                                        </div>
                                        <div class="opernav_split">
                                        </div>
                                        <div class="opernav_content">
                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Step04" OnClick="btnStepSwitchOver_Click"
                                                Text="确认订单"></asp:LinkButton>
                                        </div>
                                        <div class="opernav_end">
                                        </div>
                                        <br class="clear" />
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="margin-top: 10px;" id="Step01" runat="server">
                        <table cellpadding="0" cellspacing="0" border="0" style="padding-left: 100px;">
                            <tr>
                                <td colspan="3">
                                    <table cellpadding="0" cellspacing="0" border="0">
                                        <tr style="background-image: url(images/index_28.gif); height: 49px;">
                                            <td style="width: 11px;">
                                            </td>
                                            <td id="tab_short_rent" class="tab_selected">
                                                <a href="#" onclick="switch_rant_tab('short_rent')">短租（1-89天） </a>
                                            </td>
                                            <td id="tab_long_rent" class="tab_noselected">
                                            </td>
                                            <td style="width: 9px;">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 4px; background-image: url(images/index_34.gif)">
                                </td>
                                <td>
                                    <%--短租--%>
                                    <table id="short_rent" cellpadding="0" cellspacing="0" border="0">
                                        <tr>
                                            <td style="width: 322px; height: 300px; vertical-align: top;">
                                                <asp:UpdatePanel runat="server">
                                                    <contenttemplate>
                                                        <table class="short_rent">
                                                            <tr style="height:20px;">
                                                                <td style="width: 100px;"></td>
                                                                <td style="width:120px;"></td>
                                                                <td style="width:90px;"></td>
                                                            </tr>
                                                            <tr style="height:36px;">
                                                                <td class="right_justifying rent_title">
                                                                    取车城市
                                                                </td>
                                                                <td class="left_justifying paddingleft_10">
                                                                    <asp:DropDownList ID="ddlShortRentTakeCity" runat="server" 
                                                                        AppendDataBoundItems="True" DataTextField="City" DataValueField="City" 
                                                                        AutoPostBack="True" >
                                                                        <asp:ListItem Text="--请选择--" Value=""></asp:ListItem>
                                                                    </asp:DropDownList>
                                                                    <asp:Label runat="server" ID="lblShortRentTakeCity"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:CheckBox ID="cbIsSend" runat="server" Text="送车上门" />
                                                                </td>
                                                            </tr>
                                                            <tr style="height:36px;">
                                                                <td class="right_justifying rent_title">
                                                                    取车门店
                                                                </td>
                                                                <td class="left_justifying paddingleft_10">
                                                                    <asp:DropDownList ID="ddlTakeStore" runat="server" DataTextField="Name" DataValueField="Name">
                                                                    </asp:DropDownList>
                                                                    <asp:Label runat="server" ID="lblTakeStore"></asp:Label>
                                                                </td>
                                                                <td>
                                                                </td>
                                                            </tr>
                                                            <tr style="height:36px;">
                                                                <td>
                                                                </td>
                                                                <td class="left_justifying paddingleft_10">
                                                                    <asp:CheckBox ID="cbIsEqualStore" runat="server" Text="同一个门店还车" Checked="True" />
                                                                </td>
                                                                <td>
                                                                </td>
                                                            </tr>
                                                            <tr style="height:36px;">
                                                                <td class="right_justifying rent_title">
                                                                    取车时间
                                                                </td>
                                                                <td class="left_justifying paddingleft_10" colspan="2">
                                                                    <asp:TextBox ID="txtTakeTime" runat="server" ClientIDMode="Static" Width="120" CssClass="Wdate" onfocus="WdatePicker({maxDate:'#F{$dp.$D(\'txtReturnTime\')}'})"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr style="height:36px;">
                                                                <td class="right_justifying rent_title">
                                                                    还车时间
                                                                </td>
                                                                <td class="left_justifying paddingleft_10" colspan="2">
                                                                    <asp:TextBox ID="txtReturnTime" runat="server" ClientIDMode="Static" Width="120" CssClass="Wdate" onfocus="WdatePicker({minDate:'#F{$dp.$D(\'txtTakeTime\')}'})"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </contenttemplate>
                                                </asp:UpdatePanel>
                                                <div style="padding-top: 30px;">
                                                    <asp:LinkButton runat="server" CssClass="btn" ID="lbnShortRent" OnClick="lbnShortRent_Click">
                                                            <div>
                                                                去选车
                                                            </div>
                                                    </asp:LinkButton>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <img src="images/index_45.gif" width="322" height="79" alt="">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="background-image: url(images/index_36.gif); width: 4px;">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <img src="images/index_48.gif" width="330" height="18" alt="">
                                </td>
                            </tr>
                        </table>
                    </div>
                    <%--<div style="margin-top: 10px; border: solid 1px #A4C1CD; padding: 10px;">
                        <div>
                            <dl class="dlSearch">
                                <dt>级别： </dt>
                                <dd>
                                    <div class="all">
                                        全部
                                    </div>
                                    <div class="text">
                                        什么车
                                    </div>
                                    <div class="text">
                                        A车
                                    </div>
                                    <div class="text">
                                        B车
                                    </div>
                                    <div class="text">
                                        C车
                                    </div>
                                    <div class="text">
                                        D车
                                    </div>
                                    <div class="selected">
                                        E车
                                    </div>
                                    <div class="text">
                                        F车
                                    </div>
                                    <div class="text">
                                        A车
                                    </div>
                                    <div class="text">
                                        B车
                                    </div>
                                    <div class="text">
                                        C车
                                    </div>
                                    <div class="text">
                                        D车
                                    </div>
                                    <div class="text">
                                        C车
                                    </div>
                                    <div class="text">
                                        D车
                                    </div>
                                    <div class="text">
                                        E车
                                    </div>
                                    <div class="text">
                                        E车
                                    </div>
                                    <div class="text">
                                        F车
                                    </div>
                                    <div class="text">
                                        D车
                                    </div>
                                    <div class="text">
                                        E车
                                    </div>
                                    <div class="text">
                                        F车
                                    </div>
                                    <div class="text">
                                        A车
                                    </div>
                                    <div class="text">
                                        B车
                                    </div>
                                    <div class="text">
                                        C车
                                    </div>
                                    <div class="text">
                                        D车
                                    </div>
                                    <div class="text">
                                        E车
                                    </div>
                                    <div class="text">
                                        F车
                                    </div>
                                </dd>
                            </dl>
                            <div class="clear">
                            </div>
                        </div>
                        <div>
                            <dl class="dlSearch">
                                <dt>品牌： </dt>
                                <dd>
                                    <div class="all">
                                        全部
                                    </div>
                                    <div class="text">
                                        什么车
                                    </div>
                                    <div class="text">
                                        A车
                                    </div>
                                    <div class="text">
                                        B车
                                    </div>
                                    <div class="text">
                                        C车
                                    </div>
                                    <div class="text">
                                        D车
                                    </div>
                                    <div class="text">
                                        E车
                                    </div>
                                    <div class="text">
                                        F车
                                    </div>
                                    <div class="text">
                                        A车
                                    </div>
                                    <div class="text">
                                        B车
                                    </div>
                                    <div class="selected">
                                        C车
                                    </div>
                                    <div class="text">
                                        D车
                                    </div>
                                    <div class="text">
                                        C车
                                    </div>
                                    <div class="text">
                                        D车
                                    </div>
                                    <div class="text">
                                        E车
                                    </div>
                                    <div class="text">
                                        E车
                                    </div>
                                    <div class="text">
                                        F车
                                    </div>
                                    <div class="text">
                                        D车
                                    </div>
                                    <div class="text">
                                        E车
                                    </div>
                                    <div class="text">
                                        F车
                                    </div>
                                    <div class="text">
                                        A车
                                    </div>
                                    <div class="text">
                                        B车
                                    </div>
                                    <div class="text">
                                        C车
                                    </div>
                                    <div class="text">
                                        D车
                                    </div>
                                    <div class="text">
                                        E车
                                    </div>
                                    <div class="text">
                                        F车
                                    </div>
                                </dd>
                            </dl>
                            <div class="clear">
                            </div>
                        </div>
                        <div>
                            <dl class="dlSearch">
                                <dt>租金： </dt>
                                <dd>
                                    <div class="all">
                                        全部
                                    </div>
                                    <div class="text">
                                        什么车
                                    </div>
                                    <div class="text">
                                        A车
                                    </div>
                                    <div class="text">
                                        B车
                                    </div>
                                    <div class="text">
                                        C车
                                    </div>
                                    <div class="text">
                                        D车
                                    </div>
                                    <div class="text">
                                        E车
                                    </div>
                                    <div class="text">
                                        F车
                                    </div>
                                    <div class="text">
                                        A车
                                    </div>
                                    <div class="text">
                                        B车
                                    </div>
                                    <div class="text">
                                        C车
                                    </div>
                                    <div class="text">
                                        D车
                                    </div>
                                    <div class="text">
                                        C车
                                    </div>
                                    <div class="selected">
                                        D车
                                    </div>
                                    <div class="text">
                                        E车
                                    </div>
                                    <div class="text">
                                        E车
                                    </div>
                                    <div class="text">
                                        F车
                                    </div>
                                    <div class="text">
                                        D车
                                    </div>
                                    <div class="text">
                                        E车
                                    </div>
                                    <div class="text">
                                        F车
                                    </div>
                                    <div class="text">
                                        A车
                                    </div>
                                    <div class="text">
                                        B车
                                    </div>
                                    <div class="text">
                                        C车
                                    </div>
                                    <div class="text">
                                        D车
                                    </div>
                                    <div class="text">
                                        E车
                                    </div>
                                    <div class="text">
                                        F车
                                    </div>
                                </dd>
                            </dl>
                            <div class="clear">
                            </div>
                        </div>
                    </div>--%>
                    <div style="margin-top: 10px;" id="Step02" runat="server" visible="False">
                        <table class="tbSelectCar" cellpadding="0" cellspacing="0" border="0">
                            <tr class="title">
                                <td class="tabstart">
                                </td>
                                <td class="full">
                                </td>
                                <td class="full">
                                </td>
                                <td class="full">
                                </td>
                                <td class="end">
                                </td>
                            </tr>
                            <tr>
                                <td class="content" colspan="5">
                                    <table style="width: 100%;">
                                        <asp:Repeater runat="server" ID="repCarList" DataSourceID="dsCarList" 
                                            onitemcommand="repCarList_ItemCommand">
                                            <ItemTemplate>
                                                <tr>
                                                    <td class="tdleft">
                                                        <img src="<%#this.ResolveUrl(string.Format("~/images/CarImage/{0}.jpg",Eval("Id"))) %>"
                                                            width="120" height="102" alt="">
                                                    </td>
                                                    <td class="tdcenter">
                                                        <div class="carname">
                                                            <%#Eval("CarName") %>
                                                        </div>
                                                        <div>
                                                            <%#Eval("CarModel") %>
                                                        </div>
                                                        <div>
                                                            基本险：<%#Eval("BasicInsure") %></div>
                                                        <div>
                                                            预授权：
                                                            <%#Eval("PreAuthorization") %>
                                                        </div>
                                                    </td>
                                                    <td class="tdcenter" style="text-align: right;">
                                                        <div>
                                                            日均 <span class="price">
                                                                <%#Eval("Price") %></span>元
                                                        </div>
                                                        <div>
                                                            总租金
                                                            <%#CalculateTotalRent(Convert.ToDecimal(Eval("Price"))) %>元</div>
                                                        <div>
                                                            不限里程</div>
                                                    </td>
                                                    <td class="tdright">
                                                        <asp:LinkButton runat="server" CssClass="btn" CommandName="order" CommandArgument='<%#Eval("Id") %>'>
                                                        <div>
                                                            预订</div></asp:LinkButton>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                            <SeparatorTemplate>
                                                <tr>
                                                    <td colspan="4">
                                                        <div class="divSplit">
                                                        </div>
                                                    </td>
                                                </tr>
                                            </SeparatorTemplate>
                                        </asp:Repeater>
                                    </table>
                                </td>
                            </tr>
                            <%--                            <tr>
                                <td colspan="5" class="footer">
                                    <div class="btnMoreCar">
                                        更多车型
                                    </div>
                                </td>
                            </tr>--%>
                        </table>
                        <asp:SqlDataSource runat="server" ID="dsCarList" ConnectionString="<%$ ConnectionStrings:DefaultDB %>"
                            SelectCommand="
                        SELECT t.ID,t.ShopId,t.CarTypeId,t.CarName,t.CarModel,t.BasicInsure,t.PreAuthorization,t.Price,t.IsMileage,t.Describe,t.Remark,
	                        t.CarNum,t.CarNum - sum(CASE WHEN(ISNULL(t2.Id,'1') = '1') THEN 0 ELSE 1 END) AS RemainNum
                        FROM dbo.Car t
	                        LEFT JOIN dbo.OrderDetails t2 ON t.ID = t2.CarId AND (t2.Status = 0 OR t2.Status = 1)
                        GROUP BY t.ID,t.ShopId,t.CarTypeId,t.CarName,t.CarModel,t.BasicInsure,t.PreAuthorization,t.Price,t.IsMileage,t.CarNum,t.Describe,t.Remark
                        ORDER BY t.CarName

                        "></asp:SqlDataSource>
                    </div>
                    <%--                    <div style="margin-top: 10px;">
                        <table class="tbSelectCar" cellpadding="0" cellspacing="0" border="0">
                            <tr class="title">
                                <td class="tabstart">
                                </td>
                                <td class="tabcenter">
                                    手动紧凑型轿车
                                </td>
                                <td class="tabend">
                                </td>
                                <td class="full">
                                </td>
                                <td class="end">
                                </td>
                            </tr>
                            <tr>
                                <td class="content" colspan="5">
                                    <table style="width: 100%;">
                                        <tr>
                                            <td class="tdleft">
                                                <img src="images/shortRent_39.gif" width="120" height="102" alt="">
                                            </td>
                                            <td class="tdcenter">
                                                <div class="carname">
                                                    雪铁龙爱丽舍
                                                </div>
                                                <div>
                                                    三厢/1.6自动
                                                </div>
                                                <div>
                                                    基本险：40元/天</div>
                                                <div>
                                                    预授权：300元起</div>
                                            </td>
                                            <td class="tdcenter" style="text-align: right;">
                                                <div>
                                                    日均 <span class="price">20</span>元
                                                </div>
                                                <div>
                                                    总租金100元</div>
                                                <div>
                                                    不限里程</div>
                                            </td>
                                            <td class="tdright">
                                                <div class="btnChangeShop">
                                                    换门店</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="4">
                                                <div class="divSplit">
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="tdleft">
                                                <img src="images/shortRent_39.gif" width="120" height="102" alt="">
                                            </td>
                                            <td class="tdcenter">
                                                <div class="carname">
                                                    雪铁龙爱丽舍
                                                </div>
                                                <div>
                                                    三厢/1.6自动
                                                </div>
                                                <div>
                                                    基本险：40元/天</div>
                                                <div>
                                                    预授权：300元起</div>
                                            </td>
                                            <td class="tdcenter" style="text-align: right;">
                                                <div>
                                                    日均 <span class="price">20</span>元
                                                </div>
                                                <div>
                                                    总租金100元</div>
                                                <div>
                                                    不限里程</div>
                                            </td>
                                            <td class="tdright">
                                                <div class="btnOrder">
                                                    预订</div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="margin-top: 10px;">
                        <table class="tbSelectCar" cellpadding="0" cellspacing="0" border="0">
                            <tr class="title">
                                <td class="tabstart">
                                </td>
                                <td class="tabcenter">
                                    手动紧凑型轿车
                                </td>
                                <td class="tabend">
                                </td>
                                <td class="full">
                                </td>
                                <td class="end">
                                </td>
                            </tr>
                            <tr>
                                <td class="content" colspan="5">
                                    <table style="width: 100%;">
                                        <tr>
                                            <td class="tdleft">
                                                <img src="images/shortRent_39.gif" width="120" height="102" alt="">
                                            </td>
                                            <td class="tdcenter">
                                                <div class="carname">
                                                    雪铁龙爱丽舍
                                                </div>
                                                <div>
                                                    三厢/1.6自动
                                                </div>
                                                <div>
                                                    基本险：40元/天</div>
                                                <div>
                                                    预授权：300元起</div>
                                            </td>
                                            <td class="tdcenter" style="text-align: right;">
                                                <div>
                                                    日均 <span class="price">20</span>元
                                                </div>
                                                <div>
                                                    总租金100元</div>
                                                <div>
                                                    不限里程</div>
                                            </td>
                                            <td class="tdright">
                                                <div class="btnChangeShop">
                                                    换门店</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="4">
                                                <div class="divSplit">
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="tdleft">
                                                <img src="images/shortRent_39.gif" width="120" height="102" alt="">
                                            </td>
                                            <td class="tdcenter">
                                                <div class="carname">
                                                    雪铁龙爱丽舍
                                                </div>
                                                <div>
                                                    三厢/1.6自动
                                                </div>
                                                <div>
                                                    基本险：40元/天</div>
                                                <div>
                                                    预授权：300元起</div>
                                            </td>
                                            <td class="tdcenter" style="text-align: right;">
                                                <div>
                                                    日均 <span class="price">20</span>元
                                                </div>
                                                <div>
                                                    总租金100元</div>
                                                <div>
                                                    不限里程</div>
                                            </td>
                                            <td class="tdright">
                                                <div class="btnOrder">
                                                    预订</div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>--%>
                    <div style="margin-top: 10px;" id="Step04" runat="server" Visible="False">
                        <table cellpadding="1" cellspacing="0" border="0" class="tbOrder">
                            <tr>
                                <td class="tdItem tdItemTop cation">
                                    租车费用清单
                                </td>
                            </tr>
                            <tr>
                                <td class="tdItem title">
                                    基本信息
                                </td>
                            </tr>
                            <tr>
                                <td class="tdItem">
                                    <table cellpadding="0" cellspacing="0" border="0" style="width: 90%" class="center">
                                        <tr>
                                            <td style="width: 50%;font-weight: bold;">
                                                合员信息
                                            </td>
                                            <td style="width: 50%;font-weight: bold;">
                                                车辆信息
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                姓名：<asp:Label ID="lblMemberName4" runat="server"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblCarInfo4" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="font-weight: bold;">
                                                取车信息
                                            </td>
                                            <td style="font-weight: bold;">
                                                还车信息
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                时间：<asp:Label ID="lbltakeTime4" runat="server"></asp:Label>
                                            </td>
                                            <td>
                                                时间：<asp:Label ID="lblReturnTime4" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                地点：<asp:Label ID="lblTakeAddr4" runat="server"></asp:Label>
                                            </td>
                                            <td>
                                                地点：<asp:Label ID="lblReturmAddr4" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="tdItem  title">
                                    订单费用
                                </td>
                            </tr>
                            <tr>
                                <td class="tdItem">
                                    <table cellpadding="0" cellspacing="0" border="0" class="center" style="width: 90%;">
                                        <tr>
                                            <td style="width:40%;">
                                                1.车辆租金
                                            </td>
                                            <td style="width:40%;">
                                                租期<br />
                                                总租金
                                            </td>
                                            <td>
                                                <asp:Label runat="server" ID="lblRentCycleDays4"></asp:Label>
                                                <br />
                                                <asp:Label runat="server" ID="lblTotalRentMoney4"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3">
                                                <div class="split">
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                2.保险服务
                                            </td>
                                            <td>
                                                基本保险
                                            </td>
                                            <td>
                                                40元×
                                                <asp:Label ID="lblTakeDays4" runat="server" Text=""></asp:Label>
                                                =<asp:Label ID="lblInsureMoney" runat="server" Text=""></asp:Label>元</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="tdItem">
                                    <table style="width: 90%" class="center">
                                        <tr>
                                            <td>
                                                1、本订单仅为客户租车预约登记，提交该订单后，客户需到门店办理<br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;具体租车手续，具体权利义务以签署的书面合同为准。<br />
                                                2、提交前请认真阅读<a href="http://help.zuche.com/fwgz/info5.html" target="_blank">租车规则</a>。
                                            </td>
                                            <td style="width: 30%">
                                                <span style="font-size:14px;font-weight:bold;">
                                                    应收总额：
                                                </span>
                                                <asp:Label runat="server" ID="lblTotalMoney4" CssClass="price">338</asp:Label>
                                                <span style="font-size:14px;font-weight:bold;">
                                                    元
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="height:60px;vertical-align: middle;">
                                                <asp:LinkButton runat="server" ID="lbnSubmitOrder" CssClass="btn" OnClientClick="return IsLogin();"
                                                    onclick="lbnSubmitOrder_Click">
                                                    
                                                <div>
                                                    提交订单</div>
                                                </asp:LinkButton>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table> 
                    </div> 
                </td>
                <td id="splitPanel" style="width: 20px;">
                </td>
                <td id="rightContainer" style="width: 230px; vertical-align: top;">
                    <div class="rightHelp">
                        <div class="rightHelpTitle">
                            订单信息
                        </div>
                        <div class="rightHelpContent">
                            <table class="table">
                                <tr>
                                    <th>
                                        取车时间：
                                    </th>
                                    <td>
                                        <asp:Literal runat="server" ID="ltlTakeTime"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        取车门店：
                                    </th>
                                    <td>
                                        <asp:Literal runat="server" ID="ltlTakeStore"></asp:Literal>
                                    </td>
                                </tr>
                                <tr style="height: 20px;">
                                    <td colspan="2">
                                    </td>
                                </tr>
                                <%--                                <tr>
                                    <td colspan="2">
                                        <span class="text">海珠区前进路65号金谷潮流购物广场A128商铺（近糖果KTV）</span>
                                        
                                    </td>
                                </tr>--%>
                            </table>
                        </div>
                    </div>
                    <div class="rightHelp">
                        <div class="rightHelpTitle">
                            状态说明
                        </div>
                        <div class="rightHelpContent">
                            <div class="btnOrder" style="float: left;">
                                预订</div>
                            <span class="text">可以正常预订</span>
                            <div class="clear">
                            </div>
                        </div>
                    </div>
                    <div class="rightHelp">
                        <div class="rightHelpTitle">
                            租车小贴士
                        </div>
                        <div class="rightHelpContent">
                            <span class="text">车型租金会随预订情况实时更新，越早预订越划算。</span>
                        </div>
                        <div class="rightHelpContent">
                            <span class="text">建议您先登录/注册，可以挑选合适的车型和获取更多活动信息。</span>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
