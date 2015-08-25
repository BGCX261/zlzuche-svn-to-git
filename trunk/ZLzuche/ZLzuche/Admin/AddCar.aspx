<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCar.aspx.cs" Inherits="ZLzuche.Admin.AddCar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>新增车辆</title>
    <script type="text/javascript" src='<%=this.ResolveUrl("~/Scripts/jquery.min.js") %>'></script>
    <link href="../Styles/Register.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" language="javascript">
        function CheckForm() {
            var shopId = $("#ShopId").val();
            if (shopId <= 0) {
                alert("请选择店铺");
                return false;
            }
            var cartypeid = $("#CarTypeId").val();
            if (cartypeid <= 0) {
                alert("请选择车辆品牌");
                return false;
            }
            var CarModel = $("#CarModel").val();
            if (CarModel.trim() == "") {
                alert("请输入车辆型号");
                return false;
            }
            var BasicInsure = $("#BasicInsure").val();
            if (BasicInsure.trim() == "") {
                alert("请输入基本险");
                return false;
            }
            var CarNum = $("#CarNum").val();
            if (CarNum.trim() == "") {
                alert("请输入车辆数量");
                return false;
            }
            var CarAge = $("#CarAge").val();
            if (CarAge.trim() == "") {
                alert("请输入车龄");
                return false;
            }
            var PreAuthorization = $("#PreAuthorization").val();
            if (PreAuthorization.trim() == "") {
                alert("请输入预授权");
                return false;
            }
            var Price = $("#Price").val();
            if (Price.trim() == "") {
                alert("请输入租价");
                return false;
            }
            var drpDerailleur = $("#drpDerailleur").val();
            if (drpDerailleur <= 0) {
                alert("请选择变速箱类型");
                return false;
            }
            var MonthPrice = $("#MonthPrice").val();
            if (MonthPrice.trim() == "") {
                alert("请输入月租金");
                return false;
            }
            var Status = $("#Status").val();
            if (Status <= 0) {
                alert("请选择车辆状态");
                return false;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <table class="myTable">
        <tr>
            <td width="100px;">
                <asp:Label runat="server" Text="所属店铺"></asp:Label>
            </td>
            <td width="150px;">
                <asp:DropDownList ID="ShopId" runat="server" Width="150px">
                </asp:DropDownList>
            </td>
            <td width="100px;">
                <asp:Label runat="server" Text="车辆品牌"></asp:Label>
            </td>
            <td width="150px;">
                <asp:DropDownList ID="CarTypeId" runat="server" Width="150px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td width="100px;">
                <asp:Label ID="Label4" runat="server" Text="车辆名称"></asp:Label>
            </td>
            <td width="150px;">
                <asp:TextBox runat="server" ID="CarName" Width="150px">
                </asp:TextBox>
            </td>
            <td width="100px;">
                <asp:Label ID="Label5" runat="server" Text="车辆图片"></asp:Label>
            </td>
            <td width="150px;">
                <asp:FileUpload ID="carpic" runat="server" />
            </td>
        </tr>
        <tr>
            <td width="100px;">
                <asp:Label ID="Label3" runat="server" Text="车辆数量"></asp:Label>
            </td>
            <td width="150px;">
                <asp:TextBox runat="server" ID="CarNum" Width="150px">
                </asp:TextBox>
            </td>
            <td width="100px;">
                <asp:Label ID="Label6" runat="server" Text="车龄"></asp:Label>
            </td>
            <td width="150px;">
                <asp:TextBox runat="server" ID="CarAge" Width="150px">
                </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="100px;">
                <asp:Label runat="server" Text="车辆型号"></asp:Label>
            </td>
            <td width="150px;">
                <asp:TextBox runat="server" ID="CarModel" Width="150px">
                </asp:TextBox>
            </td>
            <td width="100px;">
                <asp:Label runat="server" Text="基本险"></asp:Label>
            </td>
            <td width="150px;">
                <asp:TextBox runat="server" ID="BasicInsure" Width="150px">
                </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="100px;">
                <asp:Label runat="server" Text="预授权"></asp:Label>
            </td>
            <td width="150px;">
                <asp:TextBox runat="server" ID="PreAuthorization" Width="150px">
                </asp:TextBox>
            </td>
            <td width="100px;">
                <asp:Label runat="server" Text="租价(天)"></asp:Label>
            </td>
            <td width="150px;">
                <asp:TextBox runat="server" ID="Price" Width="150px">
                </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="100px;">
                <asp:Label ID="Label7" runat="server" Text="变速箱"></asp:Label>
            </td>
            <td width="150px;">
                <asp:DropDownList ID="drpDerailleur" runat="server" Width="150px">
                    <asp:ListItem Value="0" Selected="True">--请选择--</asp:ListItem>
                    <asp:ListItem Value="手动挡" >手动挡</asp:ListItem>
                    <asp:ListItem Value="自动挡">自动挡</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td width="100px;">
                <asp:Label ID="Label8" runat="server" Text="月租金(元)"></asp:Label>
            </td>
            <td width="150px;">
                <asp:TextBox runat="server" ID="MonthPrice" Width="150px">
                </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="100px;">
                <asp:Label runat="server" Text="是否限制里程"></asp:Label>
            </td>
            <td width="150px;">
                <%--                <asp:TextBox runat="server" ID="IsMileage" Width="150px">
                </asp:TextBox>--%>
                <asp:DropDownList ID="IsMileage" runat="server" Width="150px">
                    <asp:ListItem Value="不限里程" Selected="True">不限里程</asp:ListItem>
                    <asp:ListItem Value="有限里程">有限里程</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td width="100px;">
                <asp:Label runat="server" Text="车辆状态"></asp:Label>
            </td>
            <td width="150px;">
                <%--                <asp:TextBox runat="server" ID="Status" Width="150px">
                </asp:TextBox>--%>
                <asp:DropDownList ID="Status" runat="server" Width="150px">
                    <asp:ListItem Value="0" Selected="True">--请选择--</asp:ListItem>
                    <asp:ListItem Value="已出租">已出租</asp:ListItem>
                    <asp:ListItem Value="待出租">待出租</asp:ListItem>
                    <asp:ListItem Value="保养中">保养中</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td width="100px;">
                <asp:Label ID="Label1" runat="server" Text="描述"></asp:Label>
            </td>
            <td colspan="3" width="300px;">
                <asp:TextBox runat="server" ID="Describe" TextMode="MultiLine" Width="400px" Rows="3">
                </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="100px;">
                <asp:Label ID="Label2" runat="server" Text="备注"></asp:Label>
            </td>
            <td colspan="3" width="300px;">
                <asp:TextBox runat="server" ID="Remark" TextMode="MultiLine" Width="400px" Rows="3">
                </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="100px;">
            </td>
            <td colspan="3" width="300px;">
                <asp:LinkButton runat="server" ID="btnNew" CssClass="btn" OnClientClick=" return CheckForm();" OnClick="btnNew_Click">
                    <div>
                        保存
                    </div>
                </asp:LinkButton>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
