using System;
using System.Globalization;
using System.Web.UI.WebControls;

public partial class Products : System.Web.UI.Page
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
    /// Handles the ServerValidate event of the cvReleaseDate control.
    /// </summary>
    /// <param name="source">The source of the event.</param>
    /// <param name="args">The <see cref="ServerValidateEventArgs"/> instance containing the event data.</param>
    protected void cvReleaseDate_ServerValidate(object source, ServerValidateEventArgs args)
    {
        DateTime dateTime;

        if (!DateTime.TryParseExact(args.Value, "MM/dd/yyyy hh:mm:ss tt", new CultureInfo("en-US"), 
            DateTimeStyles.None, out dateTime))
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
    }
}