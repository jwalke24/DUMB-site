using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>
/// This class represents the code behind for the CustomerFeedback page.
/// </summary>
/// <author>Jonathan Walker</author>
/// <version>Spring 2015</version>
public partial class CustomerFeedback : Page
{
    /// <summary>
    ///     Handles the Load event of the Page control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs" /> instance containing the event data.</param>
    protected void Page_Load(object sender, EventArgs e)
    {
        SetFocus(this.txtCustomerId);
    }

    /// <summary>
    ///     Handles the Click event of the btnCustomerId control.
    /// </summary>
    /// <precondition>None.</precondition>
    /// <postcondition>If the CustomerID is valid, the listbox will display closed feedback items.</postcondition>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs" /> instance containing the event data.</param>
    protected void btnCustomerId_Click(object sender, EventArgs e)
    {
        this.lbClosedFeedback.DataSource = this.sqlFeedback;
        this.lbClosedFeedback.DataBind();

        this.lbClosedFeedback.Items.Clear();

        this.PopulateClosedFeedback();
    }

    private void PopulateClosedFeedback()
    {
        var feedbackTable = (DataView) this.sqlFeedback.Select(DataSourceSelectArguments.Empty);

        if (feedbackTable == null)
        {
            return;
        }

        feedbackTable.RowFilter = "CustomerID =" + this.txtCustomerId.Text + " AND DateClosed IS NOT NULL";

        if (feedbackTable.Count <= 0)
        {
            this.DisableControls();
            return;
        }

        foreach (DataRowView row in feedbackTable)
        {
            var customerFeedback = new Feedback
            {
                FeedbackId = row["FeedbackID"].ToString(),
                SoftwareId = row["SoftwareID"].ToString(),
                DateClosed = row["DateClosed"].ToString(),
                Title = row["Title"].ToString()
            };
            this.lbClosedFeedback.Items.Add(new ListItem(customerFeedback.FormatFeedback(), customerFeedback.FeedbackId));
        }

        this.EnableControls();
        SetFocus(this.lbClosedFeedback);
    }

    private void DisableControls()
    {
        this.rblServiceTime.Enabled = false;
        this.rblEfficiency.Enabled = false;
        this.rblResolution.Enabled = false;
        this.txtComments.Enabled = false;
        this.cblContact.Enabled = false;
        this.rblPreferredMethod.Enabled = false;
        this.btnSubmit.Enabled = false;
    }

    private void EnableControls()
    {
        this.rblServiceTime.Enabled = true;
        this.rblEfficiency.Enabled = true;
        this.rblResolution.Enabled = true;
        this.txtComments.Enabled = true;
        this.cblContact.Enabled = true;
        this.rblPreferredMethod.Enabled = true;
        this.btnSubmit.Enabled = true;
    }

    /// <summary>
    ///     Handles the Click event of the btnSubmit control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs" /> instance containing the event data.</param>
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (!IsValid)
        {
            return;
        }

        var description = new Description
        {
            ServiceTime = Convert.ToInt32(this.rblServiceTime.SelectedValue),
            Efficiency = Convert.ToInt32(this.rblEfficiency.SelectedValue),
            Resolution = Convert.ToInt32(this.rblResolution.SelectedValue),
            Comments = this.txtComments.Text,
            ContactMethod = this.rblPreferredMethod.SelectedValue
        };

        if (this.cblContact.Items[0].Selected)
        {
            description.Contact = true;
        }
        else
        {
            description.Contact = false;
        }

        Session["Description"] = description;
        Session["IsDescription"] = true;

        Response.Redirect("~/FeedbackComplete.aspx");
    }
}