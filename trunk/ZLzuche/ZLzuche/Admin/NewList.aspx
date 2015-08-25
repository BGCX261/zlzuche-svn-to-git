<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSiteMaster.Master" AutoEventWireup="true"
    CodeBehind="NewList.aspx.cs" Inherits="ZLzuche.Admin.NewList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>新闻列表</title>
    <script language="javascript" type="text/javascript">
        function NewCarType() {
            var iWidth = 900; //窗口宽度
            var iHeight = 800; //窗口高度
            var iTop = (window.screen.height - iHeight) / 2;
            var iLeft = (window.screen.width - iWidth) / 2;
            window.open("AddNew.aspx", "New", "Scrollbars=no,Toolbar=no,Location=no,Direction=no,Resizeable=no,Width=" + iWidth + " ,Height=" + iHeight + ",top=" + iTop + ",left=" + iLeft);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding-top: 10px;">
        <table cellpadding="0" cellspacing="0" border="0" class="center" style="width: 980px;">
            <tr>
                <td>
                    <asp:LinkButton runat="server" ID="BtnNew" CssClass="btn" OnClientClick="NewCarType();return false;">
                        <div>新增</div>
                    </asp:LinkButton>
                    <div style="padding-top: 10px;">
                    </div>
                    <asp:GridView ID="CarTypeGrid" runat="server" SkinID="gv" DataKeyNames="ID" 
                            OnRowDataBound="CarTypeGrid_RowDataBound" OnRowDeleting="CarTypeGrid_RowDeleting">
                        <Columns>
                            <asp:TemplateField HeaderText="新闻类型" HeaderStyle-Width="100px">
                                <ItemTemplate>
                                    <%#Eval("NewType")%>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="新闻主题" HeaderStyle-Width="200px">
                                <ItemTemplate>
                                    <%#Eval("Subject")%>
                                </ItemTemplate>
                                <HeaderStyle Width="200px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="创建时间" HeaderStyle-Width="200px">
                                <ItemTemplate>
                                    <%#Eval("CreateTime")%>
                                </ItemTemplate>
                                <HeaderStyle Width="200px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:CommandField ShowDeleteButton="True">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:CommandField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
