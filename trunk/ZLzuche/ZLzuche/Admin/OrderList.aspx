<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSiteMaster.Master" AutoEventWireup="true"
    CodeBehind="OrderList.aspx.cs" Inherits="ZLzuche.Admin.OrderList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>订单列表</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding-top: 10px;">
        <table cellpadding="0" cellspacing="0" border="0" class="center" style="width: 980px;">
            <tr>
                <td>
                    <asp:GridView ID="OrderGrid" runat="server" SkinID="gv"
                        DataKeyNames="ID">
                        <Columns>
                            <asp:TemplateField HeaderText="会员姓名" HeaderStyle-Width="100px">
                                <ItemTemplate>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="所租车辆" HeaderStyle-Width="100px">
                                <ItemTemplate>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="订单类型" HeaderStyle-Width="100px">
                                <ItemTemplate>
                                    <%#Eval("OrderType")%>
                                </ItemTemplate>
                                <HeaderStyle Width="100px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="取车时间" HeaderStyle-Width="100px">
                                <ItemTemplate>
                                    <%#Eval("GetCarTime")%>
                                </ItemTemplate>
                                <HeaderStyle Width="100px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="还车时间" HeaderStyle-Width="100px">
                                <ItemTemplate>
                                    <%#Eval("ReturnCarTime")%>
                                </ItemTemplate>
                                <HeaderStyle Width="100px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="租期" HeaderStyle-Width="150px">
                                <ItemTemplate>
                                    <%#Eval("HireDays")%>
                                </ItemTemplate>
                                <HeaderStyle Width="150px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="押金" HeaderStyle-Width="150px">
                                <ItemTemplate>
                                    <%#Eval("Deposit")%>
                                </ItemTemplate>
                                <HeaderStyle Width="150px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="备注" HeaderStyle-Width="150px">
                                <ItemTemplate>
                                    <%#Eval("Remark")%>
                                </ItemTemplate>
                                <HeaderStyle Width="150px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
