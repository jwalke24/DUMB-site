using System;

/// <summary>
/// This class represents the feedback provided by the user for the site.
/// </summary>
/// <author>Jonathan Walker</author>
/// <version>Spring 2015</version>
public class Feedback
{
    private string feedbackId;
    private string customerId;
    private string softwareId;
    private string supportId;
    private string dateOpened;
    private string dateClosed;
    private string title;
    private string description;

    /// <summary>
    /// Gets or sets the feedback id.
    /// </summary>
    /// <value>
    /// The feedback id.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The feedback id.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set feedback id to null</exception>
    public string FeedbackId
    {
        get { return this.feedbackId; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set feedback id to null");
            }
            this.feedbackId = value;
        }
    }

    /// <summary>
    /// Gets or sets the customer id.
    /// </summary>
    /// <value>
    /// The customer id.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The customer id.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set customer id to null</exception>
    public string CustomerId
    {
        get { return this.customerId; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set customer id to null");
            }
            this.customerId = value;
        }
    }

    /// <summary>
    /// Gets or sets the software id.
    /// </summary>
    /// <value>
    /// The software id.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The software id.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set software id to null</exception>
    public string SoftwareId
    {
        get { return this.softwareId; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set software id to null");
            }
            this.softwareId = value;
        }
    }

    /// <summary>
    /// Gets or sets the support id.
    /// </summary>
    /// <value>
    /// The support identifier.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The support id.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set support id to null</exception>
    public string SupportId
    {
        get { return this.supportId; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set support id to null");
            }
            this.supportId = value;
        }
    }

    /// <summary>
    /// Gets or sets the date that the feedback was opened.
    /// </summary>
    /// <value>
    /// The date that the feedback was opened.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The date that the feedback opened.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set date opened to null</exception>
    public string DateOpened
    {
        get { return this.dateOpened; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set date opened to null");
            }
            this.dateOpened = value;
        }
    }

    /// <summary>
    /// Gets or sets the date that the feedback was closed.
    /// </summary>
    /// <value>
    /// The date that the feedback was closed.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The date that the feedback closed.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set date closed to null</exception>
    public string DateClosed
    {
        get { return this.dateClosed; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set date closed to null");
            }
            this.dateClosed = value;
        }
    }

    /// <summary>
    /// Gets or sets the title.
    /// </summary>
    /// <value>
    /// The title.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The title of the feedback.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set title to null</exception>
    public string Title
    {
        get { return this.title; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set title to null");
            }
            this.title = value;
        }
    }

    /// <summary>
    /// Gets or sets the description.
    /// </summary>
    /// <value>
    /// The description.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The description of the feedback.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set description to null</exception>
    public string Description
    {
        get { return this.description; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set description to null");
            }
            this.description = value;
        }
    }
}