using System;
using System.Data;
using System.Web.UI;

/// <summary>
/// This represents the code-behind for the CustomerList.aspx page.
/// </summary>
/// <author>Jonathan Walker</author>
/// <version>Spring 2015</version>
public partial class CustomerList : Page
{
    private Customer _selectedCustomer;

    /// <summary>
    /// Handles the Load event of the Page control.
    /// </summary>
    /// <precondition>None.</precondition>
    /// <postcondition>Selected customer is set to the selected customer in the drop-down list.</postcondition>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
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

    /// <summary>
    /// Handles the Click event of the btnViewContacts control.
    /// </summary>
    /// <precondition>None.</precondition>
    /// <postcondition>Redirects the user to the Contact List page.</postcondition>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnViewContacts_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ContactList.aspx");
    }

    /// <summary>
    /// Handles the Click event of the btnAddContacts control.
    /// </summary>
    /// <precondition>None.</precondition>
    /// <postcondition>Adds the selected customer to the session's customer list.</postcondition>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnAddContacts_Click(object sender, EventArgs e)
    {
        if (Session["CustomerList"] != null)
        {
            var customerList = (CustomerList) Session["CustomerList"];
        }
    }
}