using System;
using System.Web.UI;

/// <summary>
///     This class represents the code behind for the FeedbackComplete page.
/// </summary>
/// <author>Jonathan Walker</author>
/// <version>Spring 2015</version>
public partial class FeedbackComplete : Page
{
    /// <summary>
    ///     Handles the Load event of the Page control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs" /> instance containing the event data.</param>
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!(bool) Session["IsDescription"])
        {
            this.lblMessage.Text = "Oops! Something went wrong and we couldn't find your information. Please try again!";
        }
        else
        {
            const string confirmationMessage = "We have received your feedback!";
            var description = (Description) Session["Description"];
            if (description.Contact)
            {
                this.lblMessage.Text = confirmationMessage + " We will contact you soon via " +
                                       description.ContactMethod + ".";
            }
            else
            {
                this.lblMessage.Text = confirmationMessage;
            }
        }
    }
}