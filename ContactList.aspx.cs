using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactList : System.Web.UI.Page
{
    private CustomerList _customers;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.bindCustomersToListBox();
        }

        if (Session["CustomerList"] == null)
        {
            this._customers = new CustomerList();
            Session["CustomerList"] = this._customers;
        }
        else
        {
            this._customers = (CustomerList) Session["CustomerList"];
        }

    }

    private void bindCustomersToListBox()
    {
    }
}