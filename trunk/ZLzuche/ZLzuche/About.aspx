<%@ Page Title="关于我们" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="ZLzuche.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link href="'<%=this.ResolveUrl("~/Styles/CarServiceStyle.css") %>'" rel="stylesheet"
        type="text/css" />
    <style type="text/css">
        body
        {
            font: normal 11px verdana;
        }
        
        #leftSearch ul
        {
            margin: 0;
            padding: 0;
            list-style: none;
            width: 270px; /* Width of Menu Items */
            border-bottom: 1px solid #ccc;
        }
        
        #leftSearch ul li
        {
            position: relative;
        }
        
        #leftSearch li ul
        {
            position: absolute;
            left: 149px; /* Set 1px less than menu width */
            top: 0;
            display: none;
        }
        
        /* Styles for Menu Items */
        #leftSearch ul li a
        {
            display: block;
            text-decoration: none;
            color: #777;
            background: #fff; /* IE6 Bug */
            padding: 5px;
            border: 1px solid #ccc; /* IE6 Bug */
            border-bottom: 0;
        }
        
        /* Holly Hack. IE Requirement \*/
        #leftSearch ul li
        {
            float: none;
            height: 1%;
        }
        #leftSearch ul li a
        {
            height: 1%;
        }
        /* End */
    </style>
    <script type="text/javascript" language="javascript">
        function fun(key) {
            var array = [];
            array.push("#middle,#imgMiddle");
            array.push("#country,#imgCountry");
            array.push("#gov,#imgGov");
            array.push("#slu,#imgSlu");
            array.push("#ys,#imgYs");
            array.push("#suc,#imgSuc");
            array.push("#com,#imgCom");
            $(array).each(function (i) {
                var elId = String(this);
                if (String(i) == key) {
                    $(elId).show();
                } else {
                    $(elId).hide();
                }
            });
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding-top: 10px;" class="center_container">
        <h1>
            中联租车网关于我们</h1>
    </div>
</asp:Content>
