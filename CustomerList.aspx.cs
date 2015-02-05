using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerList : System.Web.UI.Page
{
    private Customer _selectedCustomer;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.ddlCustomers.DataBind();
        }

        this._selectedCustomer = this.GetSelectedCustomer();

        if (this._selectedCustomer == null)
        {
            return;
        }

        this.lblName.Text = this._selectedCustomer.Name;
        this.lblAddress.Text = this._selectedCustomer.Address;
        this.lblCity.Text = this._selectedCustomer.City;
        this.lblState.Text = this._selectedCustomer.State;
        this.lblZipCode.Text = this._selectedCustomer.ZipCode;
        this.lblPhone.Text = this._selectedCustomer.PhoneNumber;
        this.lblEmail.Text = this._selectedCustomer.EmailAddress;
    }

    private Customer GetSelectedCustomer()
    {
        var customerTable = (DataView)this.sqlCustomers.Select(DataSourceSelectArguments.Empty);

        if (customerTable == null)
        {
            return null;
        }

        customerTable.RowFilter = "CustomerID = '" + this.ddlCustomers.SelectedValue + "'";
        var customerRow = customerTable[0];

        var customer = new Customer
        {
            Name = customerRow["Name"].ToString(),
            Address = customerRow["Address"].ToString(),
            City = customerRow["City"].ToString(),
            State = customerRow["State"].ToString(),
            ZipCode = customerRow["ZipCode"].ToString(),
            PhoneNumber = customerRow["Phone"].ToString(),
            EmailAddress = customerRow["Email"].ToString()
        };
        return customer;
    }
}