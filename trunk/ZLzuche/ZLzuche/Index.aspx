<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs"
    Inherits="ZLzuche.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .ul_news
        {
            margin-left: 60px;
            margin-right: 40px;
        }
        
        .ul_news li
        {
            float: left;
            width: 250px;
            line-height: 22px;
            text-align: left;
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
    </style>
    <script src="<%=this.ResolveUrl("~/Scripts/PImgPlayer.js") %>" type="text/javascript"></script>
    <script type="text/javascript">
        function switch_rant_tab(rentContentId) {
            if (rentContentId == "short_rent") {
                $("#short_rent").show();
                $("#long_rent").hide();
                $("#tab_short_rent").attr("class", "tab_selected");
                $("#tab_long_rent").attr("class", "tab_noselected");
            } else if (rentContentId == "long_rent") {
                $("#long_rent").show();
                $("#short_rent").hide();
                $("#tab_short_rent").attr("class", "tab_noselected");
                $("#tab_long_rent").attr("class", "tab_selected");
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="shortrent" />
    <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="longrent" />
    <asp:ScriptManager runat="server">
    </asp:ScriptManager>
    <div style="padding-top: 10px;" class="center_container">
        <table cellpadding="0" cellspacing="0" border="0" class="center" style="width: 976px;">
            <tr>
                <td id="leftSearch" style="width: 330px; vertical-align: top;">
                    <div>
                        <table cellpadding="0" cellspacing="0" border="0">
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
                                                <a href="#" onclick="switch_rant_tab('long_rent')">长租（90天以上） </a>
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
                                                                        AutoPostBack="True" 
                                                                        onselectedindexchanged="ddlShortRentTakeCity_SelectedIndexChanged">
                                                                        <asp:ListItem Text="--请选择--" Value=""></asp:ListItem>
                                                                    </asp:DropDownList>
                                                                    <asp:Label runat="server" ID="lblShortRentTakeCity"></asp:Label>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="shortrent" ControlToValidate="ddlShortRentTakeCity" ForeColor="red" ErrorMessage="取车城市不能为空"></asp:RequiredFieldValidator>
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
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="shortrent" ControlToValidate="ddlTakeStore" ForeColor="red" ErrorMessage="取车门店不能为空"></asp:RequiredFieldValidator>
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
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="shortrent" ControlToValidate="txtTakeTime" ForeColor="red" ErrorMessage="取车时间不能为空"></asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr style="height:36px;">
                                                                <td class="right_justifying rent_title">
                                                                    还车时间
                                                                </td>
                                                                <td class="left_justifying paddingleft_10" colspan="2">
                                                                    <asp:TextBox ID="txtReturnTime" runat="server" ClientIDMode="Static" Width="120" CssClass="Wdate" onfocus="WdatePicker({minDate:'#F{$dp.$D(\'txtTakeTime\')}'})"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="shortrent" ControlToValidate="txtReturnTime" ForeColor="red" ErrorMessage="还车时间不能为空"></asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </contenttemplate>
                                                </asp:UpdatePanel>
                                                <div style="padding-top: 30px;">
                                                        <asp:LinkButton runat="server" ID="lbnShortRent" onclick="lbnShortRent_Click" CssClass="btn" ValidationGroup="shortrent">
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
                                    <%--长租--%>
                                    <table id="long_rent" cellpadding="0" cellspacing="0" border="0" style="display: none;">
                                        <tr>
                                            <td style="width: 322px; height: 300px; vertical-align: top;">
                                                <asp:UpdatePanel runat="server">
                                                    <contenttemplate>
                                                        <table class="long_rent">
                                                            <tr style="height:20px;">
                                                                <td style="width: 80px;"></td>
                                                                <td style="width:140px;"></td>
                                                            </tr>
                                                            <tr style="height:36px;">
                                                                <td class="right_justifying">
                                                                    取车城市
                                                                </td>
                                                                <td class="left_justifying paddingleft_10">
                                                                    <asp:TextBox ID="txtLongRentTakeCity" runat="server"></asp:TextBox>
                                                                    <asp:Label runat="server" ID="lblLongRentTakeCity"></asp:Label>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="longrent" ControlToValidate="txtLongRentTakeCity" ForeColor="red" ErrorMessage="取车城市不能为空"></asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr style="height:36px;">
                                                                <td class="right_justifying">
                                                                    取车日期
                                                                </td>
                                                                <td class="left_justifying paddingleft_10">
                                                                    <asp:TextBox ID="txtLongRantTakeDate" runat="server" CssClass="Wdate" onfocus="WdatePicker()"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="longrent" ControlToValidate="txtLongRantTakeDate" ForeColor="red" ErrorMessage="取车日期不能为空"></asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr style="height:36px;">
                                                                <td class="right_justifying">
                                                                    租&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;期
                                                                </td>
                                                                <td class="left_justifying paddingleft_10">
                                                                    <asp:DropDownList runat="server" ID="ddlRentCycle" Width="120">
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
                                                                    
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ValidationGroup="longrent" ControlToValidate="ddlRentCycle" ForeColor="red" ErrorMessage="取期不能为空"></asp:RequiredFieldValidator>
<%--                                                                    <asp:SqlDataSource ID="dsRentCycle" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultDB %>"
                                                                     SelectCommand="SELECT * FROM [SysDict] t where t.DictType = 1 order by t.OrderNo"></asp:SqlDataSource>--%>
                                                                </td>
                                                            </tr>
                                                            <tr style="height:36px;">
                                                                <td class="right_justifying">
                                                                    品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;牌
                                                                </td>
                                                                <td class="left_justifying paddingleft_10">
                                                                    <asp:DropDownList runat="server" ID="ddlBrank" DataTextField="CarTypeName" DataSourceID="dsBrank"
                                                                        DataValueField="Id" AutoPostBack="True"/>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ValidationGroup="longrent" ControlToValidate="ddlBrank" ForeColor="red" ErrorMessage="品牌不能为空"></asp:RequiredFieldValidator>
                                                                    <asp:SqlDataSource ID="dsBrank" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultDB %>"
                                                                     SelectCommand="
                                                                     select '' as Id,'--请选择--' as CarTypeName,0 as GroupId union all
                                                                     SELECT Id,CarTypeName,1 as GroupId FROM [CarType] t order by GroupId,CarTypeName
                                                                     "></asp:SqlDataSource>
                                                                </td>
                                                            </tr>
                                                            <tr style="height:36px;">
                                                                <td class="right_justifying">
                                                                    车&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;型
                                                                </td>
                                                                <td class="left_justifying paddingleft_10">
                                                                    <asp:DropDownList runat="server" ID="ddlCar" DataSourceID="dsCar" DataTextField="CarName" DataValueField="Id"/>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ValidationGroup="longrent" ControlToValidate="ddlCar" ForeColor="red" ErrorMessage="车型不能为空"></asp:RequiredFieldValidator>
                                                                    <asp:SqlDataSource ID="dsCar" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultDB %>"
                                                                     SelectCommand="
                                                                        select '' as Id,'--请选择--' as CarName,0 as GroupId union all
                                                                        SELECT Id,CarName,1 FROM [Car] t where (isnull(@CarTypeId,0) = 0 or t.CarTypeId = @CarTypeId) order by GroupId, CarName
                                                                       ">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter Name="CarTypeId" ControlID="ddlBrank" PropertyName="Text" DefaultValue="0" Type="Int32"/>
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </contenttemplate>
                                                </asp:UpdatePanel>
                                                <div style="padding-top: 30px;">
                                                        <asp:LinkButton runat="server" ID="lbnLongRent" CssClass="btn" ValidationGroup="longrent">
                                                            <div>
                                                                下一步
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
                    <div style="height: 12px;">
                    </div>
                    <div>
                        <img src="images/index_62.gif" width="330" height="140" alt=""></div>
                </td>
                <td id="splitPanel" style="width: 20px;">
                </td>
                <td id="rightContent" style="vertical-align: top;">
                    <div>
                        <div id="imgADPlayer">
                        </div>
                        <!-- 首页焦点图开始 -->
                        <script type="text/javascript">
                            <asp:Repeater runat="server" ID="repFocusImage">
                                <ItemTemplate>
                                    PImgPlayer.addItem('<%#Eval("Describe") %>', '<%#Eval("LinkURL") %>', '<%#Eval("Id","images/FocusImage/{0}.gif") %>');
                                 </ItemTemplate>
                                <FooterTemplate>
                                    PImgPlayer.init("imgADPlayer", 622, 268, true);
                                </FooterTemplate>
                            </asp:Repeater>
                        </script>
                        <!-- 首页焦点图结束 -->
                    </div>
                    <div style="height: 10px;">
                    </div>
                    <div>
                        <table cellpadding="0" cellspacing="0" border="0" style="width: 620px; border: solid 1px #4A9AD9;">
                            <tr>
                                <td>
                                    <img src="images/index_38.gif" width="621" height="30" alt="">
                                </td>
                            </tr>
                            <tr style="border: solid 1px red;">
                                <td>
                                    <ul class="ul_news">
                                        <asp:Repeater runat="server" DataSourceID="dsThhd">
                                            <ItemTemplate>
                                                <li>
                                                    <a href='<%# string.Format(this.ResolveUrl("~/ViewNew.aspx?Id={0}"), Eval("Id")) %>' target="_blank">
                                                        <%#Eval("Subject") %>
                                                    </a>
                                                </li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:SqlDataSource ID="dsThhd" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultDB %>"
                                            SelectCommand="SELECT * FROM (
	                                            SELECT ROW_NUMBER()OVER(ORDER BY t.CreateTime DESC) AS RowNum, * FROM News t WHERE t.NewType = '特惠活动'
                                            ) AS t WHERE t.RowNum < 10 ">
                                        </asp:SqlDataSource>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <hr style="border: orange dashed 1px;" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="images/index_46.gif" width="621" height="23" alt="">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="ul_news">
                                        <asp:Repeater runat="server" ID="repXFStation" DataSourceID="dsXFStation">
                                            <ItemTemplate>
                                                <li>
                                                    <%#Eval("GetCarTime","{0:yyyy-MM-dd}") %><%#Eval("CarTypeName") %><%#Eval("CarName") %>【租出】
                                                </li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:SqlDataSource runat="server" ID="dsXFStation" ConnectionString="<%$ ConnectionStrings:DefaultDB %>" SelectCommand="
                                        SELECT * FROM (
	                                        SELECT ROW_NUMBER()OVER(ORDER BY t.CreateTime DESC) AS RowId, t4.GetCarTime,t2.CarName,t3.CarTypeName
	                                        FROM dbo.OrderDetails t INNER JOIN Car t2 ON t.CarId = t2.ID 
		                                        INNER JOIN dbo.CarType t3 ON t2.CarTypeId = t3.ID
		                                        INNER JOIN dbo.Orders t4 ON t.OrderId = t4.ID
	                                        WHERE t.Status = 0
                                        ) tt WHERE tt.RowId < 11 ORDER BY tt.RowId"></asp:SqlDataSource>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <hr style="border: orange dashed 1px;" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="images/index_59.gif" width="621" height="22" alt="">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="ul_news">
                                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="dsNewsCenter">
                                            <ItemTemplate>
                                                <li>
                                                    <a href='<%# string.Format(this.ResolveUrl("~/ViewNew.aspx?Id={0}"), Eval("Id")) %>' target="_blank">
                                                        <%#Eval("Subject") %>
                                                    </a>
                                                </li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:SqlDataSource ID="dsNewsCenter" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultDB %>"
                                            SelectCommand="
                                            SELECT * FROM (
	                                            SELECT ROW_NUMBER()OVER(ORDER BY t.CreateTime DESC) AS RowNum, * FROM News t WHERE t.NewType = '新闻中心'
                                            ) AS t WHERE t.RowNum < 10
                                            ">
                                        </asp:SqlDataSource>
                                    </ul>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="height: 10px;">
                    </div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
