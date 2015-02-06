using System;

/// <summary>
///     This class represents the feedback provided by the user for the site.
/// </summary>
/// <author>Jonathan Walker</author>
/// <version>Spring 2015</version>
public class Feedback
{
    /// <summary>
    ///     Gets or sets the feedback id.
    /// </summary>
    /// <value>
    ///     The feedback id.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The feedback id.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set feedback id to null</exception>
    public string FeedbackId
    {
        get { return this._feedbackId; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set feedback id to null");
            }
            this._feedbackId = value;
        }
    }

    /// <summary>
    ///     Gets or sets the customer id.
    /// </summary>
    /// <value>
    ///     The customer id.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The customer id.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set customer id to null</exception>
    public string CustomerId
    {
        get { return this._customerId; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set customer id to null");
            }
            this._customerId = value;
        }
    }

    /// <summary>
    ///     Gets or sets the software id.
    /// </summary>
    /// <value>
    ///     The software id.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The software id.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set software id to null</exception>
    public string SoftwareId
    {
        get { return this._softwareId; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set software id to null");
            }
            this._softwareId = value;
        }
    }

    /// <summary>
    ///     Gets or sets the support id.
    /// </summary>
    /// <value>
    ///     The support identifier.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The support id.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set support id to null</exception>
    public string SupportId
    {
        get { return this._supportId; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set support id to null");
            }
            this._supportId = value;
        }
    }

    /// <summary>
    ///     Gets or sets the date that the feedback was opened.
    /// </summary>
    /// <value>
    ///     The date that the feedback was opened.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The date that the feedback opened.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set date opened to null</exception>
    public string DateOpened
    {
        get { return this._dateOpened; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set date opened to null");
            }
            this._dateOpened = value;
        }
    }

    /// <summary>
    ///     Gets or sets the date that the feedback was closed.
    /// </summary>
    /// <value>
    ///     The date that the feedback was closed.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The date that the feedback closed.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set date closed to null</exception>
    public string DateClosed
    {
        get { return this._dateClosed; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set date closed to null");
            }
            this._dateClosed = value;
        }
    }

    /// <summary>
    ///     Gets or sets the title.
    /// </summary>
    /// <value>
    ///     The title.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The title of the feedback.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set title to null</exception>
    public string Title
    {
        get { return this._title; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set title to null");
            }
            this._title = value;
        }
    }

    /// <summary>
    ///     Gets or sets the description.
    /// </summary>
    /// <value>
    ///     The description.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The description of the feedback.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set description to null</exception>
    public string Description
    {
        get { return this._description; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set description to null");
            }
            this._description = value;
        }
    }

    private string _customerId;
    private string _dateClosed;
    private string _dateOpened;
    private string _description;
    private string _feedbackId;
    private string _softwareId;
    private string _supportId;
    private string _title;

    /// <summary>
    ///     Returns a string representation of the feedback.
    /// </summary>
    /// <precondition>this.softwareId != null && this.dateClosed != null && this.title != null</precondition>
    /// <returns>A string representing the feedback.</returns>
    /// <exception cref="System.ArgumentNullException">Thrown iff softwareId, dateClosed, or title are null</exception>
    public string FormatFeedback()
    {
        if (this._softwareId == null || this._dateClosed == null || this._title == null)
        {
            throw new ArgumentNullException();
        }

        var feedback = "Feedback for software " + this._softwareId + " closed " + this._dateClosed + " (" + this._title +
                       ")";
        return feedback;
    }
}