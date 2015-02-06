using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerFeedback : Page
{
    /// <summary>
    /// Handles the Load event of the Page control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    /// <summary>
    /// Handles the Click event of the btnCustomerId control.
    /// </summary>
    /// <precondition>None.</precondition>
    /// <postcondition>If the CustomerID is valid, the listbox will display closed feedback items.</postcondition>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnCustomerId_Click(object sender, EventArgs e)
    {
        this.lbClosedFeedback.DataSource = this.sqlFeedback;
        this.lbClosedFeedback.DataBind();

        this.lbClosedFeedback.Items.Clear();

        this.PopulateClosedFeedback();
        
    }

    private void PopulateClosedFeedback()
    {
        var feedbackTable = (DataView)this.sqlFeedback.Select(DataSourceSelectArguments.Empty);

        if (feedbackTable == null)
        {
            return;
        }

        feedbackTable.RowFilter = "CustomerID =" + this.txtCustomerId.Text + " AND DateClosed IS NOT NULL";

        if (feedbackTable.Count <= 0)
        {
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
    }
}