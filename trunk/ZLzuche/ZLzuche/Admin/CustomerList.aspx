<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSiteMaster.Master" AutoEventWireup="true"
    CodeBehind="CustomerList.aspx.cs" Inherits="ZLzuche.Admin.CustomerList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>会员列表</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding-top: 10px;">
        <table cellpadding="0" cellspacing="0" border="0" class="center" style="width: 980px;">
            <tr>
                <td>
                    <asp:GridView ID="CustomerGrid" runat="server" SkinID="gv"
                        DataKeyNames="ID">
                        <Columns>
                            <asp:TemplateField HeaderText="会员姓名" HeaderStyle-Width="100px">
                                <ItemTemplate>
                                    <%#Eval("CustomerName")%>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtCustomerName" runat="server" Text='<%#Eval("CustomerName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="手机" HeaderStyle-Width="100px">
                                <ItemTemplate>
                                    <%#Eval("Phone")%>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtPhone" runat="server" Text='<%#Eval("Phone") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderStyle Width="100px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="邮箱" HeaderStyle-Width="100px">
                                <ItemTemplate>
                                    <%#Eval("Email")%>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtEmail" runat="server" Text='<%#Eval("Email") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderStyle Width="100px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="身份证号" HeaderStyle-Width="100px">
                                <ItemTemplate>
                                    <%#Eval("PapersNumber")%>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtPapersNumber" runat="server" Text='<%#Eval("PapersNumber") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderStyle Width="100px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="注册时间" HeaderStyle-Width="150px">
                                <ItemTemplate>
                                    <%#Eval("RegisterTime")%>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtRegisterTime" runat="server" Text='<%#Eval("RegisterTime") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderStyle Width="150px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="上次登录时间" HeaderStyle-Width="150px">
                                <ItemTemplate>
                                    <%#Eval("LastUpdateTime")%>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtLastUpdateTime" runat="server" Text='<%#Eval("LastUpdateTime") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderStyle Width="150px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="上次登录IP" HeaderStyle-Width="150px">
                                <ItemTemplate>
                                    <%#Eval("LastIpAddress")%>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtLastIpAddress" runat="server" Text='<%#Eval("LastIpAddress") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderStyle Width="150px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="账号状态" HeaderStyle-Width="150px">
                                <ItemTemplate>
                                    <%#Eval("Status")%>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtStatus" runat="server" Text='<%#Eval("Status") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderStyle Width="150px"></HeaderStyle>
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
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
