using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>
///     This represents the code behind for the ContactList page.
/// </summary>
/// <author>Jonathan Walker</author>
/// <version>Spring 2015</version>
public partial class ContactList : Page
{
    private CustomerList _customers;

    /// <summary>
    ///     Handles the Load event of the Page control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs" /> instance containing the event data.</param>
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
            var customerNameArray = this._customers[i].Name.Split(' ');
            var firstName = customerNameArray[0];
            var lastName = "";

            if (customerNameArray.Length > 1)
            {
                lastName = customerNameArray[1];
            }
            
            this.lbContactList.Items.Add(lastName + ", " + firstName + ": " + this._customers[i].PhoneNumber + "; " +
                                         this._customers[i].EmailAddress);
        }

        this.SortContactList();
    }

    private void SortContactList()
    {
        var contactList = new List<string>();
        foreach (ListItem item in this.lbContactList.Items)
        {
            contactList.Add(item.Text);
        }

        contactList.Sort();
        this.lbContactList.Items.Clear();

        foreach (var contact in contactList)
        {
            this.lbContactList.Items.Add(contact);
        }
    }

    /// <summary>
    ///     Handles the Click event of the btnAdditionalCustomers control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs" /> instance containing the event data.</param>
    protected void btnAdditionalCustomers_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/CustomerDisplay.aspx");
    }

    /// <summary>
    ///     Handles the Click event of the btnRemoveCustomer control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs" /> instance containing the event data.</param>
    protected void btnRemoveCustomer_Click(object sender, EventArgs e)
    {
        if (this.lbContactList.SelectedItem == null)
        {
            return;
        }

        var removeIndex = this.lbContactList.Items.IndexOf(this.lbContactList.SelectedItem);
        this.lbContactList.Items.RemoveAt(removeIndex);
        this._customers.RemoveAt(removeIndex);
    }

    /// <summary>
    ///     Handles the Click event of the btnClearCustomers control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs" /> instance containing the event data.</param>
    protected void btnClearCustomers_Click(object sender, EventArgs e)
    {
        this._customers.Clear();
        this.lbContactList.Items.Clear();
    }
}