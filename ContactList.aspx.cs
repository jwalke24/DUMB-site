using System;
using System.Web.UI;

public partial class ContactList : Page
{
    private CustomerList _customers;

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

    protected void btnAdditionalCustomers_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/CustomerDisplay.aspx");
    }

    protected void btnRemoveCustomer_Click(object sender, EventArgs e)
    {
        var removeIndex = this.lbContactList.Items.IndexOf(this.lbContactList.SelectedItem);
        this.lbContactList.Items.RemoveAt(removeIndex);
        this._customers.RemoveAt(removeIndex);
    }

    protected void btnClearCustomers_Click(object sender, EventArgs e)
    {
        this._customers.Clear();
        this.lbContactList.Items.Clear();
    }
}