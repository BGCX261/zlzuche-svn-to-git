<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSiteMaster.Master" AutoEventWireup="true"
    CodeBehind="CarTypeList.aspx.cs" Inherits="ZLzuche.Admin.CarTypeList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>汽车品牌列表</title>
    <script language="javascript" type="text/javascript">
        function NewCarType() {
            var iWidth = 600; //窗口宽度
            var iHeight = 400; //窗口高度
            var iTop = (window.screen.height - iHeight) / 2;
            var iLeft = (window.screen.width - iWidth) / 2;
            window.open("AddCarType.aspx", "New", "Scrollbars=no,Toolbar=no,Location=no,Direction=no,Resizeable=no,Width=" + iWidth + " ,Height=" + iHeight + ",top=" + iTop + ",left=" + iLeft);
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
                    <div style="padding-top: 10px;"></div>
                    <asp:GridView ID="CarTypeGrid" runat="server" SkinID="gv"
                        DataKeyNames="ID" OnRowDataBound="CarTypeGrid_RowDataBound" OnRowEditing="CarTypeGrid_RowEditing"
                        OnRowDeleting="CarTypeGrid_RowDeleting" OnRowUpdating="CarTypeGrid_RowUpdating"
                        OnRowCancelingEdit="CarTypeGrid_RowCancelingEdit" rows>
                        <Columns>
                            <asp:TemplateField HeaderText="品牌名称">
                                <ItemTemplate>
                                    <%#Eval("CarTypeName")%>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtName" runat="server" Text='<%#Eval("CarTypeName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="描述" HeaderStyle-Width="300px">
                                <ItemTemplate>
                                    <%#Eval("Describe")%>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtDescribe" runat="server" Text='<%#Eval("Describe") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderStyle Width="300px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="备注" HeaderStyle-Width="300px">
                                <ItemTemplate>
                                    <%#Eval("Remark")%>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtRemark" runat="server" Text='<%#Eval("Remark") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderStyle Width="300px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:CommandField ShowEditButton="True">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:CommandField>
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
