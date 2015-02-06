using System;
using System.Web.UI;

/// <summary>
/// This represents the code behind for the ContactList page.
/// </summary>
/// <author>Jonathan Walker</author>
/// <version>Spring 2015</version>
public partial class ContactList : Page
{
    private CustomerList _customers;

    /// <summary>
    /// Handles the Load event of the Page control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void Page_Load(object sender, EventArgs e)
    {
        this._customers = CustomerList.GetCustomers();

        if (IsPostBack)
        {
            return;
        }

        this.PopulateContactListBox();
    }

    private void PopulateContactListBox()
    {
        for (var i = 0; i < this._customers.Count(); i++)
        {
            this.lbContactList.Items.Add(this._customers[i].Name + ": " + this._customers[i].PhoneNumber + "; " +
                                         this._customers[i].EmailAddress);
        }
    }

    /// <summary>
    /// Handles the Click event of the btnAdditionalCustomers control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnAdditionalCustomers_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/CustomerDisplay.aspx");
    }

    /// <summary>
    /// Handles the Click event of the btnRemoveCustomer control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnRemoveCustomer_Click(object sender, EventArgs e)
    {
        var removeIndex = this.lbContactList.Items.IndexOf(this.lbContactList.SelectedItem);
        this.lbContactList.Items.RemoveAt(removeIndex);
        this._customers.RemoveAt(removeIndex);
    }

    /// <summary>
    /// Handles the Click event of the btnClearCustomers control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnClearCustomers_Click(object sender, EventArgs e)
    {
        this._customers.Clear();
        this.lbContactList.Items.Clear();
    }
}