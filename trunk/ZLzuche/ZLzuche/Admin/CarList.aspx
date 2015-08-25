<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSiteMaster.Master" AutoEventWireup="true"
    CodeBehind="CarList.aspx.cs" Inherits="ZLzuche.Admin.CarList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>车辆列表</title>
    <script language="javascript" type="text/javascript">
        function NewCar() {
            var iWidth = 600; //窗口宽度
            var iHeight = 600; //窗口高度
            var iTop = (window.screen.height - iHeight) / 2;
            var iLeft = (window.screen.width - iWidth) / 2;
            window.open("AddCar.aspx", "New", "Scrollbars=no,Toolbar=no,Location=no,Direction=no,Resizeable=no,Width=" + iWidth + " ,Height=" + iHeight + ",top=" + iTop + ",left=" + iLeft);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding-top: 10px;">
        <table cellpadding="0" cellspacing="0" border="0" class="center" style="width: 980px;">
            <tr>
                <td>
                    <asp:LinkButton runat="server" ID="BtnNew" CssClass="btn" OnClientClick="NewCar();return false;">
                        <div>新增</div>
                    </asp:LinkButton>

                    <asp:GridView ID="CarTypeGrid" runat="server" SkinID="gv"
                        DataKeyNames="ID" OnRowDataBound="CarTypeGrid_RowDataBound" OnRowEditing="CarTypeGrid_RowEditing"
                        OnRowDeleting="CarTypeGrid_RowDeleting" OnRowUpdating="CarTypeGrid_RowUpdating"
                        OnRowCancelingEdit="CarTypeGrid_RowCancelingEdit" rows>
                        <Columns>
                            <asp:TemplateField HeaderText="所属店铺" HeaderStyle-Width="100px">
                                <ItemTemplate>
                                    <%# GetShopName(Convert.ToString(Eval("ShopId")))%>
                                </ItemTemplate>
                                <HeaderStyle Width="100px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="汽车品牌" HeaderStyle-Width="100px">
                                <ItemTemplate>
                                   <%# GetCarTypeName(Convert.ToString(Eval("CarTypeId")))%>
                                </ItemTemplate>
                                <HeaderStyle Width="100px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="车辆名称" HeaderStyle-Width="100px">
                                <ItemTemplate>
                                    <%#Eval("CarName")%>
                                </ItemTemplate>
                                <HeaderStyle Width="100px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="车辆型号" HeaderStyle-Width="100px">
                                <ItemTemplate>
                                    <%#Eval("CarModel")%>
                                </ItemTemplate>
                                <HeaderStyle Width="100px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="基本险" HeaderStyle-Width="100px">
                                <ItemTemplate>
                                    <%#Eval("BasicInsure")%>
                                </ItemTemplate>
                                <HeaderStyle Width="100px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="预授权" HeaderStyle-Width="100px">
                                <ItemTemplate>
                                    <%#Eval("PreAuthorization")%>
                                </ItemTemplate>
                                <HeaderStyle Width="100px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="租价" HeaderStyle-Width="100px">
                                <ItemTemplate>
                                    <%#Eval("Price")%>
                                </ItemTemplate>
                                <HeaderStyle Width="100px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="是否限制里程" HeaderStyle-Width="100px">
                                <ItemTemplate>
                                    <%#Eval("IsMileage")%>
                                </ItemTemplate>
                                <HeaderStyle Width="100px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="状态" HeaderStyle-Width="100px">
                                <ItemTemplate>
                                    <%#Eval("Status")%>
                                </ItemTemplate>
                                <HeaderStyle Width="100px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="描述" HeaderStyle-Width="100px">
                                <ItemTemplate>
                                    <%#Eval("Describe")%>
                                </ItemTemplate>
                                <HeaderStyle Width="100px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
