using System;
using System.Text;
using System.Text.RegularExpressions;
using System.Web.UI;


/// <summary>
/// 客户端脚本帮助类
/// </summary>
public sealed class ScriptHelper
{
    /// <summary>
    /// 注册脚本<br/>
    /// 此方法将脚本注册到 ClientScript 中，如果此后调用了 Response.End()，则未能执行脚本
    /// </summary>
    /// <param name="page">注册脚本的页面对象</param>
    /// <param name="script">需要注册的脚本</param>
    public static void RegisterScript(Page page, string script)
    {
        string scriptBlock = "(function(){" + script + "})();";
        page.ClientScript.RegisterClientScriptBlock(page.GetType(), Guid.NewGuid().ToString("N"), scriptBlock, true);
    }

    private static string FormatJsString(string s)
    {
        if (!String.IsNullOrEmpty(s))
        {
            s = s.Replace(@"\", @"\\").Replace("'", @"\'").Replace("\r", "").Replace("\n", @"\n");
        }
        return s;
    }
    private static string Alert(string msg)
    {
        return string.Format("alert('{0}');", FormatJsString(msg));
    }
    private static string CloseDialog(string returnValue)
    {
        const string closeWindowScript = "if(!(typeof(closeDialog) ==   'undefined')){ closeDialog();}else{ window.close();}";
        return string.Format("window.returnValue='{0}';", FormatJsString(returnValue)) + closeWindowScript;
    }

    private static string Open(string url)
    {
        return string.Format("window.open(encodeURI('{0}'));", FormatJsString(url));
    }
    private static string Goto(string urlPage)
    {
        return string.Format("top.location.href='{0}';", FormatJsString(urlPage));
    }
    private static string Close(bool refreshParentWindow)
    {
        string script = string.Empty;
        if (refreshParentWindow)
        {
            script = "try{window.opener.location.href+='';window.opener=null;}catch(e){}";
        }
        script += "if(!(typeof(closeDialog) ==   'undefined')){ closeDialog();}else{ window.close();}";

        return script;
    }

    /// <summary>
    /// 在客户端页面中显示提示信息，相当于 JavaScript 中的 window.alert 方法
    /// </summary>
    /// <param name="page">显示提示信息的页面对象</param>
    /// <param name="msg">提示信息的文本</param>
    public static void Alert(Page page, string msg)
    {
        RegisterScript(page, Alert(msg));
    }

    /// <summary>
    /// 关闭客户端的页面，相当于 JavaScript 中的 window.close 方法。<br/>
    /// 注意：某些浏览器（如Firefox）中 window.close 方法只能关闭 window.open 方法打开的窗口
    /// </summary>
    /// <param name="page">需要关闭的页面对象</param>
    /// <param name="refreshParentWindow">是否刷新 page 页面的打开者（window.opener）</param>
    public static void Close(Page page, bool refreshParentWindow)
    {
        RegisterScript(page, Close(refreshParentWindow));
    }

    /// <summary>
    /// 关闭客户端的模式窗口（window.showModalDialog），并且返回指定的值
    /// </summary>
    /// <param name="page">需要关闭的页面对象</param>
    /// <param name="returnValue">对话框的返回值</param>
    public static void CloseDialog(Page page, string returnValue)
    {
        RegisterScript(page, CloseDialog(returnValue));
    }

    /// <summary>
    /// 在客户端页面中打开新窗口，相当于 JavaScript 的 window.open 方法
    /// </summary>
    /// <param name="page">要打开新窗口的页面对象</param>
    /// <param name="url">新窗口的 URL</param>
    public static void Open(Page page, string url)
    {
        RegisterScript(page, Open(url));
    }

    /// <summary>
    /// 在客户端页面中重定向页面，相当于 JavaScript 中设置 top.location.href 属性
    /// </summary>
    /// <param name="page">需要重定向的页面对象</param>
    /// <param name="urlPage">重定向的 URL</param>
    public static void Goto(Page page, string urlPage)
    {
        RegisterScript(page, Goto(urlPage));
    }

    /// <summary>
    /// 在客户端页面中提示信息后关闭页面，相当于执行 alert(info);window.close();
    /// </summary>
    /// <param name="page">提示信息并且关闭的页面对象</param>
    /// <param name="info">提示信息的文本</param>
    /// <param name="refreshParentWindow">是否刷新 page 页面的打开者（window.opener）</param>
    public static void AlertAndClose(Page page, string info, bool refreshParentWindow)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append(Alert(info)).Append(Close(refreshParentWindow));
        RegisterScript(page, sb.ToString());
    }

    /// <summary>
    /// 在客户端页面中提示信息后关闭对话框，相当于执行 alert(info);window.close();，适用于模式窗口（window.showModalDialog）
    /// </summary>
    /// <param name="page">提示信息并且关闭的页面对象</param>
    /// <param name="info">提示信息的文本</param>
    /// <param name="returnValue">对话框的返回值</param>
    public static void AlertAndCloseDialog(Page page, string info, string returnValue)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append(Alert(info)).Append(CloseDialog(returnValue));
        RegisterScript(page, sb.ToString());
    }

    /// <summary>
    /// 转义 JavaScript 字符串，单引号或双引号、反斜杆、换行符等。
    /// </summary>
    /// <param name="str">需要转义的字符串</param>
    /// <param name="escapeDoubleQuote">是否转义双引号</param>
    /// <returns>转义的字符串</returns>
    public static string EscapeString(string str, bool escapeDoubleQuote)
    {
        string pattern = String.Format(@"('|\\{0}|(?:\r?\n))", escapeDoubleQuote ? "|\"" : String.Empty);
        str = Regex.Replace(str, pattern, @"\$1");
        return str;
    }
}