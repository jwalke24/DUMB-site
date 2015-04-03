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

    /// <summary>
    /// Handles the Click event of the btnAddProduct control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnAddProduct_Click(object sender, EventArgs e)
    {
        this.lblError.Text = "";

        if (!IsValid)
        {
            return;
        }

        this.sdsProducts.InsertParameters["SoftwareID"].DefaultValue = this.txtAddSoftwareID.Text;
        this.sdsProducts.InsertParameters["Name"].DefaultValue = this.txtAddName.Text;
        this.sdsProducts.InsertParameters["Version"].DefaultValue = this.txtAddVersion.Text;
        this.sdsProducts.InsertParameters["ReleaseDate"].DefaultValue = this.txtAddReleaseDate.Text;

        try
        {
            this.sdsProducts.Insert();
            this.txtAddSoftwareID.Text = "";
            this.txtAddName.Text = "";
            this.txtAddVersion.Text = "";
            this.txtAddReleaseDate.Text = "";
        }
        catch (Exception ex)
        {
            this.lblError.Text = "A database error has occurred.<br /><br />" + "Message: " + ex.Message;
        }
    }

    /// <summary>
    /// Handles the RowUpdated event of the gvProducts control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="GridViewUpdatedEventArgs"/> instance containing the event data.</param>
    protected void gvProducts_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        this.lblError.Text = "";

        if (e.Exception != null)
        {
            this.lblError.Text = "A database error has occurred.<br /><br />" + "Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
            e.KeepInEditMode = true;
        }
        else if (e.AffectedRows == 0)
        {
            this.lblError.Text = "Another user may have updated that category." + "<br />Please try again.";
        }
    }

    /// <summary>
    /// Handles the RowDeleted event of the gvProducts control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="GridViewDeletedEventArgs"/> instance containing the event data.</param>
    protected void gvProducts_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        this.lblError.Text = "";

        if (e.Exception != null)
        {
            this.lblError.Text = "A database error has occurred.<br /><br />" + "Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
            this.lblError.Text = "Another user may have updated that category." + "<br />Please try again.";
        }
    }
}