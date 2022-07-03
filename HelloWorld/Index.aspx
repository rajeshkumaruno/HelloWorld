<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="HelloWorld.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
            <Scripts>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js">
                </asp:ScriptReference>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js">
                </asp:ScriptReference>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js">
                </asp:ScriptReference>
            </Scripts>
        </telerik:RadScriptManager>
        <div>
            <br /><br /><br /><br /><br />
            <center>

            <table>

                <tr>

                    <td>Project</td>
                    <td>     
                        <telerik:RadButton ID="RadButtonViewProject" runat="server" Text="View Project" OnClick="RadButtonViewProject_Click">
                        </telerik:RadButton>

                         <telerik:RadButton ID="RadButtonAddProject" runat="server" Text="Add Project" OnClick="RadButtonAddProject_Click" style="position: relative;">
                        </telerik:RadButton>


                    </td>

                </tr>

              

            </table>

                  </center>

        </div>
    </form>
</body>
</html>
