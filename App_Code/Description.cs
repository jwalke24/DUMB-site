using System;

/// <summary>
/// This class represents the user entered feedback values.
/// </summary>
/// <author>Jonathan Walker</author>
/// <version>Spring 2015</version>
public class Description
{
    private int serviceTime;
    private int efficiency;
    private int resolution;
    private string comments;
    private string contactMethod;

    /// <summary>
    /// Gets or sets the customer id.
    /// </summary>
    /// <value>
    /// The customer id.
    /// </value>
    /// <precondition>None.</precondition>
    /// <returns>The customer id.</returns>
    public int CustomerId { get; set; }

    /// <summary>
    /// Gets or sets the feedback id.
    /// </summary>
    /// <value>
    /// The feedback identifier.
    /// </value>
    /// <precondition>None.</precondition>
    /// <returns>The feedback id.</returns>
    public int FeedbackId { get; set; }

    /// <summary>
    /// Gets or sets the service time grade.
    /// </summary>
    /// <value>
    /// The service time grade as an int.
    /// </value>
    /// <precondition>value >= 0</precondition>
    /// <returns>The service time grade.</returns>
    /// <exception cref="System.ArgumentOutOfRangeException">value;cannot set service time grade to a negative number</exception>
    public int ServiceTime
    {
        get { return this.serviceTime; }
        set
        {
            if (value < 0)
            {
                throw new ArgumentOutOfRangeException("value", "cannot set service time grade to a negative number");
            }
            this.serviceTime = value;
        }
    }

    /// <summary>
    /// Gets or sets the efficiency grade.
    /// </summary>
    /// <value>
    /// The efficiency grade as an int.
    /// </value>
    /// <precondition>value >= 0</precondition>
    /// <returns>The efficiency grade.</returns>
    /// <exception cref="System.ArgumentOutOfRangeException">value;cannot set efficiency grade to a negative number</exception>
    public int Efficiency
    {
        get { return this.efficiency; }
        set
        {
            if (value < 0)
            {
                throw new ArgumentOutOfRangeException("value", "cannot set efficiency grade to a negative number");
            }
            this.efficiency = value;
        }
    }

    /// <summary>
    /// Gets or sets the resolution grade.
    /// </summary>
    /// <value>
    /// The resolution grade as an int.
    /// </value>
    /// <precondition>value >= 0</precondition>
    /// <returns>The resolution grade.</returns>
    /// <exception cref="System.ArgumentOutOfRangeException">value;cannot set resolution grade to a negative number</exception>
    public int Resolution
    {
        get { return this.resolution; }
        set
        {
            if (value < 0)
            {
                throw new ArgumentOutOfRangeException("value", "cannot set resolution grade to a negative number");
            }
            this.resolution = value;
        }
    }

    /// <summary>
    /// Gets or sets the user's comments.
    /// </summary>
    /// <value>
    /// The user's comments.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The user's comments.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set comments to null</exception>
    public string Comments
    {
        get { return this.comments; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set comments to null");
            }
            this.comments = value;
        }
    }

    /// <summary>
    /// Gets or sets a value indicating whether the user would like to be contacted.
    /// </summary>
    /// <value>
    ///   <c>true</c> if they would like to be contacted; otherwise, <c>false</c>.
    /// </value>
    /// <precondition>None.</precondition>
    /// <returns>True iff the user wishes to be contacted.</returns>
    public bool Contact { get; set; }

    /// <summary>
    /// Gets or sets the user's preferred contact method.
    /// </summary>
    /// <value>
    /// The preferred contact method.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The user's preferred contact method.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set contact method to null</exception>
    public string ContactMethod
    {
        get { return this.contactMethod; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set contact method to null");
            }
            this.contactMethod = value;
        }
    }
}