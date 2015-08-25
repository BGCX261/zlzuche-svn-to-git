<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="CarService.aspx.cs" Inherits="ZLzuche.com.CarService" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
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
        
        
        /*文章描述样式*/
        .ent_content
        {
            color: #3d3e3a;
            line-height: 22px;
            font-family: "宋体" ,Simsun;
            font-size: 12px;
            margin-top: -5px;
        }
    </style>
    <script type="text/javascript" language="javascript">
        function fun(key) {
            var array = [];
            array.push("#middle,#imgMiddle");
            array.push("#country,#imgCountry");
            array.push("#gov,#imgGov");
            array.push("#slu,#imgSlu");
            array.push("#ys,#imgYs");
            array.push("#suc,#imgSuc");
            array.push("#com,#imgCom");
            $(array).each(function (i) {
                var elId = String(this);
                if (String(i) == key) {
                    $(elId).show();
                } else {
                    $(elId).hide();
                }
            });
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div  style="padding-top: 10px;" class="center_container">
        <table cellpadding="0" cellspacing="0" border="0" class="center" style="width: 980px;">
            <tr>
                <td id="leftSearch" style="width: 270px; vertical-align: top;">
                    <ul id="menu">
                        <li><a href="javascript:" onclick="fun(0);">中小企业解决方案</a></li>
                        <li><a href="javascript:" onclick="fun(1);">全国性企业解决方案</a> </li>
                        <li><a href="javascript:" onclick="fun(2);">政府部门解决方案</a> </li>
                        <li><a href="javascript:" onclick="fun(3);">行业用户解决方案</a> </li>
                        <li><a href="javascript:" onclick="fun(4);">我们的优势</a> </li>
                        <li><a href="javascript:" onclick="fun(5);">成功案例</a> </li>
                        <li><a href="javascript:" onclick="fun(6);">联系我们</a> </li>
                    </ul>
                </td>
                <td id="splitPanel" style="width: 10px;">
                </td>
                <td id="rightContent">
                    <img id="imgMiddle" src="<%=this.ResolveUrl("~/images/CarService/ent_small.jpg") %>"
                        alt="" />
                    <div id="middle" style="margin-top: 17px; margin-right: 17px; margin-bottom: 17px;
                        text-align: left;">
                        <p class="ent_content">
                            <strong>1.需求分析</strong>
                            <br />
                            <span style="padding-left: 60px;">异地差旅：出租车费用高，公交车效率低； </span>
                            <br />
                            <span style="padding-left: 60px;">本地需求：商务接待、会议需要临时大量用车，对特殊车型（如GL8）有需求；</span>
                            <br />
                            <span style="padding-left: 60px;">日常用车：一次性采购现金流压力大，汽车销售企业及银行不对中小企业买车提供贷款。</span>
                            <br />
                            <strong>2. 解决方案</strong>
                            <br />
                            <span style="padding-left: 44px;">1）短 租：全国范围短租服务，费用低，效率高； </span>
                            <br />
                            <span style="padding-left: 123px;">统一账号管理，统一结算，实现差旅费用全程监控； </span>
                            <br />
                            <span style="padding-left: 123px;">享受短租企业帐号折扣，降低差旅交通费用； </span>
                            <br />
                            <span style="padding-left: 123px;">70余款车型，满足不同商务场合的用车需求。 </span>
                            <br />
                            <span style="padding-left: 44px;">2）长 租：无需增加固定资产，便可轻松用车； </span>
                            <br />
                            <span style="padding-left: 123px;">定期更换新车，安全、可靠； </span>
                            <br />
                            <span style="padding-left: 123px;">事故救援、保险理赔、车辆维护、年检年审等一切琐碎事务由我们承担，车辆管理不再麻烦。 </span>
                            <br />
                            <span style="padding-left: 44px;">3）融资租赁：以租代购，轻松拥有，节约企业宝贵的现金流； </span>
                            <br />
                            <span style="padding-left: 123px;">收购旧车，再以融资租赁的方式返租，轻松实现车改和融资； </span>
                            <br />
                            <span style="padding-left: 123px;">手续办理，方便、灵活。 </span>
                            <br />
                            <strong>3. 优 点 </strong>
                            <br />
                            <span style="padding-left: 44px;">• 节省费用 • 提高效率 • 税务筹划 • 盘活资金 </span>
                        </p>
                    </div>
                    <img id="imgCountry" src="<%=this.ResolveUrl("~/images/CarService/ent_qg.jpg") %>"
                        alt="" style="display: none;" />
                    <div id="country" style="margin-top: 17px; margin-right: 17px; margin-bottom: 17px;
                        text-align: left; display: none;">
                        <p class="ent_content">
                            <strong>1.需求分析</strong>
                            <br />
                            <span style="padding-left: 60px;">异地差旅管控难； </span>
                            <br />
                            <span style="padding-left: 60px;">供应商多，服务能力参差不齐，服务品质无保障；</span>
                            <br />
                            <span style="padding-left: 60px;">分支机构各地采购，采购及管理成本高。 </span>
                            <br />
                            <strong>2. 解决方案</strong>
                            <br />
                            <span style="padding-left: 44px;">1）短 租：全国范围短租服务，费用低，效率高； </span>
                            <br />
                            <span style="padding-left: 123px;">统一账号管理，统一结算，实现差旅费用全程监控； </span>
                            <br />
                            <span style="padding-left: 123px;">享受短租企业帐号折扣，降低差旅交通费用； </span>
                            <br />
                            <span style="padding-left: 123px;">70余款车型，满足不同商务场合的用车需求。 </span>
                            <br />
                            <span style="padding-left: 44px;">2）长 租：无需增加固定资产，便可轻松用车； </span>
                            <br />
                            <span style="padding-left: 123px;">定期更换新车，安全、可靠； </span>
                            <br />
                            <span style="padding-left: 123px;">事故救援、保险理赔、车辆维护、年检年审等一切琐碎事务由我们承担，车辆管理不再麻烦。 </span>
                            <br />
                            <span style="padding-left: 44px;">3）融资租赁：以租代购，轻松拥有，节约企业宝贵的现金流； </span>
                            <br />
                            <span style="padding-left: 123px;">收购旧车，再以融资租赁的方式返租，轻松实现车改和融资； </span>
                            <br />
                            <span style="padding-left: 123px;">手续办理，方便、灵活。 </span>
                            <br />
                            <strong>3. 优 点 </strong>
                            <br />
                            <span style="padding-left: 44px;">• 节省费用 • 提高效率 • 税务筹划 • 盘活资金 </span>
                        </p>
                    </div>
                    <img id="imgGov" src="<%=this.ResolveUrl("~/images/CarService/ent_gov.jpg") %>" alt=""
                        style="display: none;" />
                    <div id="gov" style="margin-top: 17px; margin-right: 17px; margin-bottom: 17px; text-align: left;
                        display: none;">
                        <p class="ent_content">
                            <strong>1.需求分析</strong>
                            <br />
                            <span style="padding-left: 60px;">增加固定资产程序复杂； </span>
                            <br />
                            <span style="padding-left: 60px;">车辆、司机不好管，安全责任大；</span>
                            <br />
                            <span style="padding-left: 60px;">车改在即，现有车辆资产如何处理？未来用车需求如何解决？ </span>
                            <br />
                            <strong>2. 解决方案</strong>
                            <br />
                            <span style="padding-left: 44px;">1）短 租：全国范围短租服务，费用低，效率高； </span>
                            <br />
                            <span style="padding-left: 123px;">统一账号管理，统一结算，实现差旅费用全程监控； </span>
                            <br />
                            <span style="padding-left: 123px;">享受短租企业帐号折扣，降低差旅交通费用； </span>
                            <br />
                            <span style="padding-left: 123px;">70余款车型，满足不同商务场合的用车需求。 </span>
                            <br />
                            <span style="padding-left: 44px;">2）长 租：无需增加固定资产，便可轻松用车； </span>
                            <br />
                            <span style="padding-left: 123px;">定期更换新车，安全、可靠； </span>
                            <br />
                            <span style="padding-left: 123px;">事故救援、保险理赔、车辆维护、年检年审等一切琐碎事务由我们承担，车辆管理不再麻烦。 </span>
                            <br />
                            <span style="padding-left: 44px;">3）融资租赁：以租代购，轻松拥有，节约企业宝贵的现金流； </span>
                            <br />
                            <span style="padding-left: 123px;">收购旧车，再以融资租赁的方式返租，轻松实现车改和融资； </span>
                            <br />
                            <span style="padding-left: 123px;">手续办理，方便、灵活。 </span>
                            <br />
                            <strong>3. 优 点 </strong>
                            <br />
                            <span style="padding-left: 44px;">• 节省费用 • 提高效率 • 税务筹划 • 盘活资金 </span>
                        </p>
                    </div>
                    <img id="imgSlu" src="<%=this.ResolveUrl("~/images/CarService/ent_slu.jpg") %>" alt=""
                        style="display: none;" />
                    <div id="slu" style="margin-top: 17px; margin-right: 17px; margin-bottom: 17px; text-align: left;
                        display: none;">
                        <p class="ent_content">
                            <strong>1. 汽车厂商及其经销商</strong>
                            <br />
                            <span style="padding-left: 44px;">1）需求分析：多数品牌有开展体验式营销的愿望 </span>
                            <br />
                            <span style="padding-left: 123px;">购车前，客户有深度试驾体验需求 </span>
                            <br />
                            <span style="padding-left: 123px;">车辆维修期间，客户有代步车需求 </span>
                            <br />
                            <span style="padding-left: 44px;">2）解决方案： </span>
                            <br />
                            <span style="padding-left: 123px;">• 试驾服务 </span>
                            <br />
                            <span style="padding-left: 186px;">汽车厂商可以通过神州租车为有购车意向客户提供短期试驾体验服务，开展体验式营销。</span>
                            <br />
                            <span style="padding-left: 123px;">• 代步车服务 </span>
                            <br />
                            <span style="padding-left: 186px;">汽车厂商可以通过神州租车为质保维修的客户提供免费的代步车服务，提升品牌美誉度； </span>
                            <br />
                            <span style="padding-left: 186px;">经销商可以通过神州租车为维修车辆的客户提供免费或者分摊付费的维修代步车，提高 客户忠诚度。
                            </span>
                            <br />
                            <strong>2. 保险公司 </strong><span style="padding-left: 44px;">1）需求分析： </span>
                            <br />
                            <span style="padding-left: 123px;">• 车辆保险产品一年买一次，客户关系维系的好坏会很大程度影响客户续保； </span>
                            <br />
                            <span style="padding-left: 123px;">• 保险客户车辆出险维修时，有代步车需求。</span>
                            <br />
                            <span style="padding-left: 44px;">2）解决方案： </span>
                            <br />
                            <span style="padding-left: 123px;">• 保险公司可以通过神州租车为出险维修车辆的客户提供维修代步车，提高客户满意度。</span>
                            <br />
                        </p>
                    </div>
                    <img id="imgYs" src="<%=this.ResolveUrl("~/images/CarService/ent_ys.jpg") %>" alt=""
                        style="display: none;" />
                    <div id="ys" style="margin-top: 17px; margin-right: 17px; margin-bottom: 17px; text-align: left;
                        display: none;">
                        <p class="ent_content">
                            <strong>全国化网络 </strong>
                            <br />
                            <span>我们的服务网络覆盖全国66个城市，是目前中国唯一一家覆盖中国大陆全部省份的汽车租赁公司。近700个服务网点遍布全国主要机场、火车站、住宅区、商业圈及旅游景点，为企业及个人客户提供便捷的租车服务。
                            </span>
                            <br />
                            <br />
                            <br />
                            <strong>完善的产品 </strong>
                            <br />
                            <span>我们为客户提供短租、长租及融资租赁三大产品。我们的短租服务为客户提供超过70款车型选择，其中包括不同级别的轿车、SUV和MPV，可以满足客户不同场合的商务及休闲需求。客户还可根据自己的需求，购买不同的可选服务，如GPS导航、儿童安全座椅、异地还车等。
                            </span>
                            <br />
                            <br />
                            <br />
                            <strong>24小时服务 </strong>
                            <br />
                            <span>我们是中国唯一一家在全国66个城市、52个机场及41个火车站提供24小时预订、取还车等全套租车服务的汽车租赁公司。此外，我们还为客户提供24小时的道路救援和咨询投诉等相关客户服务。
                            </span>
                        </p>
                    </div>
                    <img id="imgSuc" src="<%=this.ResolveUrl("~/images/CarService/ent_suc_1.jpg") %>"
                        alt="" style="display: none;" />
                    <div id="suc" style="margin-top: 17px; margin-right: 17px; margin-bottom: 17px; text-align: left;
                        display: none;">
                        <p class="ent_content">
                        </p>
                    </div>
                    <img id="imgCon" src="<%=this.ResolveUrl("~/images/CarService/ent_con.jpg") %>" alt=""
                        style="display: none;" />
                    <div id="con" style="margin-top: 17px; margin-right: 17px; margin-bottom: 17px; text-align: left;
                        display: none;">
                        <p class="ent_content">
                            <span>如果您希望进一步了解神州租车企业服务的相关信息，或愿意选择我们来为您的企业提供服务，请通过以下方式联系我们，我们将会由资深的客户经理为您提供专业的服务。</span>
                            <br />
                            <br />
                            <br />
                            <strong>地 址：</strong> <span>北京市朝阳区望京中环南路甲2号佳境天城大厦2层</span>
                            <br />
                            <strong>邮 编：</strong> <span>100102 </span>
                            <br />
                            <strong>电 话：</strong> <span>400 616 6666</span>
                            <br />
                            <strong>传 真：</strong> <span>010-58209966</span>
                            <br />
                            <strong>电子邮箱：</strong> <span>sales@zuche.com</span>
                            <br />
                        </p>
                    </div>
                    <div style="height: 10px;">
                    </div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
