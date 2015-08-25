<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="HelpCenter.aspx.cs" Inherits="ZLzuche.com.HelpCenter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>帮助中心</title>
    <link href="'<%=this.ResolveUrl("~/Styles/CarServiceStyle.css") %>'" rel="stylesheet"
        type="text/css" />
    <style type="text/css">
        body
        {
            font: normal 11px verdana;
        }
        
        #leftSearch ul
        {
            list-style: none;
            width: 270px; /* Width of Menu Items */
            border-bottom: 1px solid #ccc;
        }
        
        /* Styles for Menu Items */
        #leftSearch ul li a
        {
            text-decoration: none;
            color: #777;
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
        
        .Rule_table1
        {
            margin-top: 0px;
            margin-right: auto;
            margin-bottom: 0px;
            margin-left: auto;
            border-collapse: collapse;
        }
        .Rule_table2
        {
            margin-top: 0px;
            margin-right: auto;
            margin-bottom: 0px;
            margin-left: auto;
            border-collapse: collapse;
        }
        #leftSearch #nav li
        {
            height: 28px;
            line-height: 28px;
            border: solid 1px #ccc;
        }
    </style>
    <script type="text/javascript" language="javascript">
        function GetRequest() {
            var url = location.search; //获取url中"?"符后的字串
            var theRequest = new Object();
            if (url.indexOf("?") != -1) {
                var str = url.substr(1);
                strs = str.split("&");
                for (var i = 0; i < strs.length; i++) {
                    theRequest[strs[i].split("=")[0]] = unescape(strs[i].split("=")[1]);
                }
            }
            return theRequest;
        }

        var Request = new Object();
        Request = GetRequest();

        function fun(key) {
            var type = '';
            if (key.trim() == "") {
                type = Request["type"].toString();
            }
            else {
                type = key;
            }
            var array = [];
            array.push("#fwsj,#fwsj");
            array.push("#dzcp,#dzcp");
            array.push("#dzck,#dzck");
            array.push("#zczg,#zczg");
            array.push("#fwyd,#fwyd");
            array.push("#qhcsm,#qhcsm");
            array.push("#bxzr,#bxzr");
            array.push("#lpsm,#lpsm");
            array.push("#sgcl,#sgcl");
            array.push("#jyjbyc,#jyjbyc");
            array.push("#jgsm,#jgsm");
            array.push("#zqjffs,#zqjffs");
            array.push("#jslc,#jslc");
            array.push("#czk,#czk");
            array.push("#hyzc,#hyzc");
            array.push("#hyxz,#hyxz");
            array.push("#xssl,#xssl");
            array.push("#cjwt,#cjwt");
            $(array).each(function (i) {
                var elId = String(this);
                if (String(i) == type) {
                    $(elId).show();
                } else {
                    $(elId).hide();
                }
            });
        }

        $(function () {
            type = Request["type"].toString();
            fun(type);
        }); 
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding-top: 10px;" class="center_container">
        <table cellpadding="0" cellspacing="0" border="0" class="center" style="width: 980px;">
            <tr>
                <td id="leftSearch" style="width: 270px; vertical-align: top;">
                    <ul id="nav">
                        <li><a href="javascript:" onclick="fun('0');">服务时间</a></li>
                        <li><a href="javascript:" onclick="fun('1');">短租产品</a> </li>
                        <li><a href="javascript:" onclick="fun('2');">待租车况</a> </li>
                        <li><a href="javascript:" onclick="fun('3');">租车资格</a> </li>
                        <li><a href="javascript:" onclick="fun('4');">服务预订</a> </li>
                        <li><a href="javascript:" onclick="fun('5');">取还车说明</a> </li>
                        <li><a href="javascript:" onclick="fun('6');">保险责任</a> </li>
                        <li><a href="javascript:" onclick="fun('7');">理赔说明</a></li>
                        <li><a href="javascript:" onclick="fun('8');">事故处理</a> </li>
                        <li><a href="javascript:" onclick="fun('9');">救援及备用车</a> </li>
                        <li><a href="javascript:" onclick="fun('10');">价格说明</a> </li>
                        <li><a href="javascript:" onclick="fun('11');">租期计费方式</a> </li>
                        <li><a href="javascript:" onclick="fun('12');">结算流程</a> </li>
                        <li><a href="javascript:" onclick="fun('13');">储值卡</a> </li>
                        <li><a href="javascript:" onclick="fun('14');">会员章程</a> </li>
                        <li><a href="javascript:" onclick="fun('15');">会员细则</a> </li>
                        <li><a href="javascript:" onclick="fun('16');">新手上路</a> </li>
                        <li><a href="javascript:" onclick="fun('17');">常见问题</a> </li>
                    </ul>
                </td>
                <td id="splitPanel" style="width: 10px;">
                </td>
                <td id="rightContent">
                    <!--服务时间-->
                    <div id="fwsj" style="margin-top: 17px; margin-right: 17px; margin-bottom: 17px;
                        text-align: left; display: none;">
                        <h1>
                            <font style="color: Orange;">服务时间</font></h1>
                        <br />
                        <br />
                        <p class="ent_content">
                            <strong>1.客服中心</strong>(0000-000000000)：7*24小时
                            <br />
                            <br />
                            <strong>2.门店</strong>
                            <br />
                            <span style="padding-left: 44px;">(1)机场店/市区24小时店：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7×24小时</span>
                            <br />
                            <span style="padding-left: 44px;">(2)市区非24小时店：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;08:00-21:00
                            </span>
                            <br />
                            <span style="padding-left: 44px;">(3)便捷店：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;09:00-19:00
                            </span>
                            <br />
                            <br />
                            <strong>3.服务点</strong>
                            <br />
                            <span style="padding-left: 44px;">(1)火车站/高铁站服务点：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;08:00-21:00</span>
                            <br />
                            <span style="padding-left: 44px;">(2)其他服务点：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;08:00-20:00</span>
                            <br />
                            <br />
                            <strong>4.送车上门/上门取车*：08:00-20:00</strong>
                            <br />
                            <span style="padding-left: 44px;">注：节假日期间，上门服务时间可能调整，敬请留意网站可预订时间</span>
                        </p>
                    </div>
                    <!--短租产品-->
                    <div id="dzcp" style="margin-top: 17px; margin-right: 17px; margin-bottom: 17px;
                        text-align: left; display: none;">
                        <h1>
                            <font style="color: Orange;">短租产品</font></h1>
                        <br />
                        <br />
                        <p class="ent_content">
                            <strong>产品类型</strong>
                            <br />
                            <span style="padding-left: 44px;">我们向您提供30天以下的短租服务，您可以视用车需求选择适合的产品：</span>
                            <br />
                            <table class="GridView center" style="border-collapse: collapse; width: 500px;">
                                <tr class="HeaderRow">
                                    <th width="127">
                                        项目
                                    </th>
                                    <th width="190">
                                        普通产品
                                    </th>
                                    <th width="183">
                                        <strong>周租/月租产品</strong>
                                    </th>
                                </tr>
                                <tr class="Row">
                                    <td width="127">
                                        车辆租金价格
                                    </td>
                                    <td width="190">
                                        正常价
                                    </td>
                                    <td width="183">
                                        周租/月租优惠价
                                    </td>
                                </tr>
                                <tr class="AlternatingRow">
                                    <td width="127">
                                        付款时间
                                    </td>
                                    <td width="190">
                                        取车时先付或还车时付全款
                                    </td>
                                    <td width="183">
                                        取车时付全款
                                    </td>
                                </tr>
                                <tr class="Row">
                                    <td width="127">
                                        提前还车
                                    </td>
                                    <td width="190">
                                        提前通知，按实际租期结算
                                    </td>
                                    <td width="183">
                                        多付金额不退
                                    </td>
                                </tr>
                                <tr class="AlternatingRow">
                                    <td width="127">
                                        行驶里程
                                    </td>
                                    <td width="190">
                                        不限里程
                                    </td>
                                    <td width="183">
                                        不限里程
                                    </td>
                                </tr>
                                <tr class="Row">
                                    <td width="127">
                                        神州币奖励
                                    </td>
                                    <td width="190">
                                        有
                                    </td>
                                    <td width="183">
                                        无
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <span style="padding-left: 44px;">提示：为预留车辆，部分紧缺产品（如节假日订单）或特价产品（如顺风车），预订时需一次性预付租金，敬请留意</span>
                            <br />
                            <br />
                            <br />
                            <strong>可选服务</strong>
                            <br />
                            <br />
                            <span>中联租车为您提供以下可选服务，只要您在预订时提出需求，就能轻松享受各项便利。</span>
                            <br />
                            <br />
                            <span>1. GPS导航仪：</span>
                            <br />
                            <br />
                            <span style="padding-left: 44px;">为满足您的旅途需求，各服务网点备有GPS导航仪，只要您提前预订即可使用（数量有限，订完为止）</span>
                            <br />
                            <br />
                            <span>2. 送车上门服务：</span>
                            <br />
                            <br />
                            <span style="padding-left: 44px;">我们可将车辆送至您指定的地点，为您现场办理租车手续</span>
                            <br />
                            <br />
                            <span style="padding-left: 44px;">(1) 各城市送车上门范围请在首页选择城市查看或向客服中心查询；</span>
                            <br />
                            <br />
                            <span style="padding-left: 44px;">(2) 此项服务须视调度状况而定，为减少订单人工确认环节、节省您的等待时间，建议您在取车前24小时预订该服务</span>
                            <br />
                            <br />
                            <span style="padding-left: 44px;">(3) 首次租车客户需在门店办理注册手续，因此不适用该服务；</span>
                            <br />
                            <br />
                            <span style="padding-left: 44px;">(4) 车辆送达后，如因您的缘故服务终止，送车上门费需由您承担。</span>
                            <br />
                            <br />
                            <span>3. 上门取车服务：</span>
                            <br />
                            <br />
                            <span style="padding-left: 44px;">租期结束，我们可到您指定的地点取回租赁车辆，为您现场办理还车手续。</span>
                            <br />
                            <br />
                            <span style="padding-left: 44px;">(1) 各城市上门取车的具体范围请在首页选择城市查看或向客服中心查询；</span>
                            <br />
                            <br />
                            <span style="padding-left: 44px;">(2) 此项服务须视调度状况而定，为减少订单人工确认环节、节省您的等待时间，建议您在还车前24小时预订该服务</span>
                            <br />
                            <br />
                            <span style="padding-left: 44px;">(3) 首次租车客户需在门店办理相关手续，因此不适用该服务；</span>
                            <br />
                            <br />
                            <span style="padding-left: 44px;">(4) 为合理判断车辆损伤、维护您的权益，如车辆在使用过程中出现事故或故障，请将车辆归还到门店。</span>
                            <br />
                            <br />
                            <span>4. 同城异店还车服务：</span>
                            <br />
                            <br />
                            <span style="padding-left: 44px;">中联租车提供同城异店还车服务，只要您事先预订，就能轻松在同城其他门店归还车辆。</span>
                            <br />
                            <br />
                            <span style="padding-left: 44px;">为方便您还车，同时不影响下一位客户的既定行程，建议您预订时预订该服务或在预计还车前6小时致电告知</span>
                            <br />
                            <br />
                            <span style="padding-left: 44px;">我们您的需求，以便我们及时调配车辆。</span>
                            <br />
                            <br />
                            <span>5. 异地还车服务：</span>
                            <br />
                            <br />
                            <span style="padding-left: 44px;">中联租车提供全国异地还车服务，只要您事先预订，就能轻松在我们全国任一服务网点归还车辆。</span>
                            <br />
                            <br />
                            <span style="padding-left: 44px;">为方便您还车，同时不影响下一位客户的既定行程，建议您预订时预订该服务或在预计还车前6小时致电告知</span>
                            <br />
                            <br />
                            <span style="padding-left: 44px;">我们您的需求，以便我们及时调配车辆。</span>
                            <br />
                            <br />
                            <span>6. 不计免赔服务</span>
                            <br />
                            <br />
                            <span style="padding-left: 44px;">为增加您的出行保障，中联租车提供不计免赔服务。在您购买不计免赔服务后，保险理赔范围内的损失、以及
                            </span>
                            <br />
                            <br />
                            <span style="padding-left: 48px;">保险理赔范围 外的轮胎损失，均不用您承担。</span>
                            <br />
                        </p>
                    </div>
                    <!--待租车况-->
                    <div id="dzck" style="margin-top: 17px; margin-right: 17px; margin-bottom: 17px;
                        text-align: left; display: none;">
                        <h1>
                            <font style="color: Orange;">待租车况</font></h1>
                        <br />
                        <br />
                        <p class="ent_content">
                            <span style="padding-left: 44px;">我们竭诚为您提供安全、舒适、整洁的车辆：</span>
                            <br />
                            <span style="padding-left: 44px;">1. 如无特殊情况，出车时油箱满油；</span>
                            <br />
                            <span style="padding-left: 44px;">2. 车辆定期保养检修及安全检查，无重大事故及安全隐患；</span>
                            <br />
                            <span style="padding-left: 44px;">3. 车身外观、内饰、性能：</span>
                            <br />
                            <span style="padding-left: 123px;">(1) 车身清洁，内饰干净、无破损；</span>
                            <br />
                            <span style="padding-left: 123px;">(2) 轮胎完好，无鼓包，胎面无明显偏磨；</span>
                            <br />
                            <span style="padding-left: 123px;">(3) 备胎、灭火器、故障警示牌、随车工具等齐全完好；</span>
                            <br />
                            <span style="padding-left: 123px;">(4) 行驶本、保单复印件、交强险标、年检标志等齐全并有效放置、粘贴；</span>
                            <br />
                            <span style="padding-left: 123px;">(5) 车辆性能（灯光、仪表、空调、玻璃水、电瓶等）正常。 </span>
                        </p>
                    </div>
                    <!--租车资格-->
                    <div id="zczg" style="margin-top: 17px; margin-right: 17px; margin-bottom: 17px;
                        text-align: left; display: none;">
                        <h1>
                            <font style="color: Orange;">租车资格</font></h1>
                        <br />
                        <br />
                        <p class="ent_content">
                            <span>租车前，请确认您满足以下条件、持有以下证件：</span>
                            <br />
                            <span>1. 年龄要求：年满18周岁</span>
                            <br />
                            <span>2. 证件要求：</span>
                            <br />
                            <span style="padding-left: 44px;">A. 首次取车时，请出示以下证件的原件：</span>
                            <br />
                            <span style="padding-left: 88px;">(1) 本人的有效身份证件</span>
                            <br />
                            <span style="padding-left: 123px;">a) 境内客户：二代身份证</span>
                            <br />
                            <span style="padding-left: 123px;">b) 港澳客户：港澳居民来往内地通行证（回乡证）</span>
                            <br />
                            <span style="padding-left: 123px;">c) 台湾客户：大陆通行证（台胞证）</span>
                            <br />
                            <span style="padding-left: 123px;">d) 外籍客户：护照，签证/居住证</span>
                            <br />
                            <span style="padding-left: 88px;">(2) 本人国内有效驾驶证</span>
                            <br />
                            <span style="padding-left: 88px;">(3) 有效信用卡（本人）或借记卡（本人或他人）</span>
                            <br />
                            <span style="padding-left: 123px;">a) 有效信用卡指有效期内的中国国内银行发行的信用卡，或国外银行发行的带有VISA、Master、JCB、
                            </span><span style="padding-left: 123px;">运通标志的有磁条外卡；</span>
                            <br />
                            <span style="padding-left: 123px;">b) 在您本人有信用卡并且信用额度足够时，可租所有车型；</span>
                            <br />
                            <span style="padding-left: 123px;">c) 如您本人无信用卡：</span>
                            <br />
                            <span style="padding-left: 160px;">i. 可通过国内借记卡（本人或他人）支付与租车预授权相等额度的押金（可租车型： </span>
                            <span style="padding-left: 160px;">标准预授权5000元及以 下的车型）；</span>
                            <br />
                            <span style="padding-left: 160px;">ii.或通过持有信用卡的亲友进行担保（可租车型：所有车型）。</span>
                            <br />
                            <span style="padding-left: 88px;">(4) 其他说明：</span>
                            <br />
                            <span style="padding-left: 44px;">B.自第二次租车开始，您仅需出示驾照原件即可，无需再提供身份证件。</span>
                            <br />
                            <br />
                            <br />
                            <strong>信用卡担保</strong>
                            <br />
                            <span>如果您没有符合要求的信用卡，可请亲友为您提供担保，担保人对您在租车期间所产生的一切费用及责任承担无限连带责任</span>
                            <br />
                            <br />
                            <span style="padding-left: 44px;">1. 担保人需持有足够信用额度的有效信用卡代您刷取租车预授权或押金，并需携带有效身份证原件和您一起在
                            </span><span style="padding-left: 44px;">《租车合同》上 签字；</span>
                            <br />
                            <span style="padding-left: 44px;">2. 每位担保人每次仅限担保1台车辆；</span>
                            <br />
                            <span style="padding-left: 44px;">3.在您归还车辆之前，担保人自己不能租用中联租车车辆，也不能再次为他人提供担保。 </span>
                            <br />
                            <br />
                            <br />
                            <strong>数量限制</strong>
                            <br />
                            <span>每位客户每次限租1辆，即在您归还所租车辆之前，不能再租用其他车辆，也不能为其他人担保租车</span>
                        </p>
                    </div>
                    <!--服务预订-->
                    <div id="fwyd" style="margin-top: 17px; margin-right: 17px; margin-bottom: 17px;
                        text-align: left; display: none;">
                        <h1>
                            <font style="color: Orange;">服务预订</font></h1>
                        <br />
                        <br />
                        <p class="ent_content">
                            <strong>预订方式</strong>
                            <br />
                            <span>1. 网站预订：登录www.zuche.com，按网页提示进行预订；</span>
                            <br />
                            <span>2. 电话预订：致电中联租车24小时客户服务中心客服，客服人员将为您安排订车；</span>
                            <br />
                            <span>3. 门店预订：光临中联租车门店，门店人员将为您安排预订或协助您选租车辆。</span>
                            <br />
                            <span>4. 手机客户端预订：下载中联租车客户端，根据首页提示进行预订。 </span>
                            <br />
                            <br />
                            <br />
                            <strong>预订类型</strong>
                            <br />
                            <span>我们为您提供“级别订车”和“车型订车”两种预订选择：</span>
                            <br />
                            <span style="padding-left: 44px;">1. 如果对车型有特殊要求，您可以在预订时直接预订具体车型。</span>
                            <br />
                            <span style="padding-left: 44px;">2. 如果对车型没有特殊要求，您可以选择按级别订车（不指定到具体车型，取车时接受该级别内任一车型），不但可以享受
                                价格优惠，更能体验不同车型的驾驶乐趣。 </span>
                            <br />
                            <br />
                            <br />
                            <strong>预订说明</strong>
                            <br />
                            <span>1. 成功提交订单后，我们将为您预留车辆。</span>
                            <br />
                            <span>2. 客户取车：</span>
                            <br />
                            <span style="padding-left: 44px;">(1) 提前取车：</span>
                            <br />
                            <span style="padding-left: 88px;">如在预订取车时间前取车，租期将按您实际的取车时间计算。</span>
                            <br />
                            <span style="padding-left: 44px;">(2) 延时取车：</span>
                            <br />
                            <span style="padding-left: 88px;">如您需要延时取车，请务必在预订取车时间前致电我们以便为您保留车辆，超过预订取车时间半小时如果您未取车，
                                订单将自动取消； 延时取车，租期将自您原先预订的取车时间起算。</span>
                            <br />
                            <span>3. 在特殊情况（如车辆未还回等）无法向您提供已成功预订的车型时： </span><span style="padding-left: 44px;">(1)
                                我们将为您调整同级别车辆或免费升级车辆；</span>
                            <br />
                            <span style="padding-left: 44px;">(2) 确实无车提供的，我们将补偿您订单首日车辆租金金额的中联币。 </span>
                            <br />
                            <br />
                            <br />
                            <strong>订单修改说明</strong>
                            <br />
                            <span>1. 取车前修改/取消订单：</span>
                            <br />
                            <span style="padding-left: 44px;">1. 在您提交订单之后，“普通产品”、“周租/月租”将不能互调，请您预订前做好选择。</span>
                            <br />
                            <span style="padding-left: 44px;">2. 订单一旦修改，原订单的车辆租金价格将重新计算，请您慎重考虑。</span>
                            <br />
                            <span style="padding-left: 44px;">3. 为不影响您和其他客户的既定行程，在您决定修改或取消订单时，请您在取车时间前6小时致电400 616
                                6666进行；如订单 涉及“送车上门”、“上门取车”、“服务点”等取车方式，请您务必提前24小时致电客服修改或取消。感谢您的配合！
                            </span>
                            <br />
                            <span>2. 取车后修改订单：</span> <strong>数量限制</strong>
                            <br />
                            <span style="padding-left: 44px;">(1) 修改还车时间：</span>
                            <br />
                            <span style="padding-left: 88px;">当您决定续租或提前还车时，请尽量提前6小时联系我们，我们将尽力满足您的需求。</span>
                            <br />
                            <span style="padding-left: 44px;">(2) 变更还车门店：</span>
                            <br />
                            <span style="padding-left: 88px;">为了排在您后面的客户有可以租用或调换的车辆，请您在决定变更还车门店时，尽量在预计还车前6小时告知</span>
                            <br />
                            <br />
                            <br />
                            <strong>预付租金及相关说明</strong>
                            <br />
                            <span>重要提示：</span>
                            <br />
                            <span>节假日或特价产品车辆紧俏，为保留车辆，订单在预付、修改、取消等方面有一些特殊要求，请您在预订时注意以下事项，慎重考虑。</span>
                            <br />
                            <span>1. 以下产品，请您在提交订单后1小时内完成预付，逾时未预付，订单将自动取消，车辆可能会被其他客户抢订：</span>
                            <br />
                            <span style="padding-left: 44px;">(1) 预付产品</span>
                            <br />
                            <span style="padding-left: 44px;">(2) 法定节假日或特殊活动</span>
                            <br />
                            <span style="padding-left: 44px;">(3) 顺风车</span>
                            <br />
                            <span>2. 由于车辆紧俏，您对订单的修改或取消，都可能影响您的租金价格或预付款退款，请在预订或变更订单时慎重考虑：</span>
                            <br />
                            <span style="padding-left: 44px;">(1) 订单取消</span>
                            <br />
                            <span style="padding-left: 88px;">预付成功后，我们将为您保留车辆。如因特殊原因不能为您提供车辆，我们将退还您已付全款，同时补偿您双倍已预
                                付金额的中联币或单倍已预付金额的现金；如您决定取消订单，我们将退还您预付款中的基本保险费、手续费和可选 服务费。</span>
                            <br />
                            <span style="padding-left: 44px;">(2) 订单修改</span>
                            <br />
                            <span style="padding-left: 88px;">修改订单请您在预订取车或还车时间前6小时致电4006166666进行，以下情况无法修改，敬请谅解：</span>
                            <br />
                            <span style="padding-left: 88px;">a) 涉及取车时间、租期、取车门店、车型的；</span>
                            <br />
                            <span style="padding-left: 88px;">b) 订单支付时间距离预订取车时间不足6小时的。 </span>
                        </p>
                    </div>
                    <!--取还车流程-->
                    <div id="qhcsm" style="margin-top: 17px; margin-right: 17px; margin-bottom: 17px;
                        text-align: left; display: none;">
                        <h1>
                            <font style="color: Orange;">取还车流程</font></h1>
                        <br />
                        <div align="center">
                            <img src="images/rentright.jpg" />
                        </div>
                        <br />
                        <br />
                        <span>温馨提示：</span>
                        <br />
                        <br />
                        <span>离开门店前，请先熟悉租用车辆的安全性能：危险警示灯、门锁、头灯以及备胎。 </span>
                        <br />
                        <br />
                        <br />
                        <strong>预授权、押金及租金支付</strong>
                        <br />
                        <br />
                        <span>1. 中联租车接受信用卡及国内借记卡支付。</span>
                        <br />
                        <br />
                        <span>2. 预授权及押金： </span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">取车时，请根据您租用的车型，刷取相应的信用卡预授权或押金。</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">（1）5000元（不含）以上车型：刷取信用卡预授权；租期15天（含）以上时，请刷取信用卡押金。</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">（2）5000元（含）以下车型：刷取信用卡预授权或借记卡押金；租期15天（含）以上时，请刷取信用卡押金或借记卡押金。
                        </span>
                        <br />
                        <br />
                        <span>3. 租金支付</span>
                        <br />
                        <br />
                        <table class="GridView center" style="border-collapse: collapse; width: 665px;">
                            <tr class="HeaderRow">
                                <th>
                                    产品类型
                                </th>
                                <th>
                                    租金支付时间
                                </th>
                                <th>
                                    租金额度
                                </th>
                                <th>
                                    享受车辆租金价格
                                </th>
                            </tr>
                            <tr class="Row">
                                <td rowspan="2">
                                    普通产品
                                </td>
                                <td>
                                    预计总租金<80%预授权或押金：还车时一次性支付
                                </td>
                                <td>
                                    全款
                                </td>
                                <td>
                                    正常价
                                </td>
                            </tr>
                            <tr class="AlternatingRow">
                                <td>
                                    预计总租金≥80%预授权或押金：取车时一次性支付
                                </td>
                                <td>
                                    预计全款，还车多退少补
                                </td>
                                <td>
                                    正常价
                                </td>
                            </tr>
                            <tr class="Row">
                                <td>
                                    周租/月租产品
                                </td>
                                <td>
                                    取车时一次性先付
                                </td>
                                <td>
                                    预计全款，还车少补，多不退
                                </td>
                                <td>
                                    周租/月租价
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <span>注：部分特殊产品（如顺风车）或节假日订单，为预留车辆，预订时请您一次性预付。 </span>
                        <br />
                        <br />
                        <br />
                        <strong>燃油说明</strong>
                        <br />
                        <br />
                        <span>1. 燃油费用：请您自行承担车辆租赁期间的燃油费用。</span>
                        <br />
                        <br />
                        <span>2. 燃油标准：为避免安全隐患、保障您和其他客户的用车安全，请按《租车单》所注的燃油标号添加燃料。</span>
                        <br />
                        <br />
                        <span>3. 加油规则：</span>
                        <br />
                        <br />
                        <span>(1) 我们尽力保证满箱油出车，在满油还车时，您不必支付任何燃油费用；如您还车时不便加满油，请按以下标准补足油量差价 </span>
                        <br />
                        <br />
                        <span style="padding-left: 5px;">并支付100元加油服务费。 </span>
                        <br />
                        <br />
                        <table class="GridView center" style="border-collapse: collapse; width: 665px;">
                            <tr class="HeaderRow">
                                <th>
                                    还车油表指针位置
                                </th>
                                <th>
                                    加油费用
                                </th>
                            </tr>
                            <tr class="Row">
                                <td align="center">
                                    油量表刻度显示位于：7/8～1处
                                </td>
                                <td align="center">
                                    油箱容量 × 1/8 × 市场当期油价 +100元加油服务费
                                </td>
                            </tr>
                            <tr class="AlternatingRow">
                                <td align="center">
                                    油量表刻度显示位于：3/4～7/8处
                                </td>
                                <td align="center">
                                    油箱容量 × 1/4 × 市场当期油价 +100元加油服务费
                                </td>
                            </tr>
                            <tr class="Row">
                                <td align="center">
                                    油量表刻度显示位于：5/8～3/4处
                                </td>
                                <td align="center">
                                    油箱容量 × 3/8 × 市场当期油价 +100元加油服务费
                                </td>
                            </tr>
                            <tr class="AlternatingRow">
                                <td align="center">
                                    油量表刻度显示位于：1/2～5/8处
                                </td>
                                <td align="center">
                                    油箱容量 × 1/2 × 市场当期油价 +100元加油服务费
                                </td>
                            </tr>
                            <tr class="Row">
                                <td align="center">
                                    油量表刻度显示位于：3/8～1/2处
                                </td>
                                <td align="center">
                                    油箱容量 × 5/8 × 市场当期油价 +100元加油服务费
                                </td>
                            </tr>
                            <tr class="AlternatingRow">
                                <td align="center">
                                    油量表刻度显示位于：1/4～3/8处
                                </td>
                                <td align="center">
                                    油箱容量 × 3/4 × 市场当期油价 +100元加油服务费
                                </td>
                            </tr>
                            <tr class="Row">
                                <td align="center">
                                    油量表刻度显示位于：1/8～1/4处
                                </td>
                                <td align="center">
                                    油箱容量 × 7/8 × 市场当期油价 +100元加油服务费
                                </td>
                            </tr>
                            <tr class="AlternatingRow">
                                <td align="center">
                                    油量表刻度显示位于：少于油量1/8
                                </td>
                                <td align="center">
                                    油箱容量 × 市场当期油价 +100元加油服务费
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <span>(2) 如取车时油箱不满，当您还车油量高于取车油量时，您多加的油量将按当地市场燃油价格折算并在您当次租金中冲抵； </span>
                        <br />
                        <br />
                        <span style="padding-left: 5px;">当还车油量低于取车油量时，请您按当地市场燃油价格补足油量差价。</span>
                        <br />
                        <br />
                        <br />
                        <strong>延期还车</strong>
                        <br />
                        <br />
                        <span>1. 请您于预订时间内归还车辆。延期4小时以内还车，延期用车时间计入总租期，租车费用将按总租期计费；</span>
                        <br />
                        <br />
                        <span>2. 为更好地安排车辆、满足您和其他客户的用车需求，延期4小时以上还车，请您在租期届满前6小时致电客服提出续租申请：</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">(1) 续租后单次总租期（已租+续租）最长为30天（含）；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">(2) 续租后未付的租金金额超过租车预授权或押金金额的80%时，请您到门店办理续租手续或在原租期届满前补齐差额；
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">注：未付的租金金额，即预计总租金与已付租金的差额。</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">(3) 周租/月租产品续租后，您仍享受原订单的优惠车辆租金价格（已选购的不计免赔服务或GPS导航服务不再另收费）
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">普通产品续租后，您的车辆租金按续租时的正常价格计费；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">(4) 您可以在我们全国的任意门店办理续租手续，无异地或异店续租手续费；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">(5) 续租车辆请归还到首次租车的门店，如归还到其他门店或城市，将产生异店或异地还车费。</span>
                        <br />
                        <br />
                        <span>3. 为保障所有预订客户的公平用车权益和车辆安全，我们希望您按约定准时还车。如果超过4个小时以上未还车且未按规定 </span>
                        <br />
                        <br />
                        <span style="padding-left: 5px;">办理续租手续，或未经同意强行不还车，您将支付正常租金及超期违约金（标准为超期部分租金的300%），中联租车还
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 5px;">将可能收回车辆；在租车城市以外地区收回车辆的，请您加付异地还车费及中联租车由此付出的其他费用。 为避免带给您
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 5px;">不必要的困扰，节省租车费用，请您按时归还车辆。 </span>
                        <br />
                        <br />
                        <br />
                        <strong>提前还车</strong>
                        <br />
                        <br />
                        <span>为方便调度车辆和服务人员，当您决定减少原定的租车天数时，请您在实际还车前6小时致电客服，涉及上门取车、服务点等 </span>
                        <br />
                        <br />
                        <span style="padding-left: 5px;">还车方式变更的，请您提前24小时致电客服</span>
                        <br />
                        <br />
                        <span>对于周租/月租、顺风车等特价产品，以及节假日等需预付的产品，由于车辆紧俏并且已经为您预留，当您决定提前还车时， </span>
                        <br />
                        <br />
                        <span style="padding-left: 5px;">请按您原定的租期结算，望您谅解。 </span>
                    </div>
                    <!--保险责任-->
                    <div id="bxzr" style="margin-top: 17px; margin-right: 17px; margin-bottom: 17px;
                        text-align: left; display: none;">
                        <h1>
                            <font style="color: Orange;">保险责任</font></h1>
                        <br />
                        <br />
                        <span>1. 基本保险</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">基本保险覆盖如下内容（具体赔偿范围及赔付金额以保险公司条款为准）： </span>
                        <br />
                        <br />
                        <table class="GridView center" style="border-collapse: collapse; width: 670px;">
                            <tr class="HeaderRow">
                                <th width="100">
                                    保险项目
                                </th>
                                <th width="93">
                                    保额
                                </th>
                                <th width="158">
                                    保险保障范围
                                </th>
                                <th width="83">
                                    承租方责任
                                </th>
                                <th width="119">
                                    保险公司及中联租车责任
                                </th>
                                <th width="117">
                                    备注
                                </th>
                            </tr>
                            <tr class="Row">
                                <td width="100" rowspan="2">
                                    车辆损失险
                                </td>
                                <td width="93" rowspan="2">
                                    车辆实际价值
                                </td>
                                <td width="158">
                                    由于发生自然灾害（地震除外）、意外事故、其他保险事故导致的车辆本身的损失
                                </td>
                                <td width="83">
                                    1500元
                                </td>
                                <td width="119">
                                    1500元以上的部分
                                </td>
                                <td width="117" rowspan="4">
                                    保险公司免赔/拒赔的部分由客户承担
                                </td>
                            </tr>
                            <tr class="AlternatingRow">
                                <td width="158">
                                    由于发生自然灾害（地震除外）、意外事故、其他保险事故导致的车辆报废
                                </td>
                                <td width="83">
                                    20%
                                </td>
                                <td width="119">
                                    80%
                                </td>
                            </tr>
                            <tr class="Row">
                                <td width="100">
                                    第三者责任险
                                </td>
                                <td width="93">
                                    20万元
                                </td>
                                <td width="158">
                                    保险车辆发生意外事故，导致第三者承受的损失
                                </td>
                                <td width="83">
                                    0
                                </td>
                                <td width="119">
                                    100%
                                </td>
                            </tr>
                            <tr class="AlternatingRow">
                                <td width="100">
                                    车上人员责任险（驾驶员）
                                </td>
                                <td width="93">
                                    5万元
                                </td>
                                <td width="158">
                                    保险车辆发生保险事故，导致驾驶员人身伤亡
                                </td>
                                <td width="83">
                                    0
                                </td>
                                <td width="119">
                                    100%
                                </td>
                            </tr>
                            <tr class="Row">
                                <td width="100">
                                    全车盗抢险
                                </td>
                                <td width="93">
                                    车辆实际价值
                                </td>
                                <td width="158">
                                    全车被盗窃、被抢劫或被抢夺而造成的损失
                                </td>
                                <td width="83">
                                    20%
                                </td>
                                <td width="119">
                                    80%
                                </td>
                                <td width="117">
                                    免责部分条款有：1、行驶证、购置税证丢失，各扣除当时车辆折旧价的0.5%免赔责任；2、车匙丢失扣除当时车辆折旧价的5%免赔责任。
                                </td>
                            </tr>
                            <tr class="AlternatingRow">
                                <td width="100">
                                    玻璃单独爆裂险
                                </td>
                                <td width="93">
                                    新车原价
                                </td>
                                <td width="158">
                                    玻璃单独爆裂造成的损失
                                </td>
                                <td width="83">
                                    0
                                </td>
                                <td width="119">
                                    100%
                                </td>
                                <td width="117">
                                </td>
                            </tr>
                            <tr class="Row">
                                <td width="100">
                                    自燃损失险
                                </td>
                                <td width="93">
                                    新车原价
                                </td>
                                <td width="158">
                                    保险车辆由于自身原因起火燃烧造成保险车辆的损失
                                </td>
                                <td width="83">
                                    0
                                </td>
                                <td width="119">
                                    100%
                                </td>
                                <td width="117">
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <span>2. 不计免赔服务 </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">在您购买不计免赔服务后，可免除承担上表"车辆损失险"中由客户承担的1500元费用，以及保险理赔范围外的轮胎损失。</span>
                        <br />
                        <br />
                        <span>3. 基本保险、不计免赔服务不免除以下费用： </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(1) 保险理赔范围外的，或因您未履行有效报案流程、理赔手续而导致保险公司拒赔的；</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(2) 因客户违法违规导致车辆被扣而产生的停运损失费。 </span>
                    </div>
                    <!--理赔说明-->
                    <div id="lpsm" style="margin-top: 17px; margin-right: 17px; margin-bottom: 17px;
                        text-align: left; display: none;">
                        <h1>
                            <font style="color: Orange;">理赔说明</font></h1>
                        <br />
                        <br />
                        <span>1. 以下情况及其他保险公司不予赔偿的情况，造成的所有经济损失和后果将由您自行承担，请您务必避免：</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(1) 超过48小时报案；</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(2) 饮酒后驾驶车辆；</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(3) 无证驾驶车辆；</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(4) 持逾期未审验的驾驶执照驾驶车辆；</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(5) 发生事故后驾车逃逸。</span>
                        <br />
                        <br />
                        <span>2. 如车辆不慎出险，请您注意人身安全，并立即致电中联租车24小时热线400-616-6666转3报案、收集理赔材料。齐全的 </span>
                        <br />
                        <br />
                        <span style="padding-left: 10px;">理赔材料可以节省您的理赔等待时间： </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(1) 在您还车并提交了齐全的理赔资料时，您不需要垫付本车维修等保险公司应付费用，仅需：</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">a) 垫付第三方损失，该费用将在保险公司完成理赔后返还给您；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">b) 支付上表列明的保险责任内的由承租方承担的损失，以及保险责任外的所有责任和损失（如您已经购买
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 50px;">不计免赔服 务，保险责任范围外的轮胎损失您可以免于承担）；</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(2) 在您还车不能提供齐全的理赔资料时，请根据预估的车辆损失刷取最低1500元的材料缺失保证金或预授权，
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 30px;">该部分预 授权或押金将在您提交完材料后的3天内发起退款（到账时间以各银行为准）。</span>
                        <br />
                        <br />
                        <span>3. 在您用车期间，如有车辆盗抢与报废发生，您需支付公安部门立案或车管部门出具报废证明之前的车辆租赁费用。 </span>
                    </div>
                    <!--事故处理-->
                    <div id="sgcl" style="margin-top: 17px; margin-right: 17px; margin-bottom: 17px;
                        text-align: left; display: none;">
                        <h1>
                            <font style="color: Orange;">事故处理</font></h1>
                        <br />
                        <br />
                        <br />
                        <span>1. 如车辆不慎出险，请您注意人身安全，并立即致电中联租车24小时热线报案，车辆需由保险公司定损后再修理；</span>
                        <br />
                        <br />
                        <span>2. 为避免处理不当给您带来损失，请您按以下指引处理事故：</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(1)双方交通事故：</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">a) 请您立即停车，记录相关事故车辆的车牌号码，索要对方电话号码；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">b) 检查对方驾驶执照，如对方无有效驾照，请立即拨打122报警；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">c) 依据《交通事故快速处理办法》所列的事故情形明确双方责任，如能达成一致：</span>
                        <br />
                        <br />
                        <span style="padding-left: 60px;">■ 拍摄第一现场照片：全景照片（现场位置、痕迹、事故损失全貌），物证及特写照片（车牌号、受损部位、
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 63px;">受损 程度等）；</span>
                        <br />
                        <br />
                        <span style="padding-left: 60px;">■ 驶离现场至不妨碍交通的地方；</span>
                        <br />
                        <br />
                        <span style="padding-left: 60px;">■ 填写《交通事故快速处理协议书》：当事各方各持一份；</span>
                        <br />
                        <br />
                        <span style="padding-left: 60px;">■ 拨打报案电话客服转3，获得报案号和报险建议；</span>
                        <br />
                        <br />
                        <span style="padding-left: 60px;">注：《交通事故快速处理协议书》填写项目要齐全，时间精确到分，事故地点具体到所在区域及道路具体名称，
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 63px;">各方 驾驶证、电话号码需进行核对；保险“报案号”待报案后会获得。 </span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">d) 如果不能明确双方责任：</span>
                        <br />
                        <br />
                        <span style="padding-left: 60px;">■ 请立即报警（122）等待警察处理；</span>
                        <br />
                        <br />
                        <span style="padding-left: 60px;">■ 请于事故车后50米处安放随车附带的三角警示牌，同时将车辆双闪警示灯打开，以便使行驶车辆安全避让；</span>
                        <br />
                        <br />
                        <span style="padding-left: 60px;">■ 待警察出具事故责任判定后，立即致电客服转3报险。</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">e) 请根据报险处理建议，携带车辆行驶本和驾照，将车辆送到指定地点定损（定损时需要事故车辆同时到场以便勘察
                            定损）。</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">f) 请按指导收集理赔所需材料，并将材料交与还车门店或指定维修人员。</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(2)如遇对方车辆肇事逃逸的、对方车辆无号牌的、对方驾驶员无驾驶证或饮酒后驾驶车辆的，请您记录相关信息
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">（如：车 牌号，车辆品牌，颜色以及肇事地点）并立即报警（122），等候交警处理，同时请您致电客服转以获得
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">保险方面的咨询和建议。</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(3)如车辆与障碍物、建筑物发生碰撞，或车辆停放期间被碰撞而找不到肇事者，请您将车辆损坏部位以及碰撞物体进行
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">比对 拍照，并致电客服转3，以便车辆能够得到及时修复；</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(4)如遇重大交通事故且有人员伤亡的，请保护现场，并拨打122交通事故报警台求助，同时请立即致电
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">客服以获得保险方面的咨询和建议。</span>
                        <br />
                        <br />
                        <span>3. 事故损失的垫付：</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(1) 在事故索赔所需材料不齐的情况下，您需垫付本车维修费用（即支付材料缺失保证金）；</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(2) 如有第三方损失，相关费用需由您先行垫付；</span>
                        <br />
                        <br />
                        <span>4. 为避免保险公司拒赔或视您放弃理赔，请您务必在出险之日起15日内将保险理赔所需事故材料完整提供给我们 </span>
                        <br />
                        <br />
                        <span style="padding-left: 5px;">（特大人伤事故，或费用超 1万元，可相应延缓30日）；感谢您的配合！ </span>
                        <br />
                        <br />
                        <span>5. 保险公司理赔结束后，我们会将所得理赔款中由您垫付的部分返还给您（具体费用由保险公司核损，最终返还给您的 </span>
                        <br />
                        <br />
                        <span style="padding-left: 10px;">费用额度将按保险公司实际到位理赔款确定）。</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">注：发生事故后，请勿擅自维修事故车辆，否则您将承担赔偿损失等违约责任，超过保险公司赔偿范围
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 30px;">或保险公司不足额 理赔的部分，也将由您承担。</span>
                        <br />
                    </div>
                    <!--救援及备用车-->
                    <div id="jyjbyc" style="margin-top: 17px; margin-right: 17px; margin-bottom: 17px;
                        text-align: left; display: none;">
                        <h1>
                            <font style="color: Orange;">救援及备用车</font></h1>
                        <br />
                        <br />
                        <br />
                        <span>中联租车提供"7×24小时"的全国救援服务。如遇紧急情况，请您致电24小时客户服务中心客服。</span>
                        <br />
                        <br />
                        <span>1. 由于车辆本身故障引起的救援，费用由中联租车承担。</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(1) 我们将委托救援商为您提供现场紧急修理服务；</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(2) 如车辆故障无法现场修复，请将车辆交与指定救援商：</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">a) 若故障地点在中联租车网点覆盖城市范围内，我们将为您准备备用车，请到就近中联租车门店更换车辆：备用车
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 50px;">为同 级别或就近高级别车辆时，租金按原车型计费；备用车为就近低级别车时，租金按低级别车辆价格计费。</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">b) 若故障地点在中联租车网点覆盖城市范围外，我们将委托救援商向您提供救援，并由中联租车就近分公司为您办理
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 50px;">结 算手续。因无法提供备用车，我们将按1元/公里的标准，向您赔偿自车辆停驶城市到原定还车城市的路费。</span>
                        <br />
                        <br />
                        <span>2. 对于非车辆本身故障导致车辆不能正常行驶的（包含且不限于人为操作失误、保险事故等），相关费用由客户承担：</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(1) 您可以自行选择救援商或选择由我们提供的道路救援服务。</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">中联租车道路救援服务内容包括：</span>
                        <br />
                        <br />
                        <table class="GridView center" style="border-collapse: collapse; width: 600px;">
                            <tr class="HeaderRow">
                                <th width="125">
                                    服务项目
                                </th>
                                <th width="475">
                                    服务描述
                                </th>
                            </tr>
                            <tr class="Row">
                                <td style="text-align: center; padding-left: 0px;">
                                    事故救援
                                </td>
                                <td>
                                    租赁车辆出现事故，无法继续安全行驶时，提供拖车或现场小修服务
                                </td>
                            </tr>
                            <tr class="AlternatingRow">
                                <td style="text-align: center; padding-left: 0px;">
                                    更换备胎
                                </td>
                                <td>
                                    租赁车辆因轮胎损坏无法行驶时，提供更换备胎服务
                                </td>
                            </tr>
                            <tr class="Row">
                                <td style="text-align: center; padding-left: 0px;">
                                    送油服务
                                </td>
                                <td>
                                    租赁车辆因无燃料而无法启动或行驶时，提供送油服务
                                </td>
                            </tr>
                            <tr class="AlternatingRow">
                                <td style="text-align: center; padding-left: 0px;">
                                    开锁服务
                                </td>
                                <td>
                                    租赁车辆钥匙遗失或钥匙锁入车内，提供开锁服务
                                </td>
                            </tr>
                            <tr class="Row">
                                <td style="text-align: center; padding-left: 0px;">
                                    蓄电池搭电
                                </td>
                                <td>
                                    租赁车辆因电瓶缺电或发电机故障而无法启动时，提供搭电服务
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(2)由于要调配停驶车辆，车辆在租车城市之外地区停驶的，您需支付异地还车费用。</span>
                        <br />
                        <br />
                    </div>
                    <!--价格说明-->
                    <div id="jgsm" style="margin-top: 17px; margin-right: 17px; margin-bottom: 17px;
                        text-align: left; display: none;">
                        <h1>
                            <font style="color: Orange;">价格说明</font></h1>
                        <br />
                        <br />
                        <strong>标准服务价格</strong>
                        <br />
                        <br />
                        <span>1. 车辆租金：（必购项目）</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">车辆租金是各车型在租赁中形成的费用，最小单位为天（24小时），如租期超过1天，租期中非整日的部分：</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">（1）不足4小时（含）的，按超时费计费；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">（2）4小时以上的，按1天计费。</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">a) 根据您选择的产品类型、支付方式，车辆租金分为正常价和周租/月租价： </span>
                        <br />
                        <br />
                        <table class="GridView center" style="border-collapse: collapse; width: 640px;">
                            <tr class="HeaderRow">
                                <th width="85">
                                    适用说明
                                </th>
                                <th width="200">
                                    支付时间
                                </th>
                                <th width="200">
                                    租期限制
                                </th>
                                <th width="260">
                                    结算限制
                                </th>
                            </tr>
                            <tr class="Row">
                                <td align="center">
                                    正常价
                                </td>
                                <td>
                                    根据预计总租金金额，还车时付全款或取车时先付全款
                                </td>
                                <td>
                                    最短1天，最长30天
                                </td>
                                <td>
                                    按实际租期结算，还车时多退少补
                                </td>
                            </tr>
                            <tr class="AlternatingRow">
                                <td align="center">
                                    周租/月租价
                                </td>
                                <td>
                                    取车时一次性先付全款
                                </td>
                                <td>
                                    最短7天，最长30天
                                </td>
                                <td>
                                    按订单租期结算，提前还车已付租金不退
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <span>2. 基本保险费：（必购项目）</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">基本保险是对您重大事故的保障。</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(1) 基本计费单位：1天（24小时），其中租期中非整日的部分：</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">a)不足4小时（含）的，不计基本保险费；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">b)4小时以上的，按1天计费。</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(2) 计价方式：按天计费，总额=单价*租期；</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(3) 计价说明：</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">a) 不同车型基本保险费价格不同；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">b) 基本保险费不计入停运损失费、超期违约金。</span>
                        <br />
                        <br />
                        <span>3.手续费：（必购项目）</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">手续费是为您办理租车手续的人工费、场地费等。</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(1) 基本计费单位：按订单计费；</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(2) 计价说明：</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">a) 不区分车型和会员级别；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">b) 每个城市、每个门店收费标准不同；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">c) 送车上门服务免收手续费。</span>
                        <br />
                        <br />
                        <span>4. 超时费：</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">30分钟以内的超时，不收取超时费。</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">还车时间超过租期约定的归还时间30分钟以上的，或总租期内非整日部分中有不满4小时的，按以下标准收取超时费。</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(1) 基本计费单位：小时</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(2) 超时费用只计车辆租金，不含基本保险费等其他费用，计费方式：</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">a) 不足1小时的，按1小时收费；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">b) 4小时（含）内的，以“小时”为单位收费；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">c) 4小时以上，按1天（24小时）租期计费；</span>
                        <br />
                        <br />
                        <span>5.超里程收费：对顺风车等有里程限制的产品，如超过限制里程请按实际产生的超里程数以及每公里单价支付超里程费。 </span>
                        <br />
                        <br />
                        <br />
                        <strong>可选服务价格</strong>
                        <br />
                        <br />
                        <table class="GridView center" style="border-collapse: collapse; width: 600px;">
                            <tr class="HeaderRow">
                                <th width="125">
                                    项目（可选）
                                </th>
                                <th width="475">
                                    费用
                                </th>
                            </tr>
                            <tr class="Row">
                                <td style="text-align: center; padding-left: 0px;">
                                    不计免赔服务
                                </td>
                                <td width="475" style="text-align: center; padding-left: 0px;">
                                    50元/天，超时4小时以上或租期4小时以上按1天计费，超时4小时内或租期不满4小时不另计费；周租/月租产品不论租期及是否超时，均按7天计费；
                                </td>
                            </tr>
                            <tr class="AlternatingRow">
                                <td style="text-align: center; padding-left: 0px;">
                                    GPS导航仪
                                </td>
                                <td width="475" style="text-align: center; padding-left: 0px;">
                                    50元/天，超时4小时以上或租期4小时以上按1天计费，超时4小时内或租期不满4小时不另计费；周租/月租产品不论租期及是否超时，均按7天计费；
                                </td>
                            </tr>
                            <tr class="Row">
                                <td style="text-align: center; padding-left: 0px;">
                                    送车上门
                                </td>
                                <td width="475" style="text-align: center; padding-left: 0px;">
                                    100元/次
                                </td>
                            </tr>
                            <tr class="AlternatingRow">
                                <td style="text-align: center; padding-left: 0px;">
                                    上门取车
                                </td>
                                <td width="475" style="text-align: center; padding-left: 0px;">
                                    100元/次
                                </td>
                            </tr>
                            <tr class="Row">
                                <td style="text-align: center; padding-left: 0px;">
                                    同城异店还车
                                </td>
                                <td width="475" style="text-align: center; padding-left: 0px;">
                                    50元/次
                                </td>
                            </tr>
                            <tr class="AlternatingRow">
                                <td style="text-align: center; padding-left: 0px;">
                                    异地还车
                                </td>
                                <td width="475" style="text-align: center; padding-left: 0px;">
                                    以预订实际报价为准
                                </td>
                            </tr>
                            <tr class="Row">
                                <td style="text-align: center; padding-left: 0px;">
                                    全国救援
                                </td>
                                <td width="475" style="text-align: center; padding-left: 0px;">
                                    对于车辆的自身故障免费救援；其他服务，按救援商的报价请您现场支付
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <br />
                        <strong>其他费用</strong>
                        <br />
                        <br />
                        <span>1. 夜间服务费：中联租车部分门店提供24小时服务，如果您在夜间21:00至次日早上8:00之间有租车需求，支付50元/次 </span>
                        <br />
                        <br />
                        <span style="padding-left: 10px;">夜间服务费即可享受夜间取车或还车的便利。</span>
                        <br />
                        <br />
                        <span>2. 强行续租违约金：为保障所有客户的公平用车权益，有后续订单的车辆恕不能为您提供续租。如果您未履行有效续租手续 </span>
                        <br />
                        <br />
                        <span style="padding-left: 10px;">或未取得中联租车同意强行续租，您需正常支付租金，并按超期部分租金的300%支付违约金。</span>
                        <br />
                        <br />
                        <span>3. 加油服务费：为方便您用车，我们将尽量为您提供满油车辆。只要满油还车，您就不必支付油量差价以及100元的加油服务费。</span>
                        <br />
                        <br />
                        <span>4. 违章罚款：</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">驾驶车辆时，请您随身携带有效期内的《车辆行驶证》和《机动车驾驶证》，遵守交通法规、安全驾驶。
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 30px;">用车期间如有违章 产生，请您自行负责缴纳罚款、清除违章记录：</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(1) 我们将短信或电话提醒您违章情况，届时您可致电客服详询违章办理方法。</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(2) 为避免产生200元/天的违章违约费用，请您在违章发生之日起25日内自行将违章处理完毕，并将处理凭证复印件
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 30px;">发至 中联租车违章处理专用邮箱（wzgl@zuche.com）。</span>
                        <br />
                        <br />
                        <span>5. 停运损失费</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">中联租车在因客户遗失证照或违法违规用车导致车辆被扣时，按以下标准收取停运损失费。</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(1) 计费方式：租期内车辆租金均价*停运天数</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(2) 停运天数确认标准如下： </span>
                        <br />
                        <br />
                        <table class="GridView center" style="border-collapse: collapse; width: 400px;">
                            <tr class="HeaderRow">
                                <th width="241">
                                    停运情形
                                </th>
                                <th width="260">
                                    停运天数（预计）
                                </th>
                            </tr>
                            <tr class="Row">
                                <td width="241" style="text-align: center; padding-left: 0px;">
                                    因证照遗失，导致不能合法上路
                                </td>
                                <td width="260" style="text-align: center; padding-left: 0px;">
                                    2
                                </td>
                            </tr>
                            <tr class="AlternatingRow">
                                <td width="241" style="text-align: center; padding-left: 0px;">
                                    因客户违法违规驾驶导致车辆被扣
                                </td>
                                <td width="260" style="text-align: center; padding-left: 0px;">
                                    按车辆实际被扣押天数收取
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">中联租车已经免除车辆维修类的停运损失费，但为保障您的人身财产安全，节省租车费用，请遵法守法、安全驾驶。
                        </span>
                        <br />
                        <br />
                        <span>6. 维修费</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">我们的基本保险、不计免赔服务将最大限度覆盖您出险后的车辆维修费用，但保险公司赔付范围外的车辆维修费用，需由您
                            承担。</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(1) 请您在还车时根据该标准预先支付维修 费用，维修完成后我们将按实际费用多退少补。</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(2) 为了避免您不必要的损失和麻烦，请勿擅自维修车辆。</span>
                        <br />
                        <br />
                        <span>7. 随车物品损失费</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">车内随车设备和物品不在保险公司赔付范围内，如不慎遗失或损坏，请您参照《随车物品清单及价格表》或当地4S店
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 30px;">价格 进行赔偿。为节省您的费用，请您爱惜车辆。</span>
                        <br />
                        <br />
                        <span>8. 其他损失，按租车合同及相关法规协商处理。 </span>
                    </div>
                    <!--租期计费方式-->
                    <div id="zqjffs" style="margin-top: 17px; margin-right: 17px; margin-bottom: 17px;
                        text-align: left; display: none;">
                        <h1>
                            <font style="color: Orange;">租期计费方式</font></h1>
                        <br />
                        <br />
                        <br />
                        <span>1.租期小于1天的，按1天收取车辆租金、基本保险费、可选服务费等费用；</span>
                        <br />
                        <br />
                        <span>2.租期超过1天的： </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">（1） 租期内整日的部分，按天收取车辆租金、基本保险费、可选服务费等费用； </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">（2） 租期内非整日的部分：</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">a) 不足4小时（含4小时）的，按超时费标准计费，不再另计基本保险费、可选服务费；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">b)4小时以上但不足24小时的，计1天租期，按天收取车辆租金、基本保险费、可选服务费等费用。</span>
                        <br />
                        <br />
                        <span>注：周租/月租产品的车辆租金为打包计费，不计免赔服务费、GPS导航费按7天计费，其他费用计费标准同普通产品。</span>
                    </div>
                    <!--结算流程-->
                    <div id="jslc" style="margin-top: 17px; margin-right: 17px; margin-bottom: 17px;
                        text-align: left; display: none;">
                        <h1>
                            <font style="color: Orange;">结算流程</font></h1>
                        <br />
                        <br />
                        <span>1. 取车时：</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(1) 刷取第一次预授，刷取您相应的信用额度或押金； </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(2) 周租/月租产品或需要先付的普通产品，取车时需请您先付预计租金。</span>
                        <br />
                        <br />
                        <span>2. 还车结算：</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">我们支持信用卡、借记卡、储值卡等多种结算，还车时您可以选择适合您的结算方式：</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(1) 在信用卡预授权中扣除租车消费：</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">如在您的租车预授权中扣除租车消费，剩余的预授权额度将在3天左右解冻：</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">a) 招商银行信用卡、民生银行信用卡、工商银行部分联名信用卡可即时解冻；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">b) 工商银行牡丹信用卡，以及部分中国银行、广发银行信用卡解冻时间为7-15个工作日；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">c) 其他银行解冻时间一般为3-5个工作日；</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">各银行解冻时间稍有不同，详情请您咨询发卡行。</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(2) 在首次押金中扣除租车消费：</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">扣除租金后如有押金剩余，余额部分约在15-20个工作日左右退还到您的刷卡账户。为保证您的账户安全，我们将原卡原退
                        </span>
                        <br />
                        <br />
                        <span>3. 第二次预授权</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">针对租车期间可能产生的违章，还车结算后，需请您配合刷取第二次预授权或押金作为违章保证金：</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(1) 金额：</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">a) 租期1-15天：不低于1000元；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">b) 租期16-30天：不低于2000元。</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(2) 第二次预授权/押金刷取方式：</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">a) 信用卡预授权；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">b) 国内银行卡支付押金;</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">c) 首次押金转付;</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">d) 储值卡支付。</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(3) 解冻或退款时间：</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">a) 如无违章：</span>
                        <br />
                        <br />
                        <span style="padding-left: 66px;">■ 预授权：在没有违章的情况下，第二次预授权将在您还车后30天左右自动解冻，各银行自动解冻的参考时间为：</span>
                        <br />
                        <br />
                        <table class="GridView center" style="border-collapse: collapse; width: 400px;">
                            <tr class="HeaderRow">
                                <th width="112">
                                    银行名称
                                </th>
                                <th width="146">
                                    电话
                                </th>
                                <th width="142">
                                    自动解除预授权天数
                                </th>
                            </tr>
                            <tr class="Row">
                                <td>
                                    中国银行
                                </td>
                                <td>
                                    95566
                                </td>
                                <td>
                                    28
                                </td>
                            </tr>
                            <tr class="AlternatingRow">
                                <td>
                                    建设银行
                                </td>
                                <td>
                                    95533
                                </td>
                                <td>
                                    30
                                </td>
                            </tr>
                            <tr class="Row">
                                <td>
                                    招商银行
                                </td>
                                <td>
                                    95555
                                </td>
                                <td>
                                    30
                                </td>
                            </tr>
                            <tr class="AlternatingRow">
                                <td>
                                    工商银行
                                </td>
                                <td>
                                    95588
                                </td>
                                <td>
                                    30
                                </td>
                            </tr>
                            <tr class="Row">
                                <td>
                                    农业银行
                                </td>
                                <td>
                                    95599
                                </td>
                                <td>
                                    30-45
                                </td>
                            </tr>
                            <tr class="AlternatingRow">
                                <td>
                                    交通银行
                                </td>
                                <td>
                                    95559
                                </td>
                                <td>
                                    30
                                </td>
                            </tr>
                            <tr class="Row">
                                <td>
                                    深圳发展银行
                                </td>
                                <td>
                                    95501
                                </td>
                                <td>
                                    30
                                </td>
                            </tr>
                            <tr class="AlternatingRow">
                                <td>
                                    光大银行
                                </td>
                                <td>
                                    95595
                                </td>
                                <td>
                                    30
                                </td>
                            </tr>
                            <tr class="Row">
                                <td>
                                    浦东发展银行
                                </td>
                                <td>
                                    95528
                                </td>
                                <td>
                                    30
                                </td>
                            </tr>
                            <tr class="AlternatingRow">
                                <td>
                                    民生银行
                                </td>
                                <td>
                                    95568
                                </td>
                                <td>
                                    30
                                </td>
                            </tr>
                            <tr class="Row">
                                <td>
                                    广东发展银行
                                </td>
                                <td>
                                    95508
                                </td>
                                <td>
                                    30
                                </td>
                            </tr>
                            <tr class="AlternatingRow">
                                <td>
                                    华夏银行
                                </td>
                                <td>
                                    95577
                                </td>
                                <td>
                                    30
                                </td>
                            </tr>
                            <tr class="Row">
                                <td>
                                    中信银行
                                </td>
                                <td>
                                    95558
                                </td>
                                <td>
                                    30
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <span style="padding-left: 66px;">■ 押金：如在您还车后30天内没有查询到车辆违章，我们将向您退还租车押金：</span>
                        <br />
                        <br />
                        <span style="padding-left: 88px;">◇ 银行卡押金：由于各银行的退款政策和退款周期不同，退款最长在我们发起退款后的15-20个工作日返还
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 95px;">到您 的刷卡账户；</span>
                        <br />
                        <br />
                        <span style="padding-left: 88px;">◇ 储值卡押金：退款将在次日退还到您的储值卡账户，最长不超过3个工作日到账。</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">b) 如有违章，但您不便自行处理或按期处理：</span>
                        <br />
                        <br />
                        <span style="padding-left: 66px;">■ 预授权：我们将采用银行托收的方式在您的二次预授权中直接扣除违章费用及违章违约金，剩余额度在
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 93px;">发卡行银 行规定的解冻期限内解冻；</span>
                        <br />
                        <br />
                        <span style="padding-left: 66px;">■ 押金：我们将在您的押金中扣除相应费用和违章违约金，剩余押金将退还到您的刷卡账户：</span>
                        <br />
                        <br />
                        <span style="padding-left: 88px;">◇ 银行卡押金：由于银行流程，退款最长在我们发起退款后的15-20个工作日返还到您的刷卡账户；</span>
                        <br />
                        <br />
                        <span style="padding-left: 88px;">◇ 储值卡押金：次日退款到您的储值卡账户，最长不超过3个工作日。 </span>
                    </div>
                    <!--储值卡-->
                    <div id="czk" style="margin-top: 17px; margin-right: 17px; margin-bottom: 17px; text-align: left;
                        display: none;">
                        <h1>
                            <font style="color: Orange;">储值卡</font></h1>
                        <br />
                        <br />
                        <span>储值卡是中联租车客户的专属消费卡，购买储值卡时可能会有当季的促销政策，请您购买时留意。</span>
                        <br />
                        <br />
                        <span>1. 储值卡为您本人的实名储值卡，您可持卡在中联租车全国任一门店消费。 </span>
                        <br />
                        <br />
                        <span>2. 购卡说明：</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(1) 储值卡售出后恕不退换；</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(2) 购卡时将为您一次性开具发票，如未给您开具，敬请向购卡门店索取。</span>
                        <br />
                        <br />
                        <span>3. 储值卡使用说明：</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(1) 储值卡支付范围：</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">a) 支持预订时预付；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">b) 支持普通产品、周租/月租产品结算；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">c) 支持支付预授权5000元（含）以下车型的租车押金；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">d) 支持支付违章押金。</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(2) 首次消费时：</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">a) 储值卡需输入密码，并进行关联；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">b) 关联人为储值卡所有人；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">c) 关联后，储值卡所有人消费时可不必凭卡消费；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">d) 首次消费后，购卡返赠的中联币将在结算后次日一次性关联到储值卡所有人名下，此后使用储值卡消费不再另返神
                            州币。</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">(3) 储值卡管理</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">a) 储值卡不计息、不兑换现金；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">b) 储值卡不透支，不可充值，有效期为三年（自购卡之日起计算），过期余额不退；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">c) 储值卡不允许转借；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">d) 如需修改密码，请您致电客服修改；</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">e) 储值卡如有丢失，请致电客服挂失。 </span>
                    </div>
                    <!--会员章程-->
                    <div id="hyzc" style="margin-top: 17px; margin-right: 17px; margin-bottom: 17px;
                        text-align: left; display: none;">
                        <h1>
                            <font style="color: Orange;">会员章程</font></h1>
                        <br />
                        <br />
                        <strong>第一章 总则</strong>
                        <br />
                        <br />
                        <span>中联租车以"Any One、Any Time、Any Car、Any Where"为核心服务理念，竭诚为客户提供简单、安全、省钱的 </span>
                        <br />
                        <br />
                        <span>租车服务。为明确会员的权利和义务，特制定本章程。 </span>
                        <br />
                        <br />
                        <br />
                        <br />
                        <span>第二章 会员资格 </span>
                        <br />
                        <br />
                        <span>凡年龄在18周岁（含）以上、持有有效证件的客户，均可申请入会。</span>
                        <br />
                        <br />
                        <br />
                        <br />
                        <strong>第三章 会员级别说明</strong>
                        <br />
                        <br />
                        <span>3.1 普卡会员 </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">3.1.1 网站、手机客户端、客服中心或门店均提供免费注册，注册后即时生效； </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">3.1.2 会员有效期，自注册之日起三年有效。 </span>
                        <br />
                        <br />
                        <span>3.2 金卡和白金卡会员 </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">3.2.1 会员上一年度的积分满一定分值，获得下一年度的金卡或白金卡会员资格； </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">3.2.2 会员有效期为一年（自当年1月1日至当年12月31日）。</span>
                        <br />
                        <br />
                        <br />
                        <br />
                        <strong>第四章 会员待遇</strong>
                        <br />
                        <br />
                        <span>4.1 不限里程</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">所有级别会员，租车均不限行驶里程（有固定里程限制的产品除外）。 </span>
                        <br />
                        <br />
                        <br />
                        <br />
                        <strong>第五章 会员积分 </strong>
                        <br />
                        <br />
                        <span>5.1 积分获取 </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">5.1.1 会员每成功租车一次，积分1分；当次租期在4天（含）以上时，额外增加积分1分 ；
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">5.1.2 会员还车结算后的7日内，积分计入会员名下。 </span>
                        <br />
                        <br />
                        <span>5.3 积分有效期为一年，每年1月1日至12月31日期间的积分可累加，次年1月1日起清零重新计算。 </span>
                        <br />
                        <br />
                        <span>5.4 会员积分仅限用于会员定级，不用于抵扣租车消费和礼品兑换。 </span>
                        <br />
                        <br />
                        <span>5.5 积分定级 </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">5.5.1 中联租车每年1月1日根据会员积分执行会员定级，定级当日起，会员按定级后新的会员级别享受会员待遇</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">5.5.2 对于有不良预订或消费记录的会员，中联租车在积分定级时，有权对会员资格进行再认定。
                        </span>
                        <br />
                        <br />
                        <br />
                        <br />
                        <strong>第六章 会员权利与义务 </strong>
                        <br />
                        <br />
                        <span>会员资格仅限会员本人使用。</span>
                        <br />
                        <br />
                        <span>6.1 会员权利 </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">会员享有使用中联租车产品和服务的权益。 </span>
                        <br />
                        <br />
                        <span>6.2 会员义务 </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">6.2.1 会员租车时需遵守中联租车的产品和服务规定； </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">6.2.2 会员的资料发生变更（如工作变动、住址迁移、联系方式变动或单位名称变更、单位迁址等信息等）时，
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">应及时通知中联租车。</span>
                        <br />
                        <br />
                        <br />
                        <br />
                        <strong>第七章 附则 </strong>
                        <br />
                        <br />
                        <span>7.1 中联租车将在每年1月1日更新本章程，旧版同期作废。 </span>
                        <br />
                        <br />
                        <span>7.2 《会员细则》是本章程的有效补充部分，中联租车将在每年12月15日前公布下一年的《会员细则》，</span>
                        <br />
                        <br />
                        <span style="padding-left: 5px;">明确次年的会员定级规则及优惠计划。 </span>
                        <br />
                        <br />
                        <span>7.3 中联租车有权在任何时候更改中联租车会员服务计划的任何规定或终止当年会员服务计划，即使计划的修改或 </span>
                        <br />
                        <br />
                        <span style="padding-left: 5px;">终止会影响会员积分累积，且不承担事先通知的义务。</span>
                        <br />
                        <br />
                        <span>7.4 本章程由中联租车制定，中联租车拥有最终解释权。</span>
                    </div>
                    <!--会员细则-->
                    <div id="hyxz" style="margin-top: 17px; margin-right: 17px; margin-bottom: 17px;
                        text-align: left; display: none;">
                        <h1>
                            <font style="color: Orange;">会员细则</font></h1>
                        <br />
                        <br />
                        <strong>1. 2013年会员定级</strong>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">2013年会员级别根据会员2012年的会员积分确定，具体如下：</span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">2012年积分满5分，2013年为金卡会员；2012年会员积分满15分，2013年为白金卡会员；
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">不满足以上定级条件的会员，根据实际积分定级。</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">2012年会员积分将于2012年12月31日晚24点自动清零。</span>
                        <br />
                        <br />
                        <br />
                        <br />
                        <span>2014年会员级别根据会员2013年的会员积分确定，具体如下：</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">2013年积分满5分，2014年为金卡会员；2013年会员积分满15分，2014年为白金卡会员；
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 44px;">不满足以上定级条件的会员，根据实际积分定级。</span>
                    </div>
                    <!--新手上路-->
                    <div id="xssl" style="margin-top: 17px; margin-right: 17px; margin-bottom: 17px;
                        text-align: left; display: none;">
                        <h1>
                            <font style="color: Orange;">新手上路</font></h1>
                        <br />
                        <br />
                        <strong>如何注册</strong>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">1. 点击首页的"注册"按钮，进入免费注册页面，按照要求填写注册信息。</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">2. 仔细阅读会员服务条款，点击"立即开通"按钮，完成注册。</span>
                        <br />
                        <br />
                        <div align="center">
                            <img src="images/register.jpg" />
                        </div>
                        <br />
                        <br />
                        <strong>如何登陆</strong>
                        <br />
                        <div align="center">
                            <img src="images/login.jpg" />
                        </div>
                        <br />
                        <br />
                        <strong>门店预订</strong>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">光临中联租车门店，由门店人员协助预订，或直接选租车辆。</span>
                        <br />
                        <br />
                        <strong>网站预订</strong>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">登录http://zlzc66.h103.996h.cn/按网页提示进行预订。 </span>
                        <br />
                        <br />
                        <strong>电话预订</strong>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">致电中联租车24小时客户服务中心12345678，由客服人员协助预订。</span>
                    </div>
                    <!--常见问题-->
                    <div id="cjwt" style="margin-top: 17px; margin-right: 17px; margin-bottom: 17px;
                        text-align: left; display: none;">
                        <h1>
                            <font style="color: Orange;">常见问题</font></h1>
                        <br />
                        <br />
                        <strong>01. 客户具备什么条件可享受租车服务？ </strong>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">（1）年龄在18周岁（含）以上；</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">（2）拥有大陆地区有效驾驶证；</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">（3）提供本人有效身份证明；</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">（4）持有本人有效信用卡或国内借记卡。 </span>
                        <br />
                        <br />
                        <br />
                        <br />
                        <strong>02. 哪些身份证明可以作为租车的身份证件？ </strong>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">目前，本人有效身份证件包括：</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">境内客户：二代身份证</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">港澳客户：港澳居民来往内地通行证</span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">台湾客户：大陆通行证 </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">外籍客户：护照，签证/居住证 </span>
                        <br />
                        <br />
                        <br />
                        <br />
                        <strong>03. 我不是中国大陆公民，可以在你们这里租车吗？ </strong>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">可以，但是由于外籍客户及港澳台客户身份验证时间较长，所以您第一次租车时，请提前至少1个工作日向预订部门
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">提供您的签证、护照扫描件或传真件，以保证您能按时用车；请特别留意，周末及法定节假日无法进行身份验证。</span>
                        <br />
                        <br />
                        <br />
                        <br />
                        <strong>04. 租车有户籍限制吗？ </strong>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">没有 </span>
                        <br />
                        <br />
                        <br />
                        <br />
                        <strong>05. 如果本人没有信用卡或信用卡额度不足，可以租车吗？ </strong>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">如果您没有信用卡或额度不足，您可以请有信用卡的亲友为您担保，担保人需持有效身份证件、足够额度的信用卡，
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">和您一同到店取车并在《租车单》上签字，担保人将对您租车期间所产生的一切费用及责任承担无限连带责任；
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">此外，标准租车预授权在5000元及以下的车型，您可以使用国内借记卡支付与租车预授权相等额度的押金。
                        </span>
                        <br />
                        <br />
                        <br />
                        <br />
                        <strong>06. 租车时，如果我没有足够额度的信用卡，能不能用两张信用卡累计进行预授权担保？ </strong>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">很抱歉，中联租车不接受两张信用卡刷取同一笔预授权，建议您寻找一位符合条件的信用卡担保人为您担保，或者您
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">可以租用预授权在5000元及以下的车型并使用国内借记卡支付押金。 </span>
                        <br />
                        <br />
                        <br />
                        <br />
                        <strong>07. 租车时是否能够用现金作为担保押金？ </strong>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">很抱歉，中联租车不接受现金担保。 </span>
                        <br />
                        <br />
                        <br />
                        <br />
                        <strong>08. 什么是级别订车？和车型订车有什么区别？ </strong>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">您在预订时指定车辆级别（如手动紧凑型轿车）、不指定具体车型的预订，即为级别预订。在按级别预订的情况下，
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">您将享受一定幅度的价格优惠或专属促销，取车时您的用车将可能是预订级别内的任一款车型。 </span>
                        <br />
                        <br />
                        <br />
                        <br />
                        <strong>09. 每次租车的数量有限制吗？ </strong>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">有。每位客户每次限租1辆（每位信用卡担保人每次限担保1辆），即在您所租车辆未归还前，不能租用其他车辆。
                        </span>
                        <br />
                        <br />
                        <br />
                        <br />
                        <strong>10. 无法提供已预订的车辆时会如何处理？ </strong>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">若因特殊原因无法为您提供已成功预订的车型时，我们将为您调整或免费升级就近车型； </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">特殊情况无法履行订单的，我们将至少提前6小时告知您，并按您订单的首日日租金标准向您补偿等额中联币；
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">如果您已经成功预付，除退还您预付的租金外，我们还将为您补偿双倍已预付金额的中联币或单倍已预付金额的现金。
                        </span>
                        <br />
                        <br />
                        <br />
                        <br />
                        <strong>11. 预订送车上门服务需预先支付费用吗？ </strong>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">单就送车上门服务，预订时不需要您预付任何费用。但如果您是节假日用车或您选择的是顺风车、有预付条款的产品，
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">提交订单后，网页或受理人员会提醒您需要预付及预付金额等信息。 </span>
                        <br />
                        <br />
                        <br />
                        <br />
                        <strong>12. 预订送车上门或上门取车服务需要提前预订吗？ </strong>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">如需送车上门或上门取车服务，建议您提前24小时预订；若不能提前24小时预订，您可以先预订，随后会有工作人员
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">与您电话联系，确认服务能否提供。 </span>
                        <br />
                        <br />
                        <br />
                        <br />
                        <strong>13. 如何确认我的预订是否成功？ </strong>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">成功预订后，系统将在3分钟内自动发送成功预订的确认短信到您的手机。经短信确认的预订即为有效预订。
                        </span>
                        <br />
                        <br />
                        <br />
                        <br />
                        <strong>14. 我预订的车辆能够保留多长时间？ </strong>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">我们会从您预订的取车时间起保留半小时的取车时间；如果超过预订取车时间半个小时仍未取车，订单将自动取消；
                        </span>
                        <br />
                        <br />
                        <span style="padding-left: 24px;">如需延时取车，请您在预订取车时间前主动联系我们，我们将为您保留车辆，取车时间将按您原预订的取车时间起算。
                        </span></span>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
