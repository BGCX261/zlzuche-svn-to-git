<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="ViewNew.aspx.cs" Inherits="ZLzuche.ViewNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
        <div>
            <h1 id="labTitle" runat="server">
            </h1>
        </div>
        <br />
        <div>
            <label id="buildTime" runat="server">
            </label>
        </div>
        <br />
        <div id="divContent" runat="server">
        </div>
    </div>
</asp:Content>
