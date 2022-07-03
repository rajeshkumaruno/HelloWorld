<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectAdd.aspx.cs" Inherits="HelloWorld.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
        }

            .tg td {
                border-color: black;
                border-style: solid;
                border-width: 1px;
                font-family: Arial, sans-serif;
                font-size: 14px;
                overflow: hidden;
                padding: 10px 5px;
                word-break: normal;
            }

            .tg th {
                border-color: black;
                border-style: solid;
                border-width: 1px;
                font-family: Arial, sans-serif;
                font-size: 14px;
                font-weight: normal;
                overflow: hidden;
                padding: 10px 5px;
                word-break: normal;
            }

            .tg .tg-y698 {
                background-color: #efefef;
                border-color: inherit;
                text-align: left;
                vertical-align: top
            }

            .tg .tg-0lax {
                text-align: left;
                vertical-align: top
            }

            .tg .tg-0pky {
                border-color: inherit;
                text-align: left;
                vertical-align: top
            }

        .center {
            text-align: center;
            border: 3px solid green;
        }
    </style>



</head>
<body>
    <form id="form1" runat="server">
        <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
            <Scripts>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js"></asp:ScriptReference>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js"></asp:ScriptReference>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js"></asp:ScriptReference>
            </Scripts>
        </telerik:RadScriptManager>
        <div>

            <center>
            <br /><br /><br />
<table class="tg" style="undefined;table-layout: fixed; width: 584px">
<colgroup>
<col style="width: 249px">
<col style="width: 335px">
</colgroup>

<tbody>


          <tr>
    <td class="center" colspan="2" style="align" >
                        <telerik:RadButton ID="RadButtonView" runat="server" Text="View Project" OnClick="RadButtonView_Click"  >
                        </telerik:RadButton>
                                <telerik:RadButton ID="RadButtonHome" runat="server" Text="Home" OnClick="RadButtonHome_Click" >
                        </telerik:RadButton>
          </td>

  </tr>



      <tr>
    <td class="center" colspan="2" style="align" >
        <telerik:RadLabel ID="rlblMessage" runat="server" CssClass="center">
        </telerik:RadLabel>
          </td>

  </tr>


      <tr>
    <td class="center" colspan="2" style="align" >Add Project Details</td>

  </tr>


  <tr>
    <td class="tg-0pky">Project Name:</td>
    <td class="tg-0lax">
        <telerik:RadTextBox ID="rtbProjectName" runat="server" Height="19px" LabelWidth="64px" Resize="None" Width="316px">
            <EmptyMessageStyle Resize="None" />
            <ReadOnlyStyle Resize="None" />
            <FocusedStyle Resize="None" />
            <DisabledStyle Resize="None" />
            <InvalidStyle Resize="None" />
            <HoveredStyle Resize="None" />
            <EnabledStyle Resize="None" />
        </telerik:RadTextBox></td>
  </tr>

      <tr>
    <td class="tg-0pky">Project Start Date:</td>
    <td class="tg-0lax">
        <telerik:RadCalendar ID="rcStartDate" runat="server"></telerik:RadCalendar>
    </td>
  </tr>

      <tr>
    <td class="tg-0pky">Project End Data:</td>
    <td class="tg-0lax">
        <telerik:RadCalendar ID="rcEndDate" runat="server"></telerik:RadCalendar>
    </td>
  </tr>


      <tr>
    <td class="tg-0pky">Project Manager:</td>
    <td class="tg-0lax">
        <telerik:RadDropDownList ID="rddlManager" runat="server" >
        </telerik:RadDropDownList>

    </td>
  </tr>


      <tr>
    <td class="tg-0pky" colspan="2">
        <telerik:RadButton ID="RadButton1" runat="server" OnClick="RadButton1_Click" Text="Add Project">
        </telerik:RadButton>
          </td>
  </tr>


</tbody>
</table>
</center>

        </div>
    </form>
</body>
</html>
