<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSiteMaster.Master" AutoEventWireup="true"
    CodeBehind="FocusImageList.aspx.cs" Inherits="ZLzuche.Admin.FocusImageList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>焦点图列表</title>
    <script language="javascript" type="text/javascript">
        function NewFocusImage() {
            var iWidth = 600; //窗口宽度
            var iHeight = 400; //窗口高度
            var iTop = (window.screen.height - iHeight) / 2;
            var iLeft = (window.screen.width - iWidth) / 2;
            window.open("AddFocusImage.aspx", "New", "Scrollbars=no,Toolbar=no,Location=no,Direction=no,Resizeable=no,Width=" + iWidth + " ,Height=" + iHeight + ",top=" + iTop + ",left=" + iLeft);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding-top: 10px;">
        <table cellpadding="0" cellspacing="0" border="0" class="center" style="width: 980px;">
            <tr>
                <td>
                    <asp:LinkButton runat="server" ID="BtnNew" CssClass="btn" OnClientClick="NewFocusImage();return false;">
                        <div>新增</div>
                    </asp:LinkButton>
                    <div style="padding-top: 10px;">
                    </div>
                    <asp:GridView ID="CarTypeGrid" runat="server" BackColor="White" BorderColor="#E7E7FF"
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" AutoGenerateColumns="False"
                        DataKeyNames="ID" OnRowDataBound="CarTypeGrid_RowDataBound" OnRowDeleting="CarTypeGrid_RowDeleting"
                        rows>
                        <Columns>
                            <asp:TemplateField HeaderText="焦点图">
                                <ItemTemplate>
                                    <a href="../images/FocusImage/<%#Eval("FileName")%>" target ="_blank">
                                        <%#Eval("FileName")%></a>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="描述" HeaderStyle-Width="300px">
                                <ItemTemplate>
                                    <%#Eval("Describe")%>
                                </ItemTemplate>
                                <HeaderStyle Width="300px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="链接地址" HeaderStyle-Width="300px">
                                <ItemTemplate>
                                    <a href="<%#Eval("LinkURL")%>" target="_blank"> 
                                        <%#Eval("LinkURL")%></a>
                                </ItemTemplate>
                                <HeaderStyle Width="300px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="创建时间" HeaderStyle-Width="300px">
                                <ItemTemplate>
                                    <%#Eval("CreateTime")%>
                                </ItemTemplate>
                                <HeaderStyle Width="300px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:CommandField ShowDeleteButton="True">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:CommandField>
                        </Columns>
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
