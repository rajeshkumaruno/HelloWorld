using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelloWorld
{
    public partial class ViewProject : System.Web.UI.Page
    {


        private GroupProjectDataContext _dataContext;
        protected GroupProjectDataContext DbContext
        {
            get
            {
                if (_dataContext == null)
                {
                    _dataContext = new GroupProjectDataContext();
                }
                return _dataContext;
            }
        }

        public override void Dispose()
        {
            if (_dataContext != null)
            {
                _dataContext.Dispose();
            }
            base.Dispose();
        }




        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                GroupProjectDataContext ctx = new GroupProjectDataContext();

            }

        }

        protected void RadGrid1_NeedDataSource(object sender, Telerik.Web.UI.GridNeedDataSourceEventArgs e)
        {
            RadGrid1.DataSource = DbContext.Projects;
        }


        protected void RadGrid1_UpdateCommand(object sender, Telerik.Web.UI.GridCommandEventArgs e)
        {

            var editableItem = ((Telerik.Web.UI.GridEditableItem)e.Item);
            var projectId = (int)editableItem.GetDataKeyValue("ProjectID");
            //retrive entity form the Db         
            var project = DbContext.Projects.Where(n => n.ProjectID == projectId).FirstOrDefault();
            if (project != null)
            {
                //update entity's state             
                editableItem.UpdateValues(project);
                try
                {
                    //submit chanages to Db     

                    DbContext.SubmitChanges();
                }
                catch (System.Exception)
                {
                    ShowErrorMessage();
                }
            }



        }


        private void ShowErrorMessage()
        {
            RadAjaxManager1.ResponseScripts.Add(string.Format("window.radalert(\"Please enter valid data!\")"));
        }



        protected void RadGrid1_DeleteCommand(object sender, Telerik.Web.UI.GridCommandEventArgs e)
        {

        }

 

        protected void RadButtonHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }

        protected void RadButtonView_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ProjectAdd.aspx");
        }
    }
}