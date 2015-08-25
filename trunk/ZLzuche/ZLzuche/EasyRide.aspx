<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="EasyRide.aspx.cs" Inherits="ZLzuche.com.EasyRide" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .leftContainer
        {
            vertical-align: top;
        }
        .splitPanel
        {
            width: 20px;
        }
        .rightContainer
        {
            width: 230px;
            vertical-align: top;
        }
        .rightContainer .window
        {
            margin-bottom: 10px;
            text-align: left;
        }
        .rightContainer .window .window-title, .rightContainer .window .window-content
        {
            border: solid 1px #A4C1CD;
        }
        .rightContainer .window .window-title
        {
            font-size: 14px;
            font-weight: bold;
            color: #357CAA;
            height: 26px;
            line-height: 26px;
            padding-left: 8px;
            text-align: left;
            background: #DFF6FE;
        }
        .rightContainer .window .window-content
        {
            border-top-style: none;
            padding: 10px;
        }
        .rightContainer .window .window-content .text
        {
            color: #555;
            padding: 4px 0;
            list-style-position: inside;
        }
        .separate
        {
            width: 100%;
            border-top: 1px dashed #ccc;
            height: 1px;
            line-height: 1px;
            margin: 4px 0;
        }
        
        
        .btnOrder
        {
            border: solid 1px #EFBD4E;
            background-color: #FEDF46;
            color: #793510;
            width: 44px;
            height: 20px;
            line-height: 20px;
            cursor: pointer;
            margin: auto;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="center_container" style="padding-top: 10px;">
        <table class="center" style="width: 976px;">
            <tr>
                <td class="leftContainer">
                    <div style="display: none;margin-bottom: 20px;">
                        <div style="background: url(images/longRent_02.gif) no-repeat -2px -2px; border: 1px solid #ccc;">
                            <div style="height: 28px; line-height: 24px; text-align: left; padding-left: 26px;
                                color: #fff; font-weight: bold;">
                                顺风车
                            </div>
                            <div style="padding-left: 20px; padding-right: 20px; text-align: left;">
                                <table style="width: 100%;">
                                    <tr style="height: 40px;">
                                        <td>
                                            取车城市
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            还车城市
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <div class="button">
                                                搜索</div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div style="border: solid 1px #ccc;">
                            <table style="width: 95%;" class="center">
                                <tr style="height:36px;line-height:36px;border-bottom:1px solid #ccc;font-weight:bold;">
                                   <td>
                                       出租门店
                                   </td> 
                                   <td>
                                       出租时间
                                   </td> 
                                   <td>
                                       租期
                                   </td> 
                                   <td>
                                       车型
                                   </td> 
                                   <td>
                                       价格
                                   </td> 
                                </tr>
                                <tr>
                                    <td colspan="5">
                                        <div class="split" style="width:100%;border-top:1px solid #cccccc;"></div>
                                    </td>
                                </tr>
                                <asp:Repeater runat="server" DataSourceID="dsXFStation">
                                    <ItemTemplate>
                                <tr style="height:32px;">
                                    <td>
                                        天河店
                                    </td>
                                    <td>
                                        <%#Eval("GetCarTime","{0:yyyy-MM-dd}") %>
                                    </td>
                                    <td>
                                        <%#Eval("HireDays","{0}天") %>
                                        <%#Eval("RentMonth","{0}月") %>
                                    </td>
                                    <td>
                                        <%#Eval("CarTypeName") %>
                                        <%#Eval("CarName") %>
                                    </td>
                                    <td>
                                        <%#Eval("Price","{0}元") %>
                                    </td>
                                </tr></ItemTemplate>
                                    <SeparatorTemplate>
                                        
                                <tr>
                                    <td colspan="5">
                                        <div class="separate">
                                        </div>
                                    </td>
                                </tr>
                                    </SeparatorTemplate>
                                </asp:Repeater>
                                        <asp:SqlDataSource runat="server" ID="dsXFStation" ConnectionString="<%$ ConnectionStrings:DefaultDB %>" SelectCommand="
                                        
	                                        SELECT t4.GetCarTime,t2.CarName,t3.CarTypeName,t4.HireDays,t4.RentMonth,t.Price
	                                        FROM dbo.OrderDetails t INNER JOIN Car t2 ON t.CarId = t2.ID 
		                                        INNER JOIN dbo.CarType t3 ON t2.CarTypeId = t3.ID
		                                        INNER JOIN dbo.Orders t4 ON t.OrderId = t4.ID
	                                        WHERE t.Status = 0 order by t.CreateTime desc"></asp:SqlDataSource>
                            </table>
                        </div>
                    </div>
                </td>
                <td class="splitPanel">
                </td>
                <td class="rightContainer">
                    <div class="window">
                        <div class="window-title">
                            顺风车规则
                        </div>
                        <div class="window-content">
                            <ol>
                                <li class="text">顺风车产品需在预订时预付全款，<br />
                                    预付后不能退改； </li>
                                <li class="text">顺风车产品，取还城市不能更改； </li>
                                <li class="text">限租期内，优惠后总金额含车辆<br />
                                    租金、基本保险费、手续费； </li>
                                <li class="text">如需可选服务，另外计费； </li>
                                <li class="text">超出限制里程，按1元/公里收取超<br />
                                    里程费； </li>
                                <li class="text">超出限制租期，需支付超时费：超<br />
                                    时4小时以内，按小时收取超时费，<br />
                                    每小时赠送20km里程；超时4小时以<br />
                                    上，按正常价格按天收取车辆租金、<br />
                                    基本保险及可选服务等费用，同时<br />
                                    赠送不限里程； </li>
                                <li class="text">取车或还车时间在21:00-次日8:00<br />
                                    之间，每次需支付50元夜间服务费； </li>
                                <li class="text">顺风车不与其他优惠活动同时享受。 </li>
                            </ol>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
