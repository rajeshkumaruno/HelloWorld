<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProject.aspx.cs" Inherits="HelloWorld.ViewProject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>


    <form id="form1" runat="server">



        <center>
            <br /><br />


                                    <telerik:RadButton ID="RadButtonView" runat="server" Text="Add Project" OnClick="RadButtonView_Click1"   >
                        </telerik:RadButton>
                                <telerik:RadButton ID="RadButtonHome" runat="server" Text="Home" OnClick="RadButtonHome_Click" >
                        </telerik:RadButton>

            <br /><br />


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


<telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
    <script type="text/javascript">            function rowDblClick(sender, eventArgs) { sender.get_masterTableView().editItem(eventArgs.get_itemIndexHierarchical()); }            </script>
</telerik:RadCodeBlock>
<telerik:RadAjaxManager runat="server" ID="RadAjaxManager1" DefaultLoadingPanelID="RadAjaxLoadingPanel1">
    <ajaxsettings>
  <telerik:AjaxSetting AjaxControlID="RadGrid1">
    <UpdatedControls>
      <telerik:AjaxUpdatedControl ControlID="RadGrid1" />
      <telerik:AjaxUpdatedControl ControlID="RadWindowManager1" />
      <telerik:AjaxUpdatedControl ControlID="RadInputManager1" />
    </UpdatedControls>
  </telerik:AjaxSetting>
</ajaxsettings>
</telerik:RadAjaxManager>
<telerik:RadAjaxLoadingPanel runat="server" ID="RadAjaxLoadingPanel1" />
<telerik:RadGrid RenderMode="Lightweight" runat="server" ID="RadGrid1" AutoGenerateColumns="False" AllowPaging="True"
    OnNeedDataSource="RadGrid1_NeedDataSource" OnUpdateCommand="RadGrid1_UpdateCommand"
     OnDeleteCommand="RadGrid1_DeleteCommand"
    >
    <mastertableview datakeynames="ProjectID" commanditemdisplay="Top" insertitempageindexaction="ShowItemOnCurrentPage">
        <CommandItemSettings ShowAddNewRecordButton="false" />
  <Columns>
    <telerik:GridEditCommandColumn ButtonType="ImageButton" />
    <telerik:GridBoundColumn DataField="ProjectID" HeaderText="Project ID" ReadOnly="true"
      ForceExtractValue="Always" ConvertEmptyStringToNull="true" />
    <telerik:GridBoundColumn DataField="ProjectName" HeaderText="Project Name" />
    <telerik:GridBoundColumn DataField="ProjectStartDate" HeaderText="ProjectStartDate" />
    <telerik:GridBoundColumn DataField="ProjectEndDate" HeaderText="ProjectEndDate" />
     <telerik:GridBoundColumn DataField="ManagerID" HeaderText="ManagerID" />
      <telerik:GridBoundColumn DataField="ManagerName" HeaderText="Manager Name" />
    <telerik:GridButtonColumn ConfirmText="Delete this project?" ConfirmDialogType="RadWindow"
      ConfirmTitle="Delete" ButtonType="ImageButton" CommandName="Delete" />
  </Columns>
  <EditFormSettings>
    <EditColumn ButtonType="ImageButton" />
  </EditFormSettings>
</mastertableview>
    <pagerstyle mode="NextPrevAndNumeric" />
    <clientsettings>
  <ClientEvents OnRowDblClick="rowDblClick" />
</clientsettings>
</telerik:RadGrid>
<telerik:RadInputManager RenderMode="Lightweight" runat="server" ID="RadInputManager1" Enabled="true">
    <telerik:TextBoxSetting BehaviorID="TextBoxSetting1">
    </telerik:TextBoxSetting>
    <telerik:NumericTextBoxSetting BehaviorID="NumericTextBoxSetting1" Type="Currency"
        AllowRounding="true" DecimalDigits="2">
    </telerik:NumericTextBoxSetting>
    <telerik:NumericTextBoxSetting BehaviorID="NumericTextBoxSetting2" Type="Number"
        AllowRounding="true" DecimalDigits="0" MinValue="0">
    </telerik:NumericTextBoxSetting>
</telerik:RadInputManager>
<telerik:RadWindowManager RenderMode="Lightweight" ID="RadWindowManager1" runat="server" />

        </div>

                    </center>
    </form>
</body>
</html>
