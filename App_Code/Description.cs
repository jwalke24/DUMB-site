using System;

/// <summary>
///     This class represents the user entered feedback values.
/// </summary>
/// <author>Jonathan Walker</author>
/// <version>Spring 2015</version>
public class Description
{
    /// <summary>
    ///     Gets or sets the customer id.
    /// </summary>
    /// <value>
    ///     The customer id.
    /// </value>
    /// <precondition>None.</precondition>
    /// <returns>The customer id.</returns>
    public int CustomerId { get; set; }

    /// <summary>
    ///     Gets or sets the feedback id.
    /// </summary>
    /// <value>
    ///     The feedback identifier.
    /// </value>
    /// <precondition>None.</precondition>
    /// <returns>The feedback id.</returns>
    public int FeedbackId { get; set; }

    /// <summary>
    ///     Gets or sets the service time grade.
    /// </summary>
    /// <value>
    ///     The service time grade as an int.
    /// </value>
    /// <precondition>value >= 0</precondition>
    /// <returns>The service time grade.</returns>
    /// <exception cref="System.ArgumentOutOfRangeException">value;cannot set service time grade to a negative number</exception>
    public int ServiceTime
    {
        get { return this._serviceTime; }
        set
        {
            if (value < 0)
            {
                throw new ArgumentOutOfRangeException("value", "cannot set service time grade to a negative number");
            }
            this._serviceTime = value;
        }
    }

    /// <summary>
    ///     Gets or sets the efficiency grade.
    /// </summary>
    /// <value>
    ///     The efficiency grade as an int.
    /// </value>
    /// <precondition>value >= 0</precondition>
    /// <returns>The efficiency grade.</returns>
    /// <exception cref="System.ArgumentOutOfRangeException">value;cannot set efficiency grade to a negative number</exception>
    public int Efficiency
    {
        get { return this._efficiency; }
        set
        {
            if (value < 0)
            {
                throw new ArgumentOutOfRangeException("value", "cannot set efficiency grade to a negative number");
            }
            this._efficiency = value;
        }
    }

    /// <summary>
    ///     Gets or sets the resolution grade.
    /// </summary>
    /// <value>
    ///     The resolution grade as an int.
    /// </value>
    /// <precondition>value >= 0</precondition>
    /// <returns>The resolution grade.</returns>
    /// <exception cref="System.ArgumentOutOfRangeException">value;cannot set resolution grade to a negative number</exception>
    public int Resolution
    {
        get { return this._resolution; }
        set
        {
            if (value < 0)
            {
                throw new ArgumentOutOfRangeException("value", "cannot set resolution grade to a negative number");
            }
            this._resolution = value;
        }
    }

    /// <summary>
    ///     Gets or sets the user's comments.
    /// </summary>
    /// <value>
    ///     The user's comments.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The user's comments.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set comments to null</exception>
    public string Comments
    {
        get { return this._comments; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set comments to null");
            }
            this._comments = value;
        }
    }

    /// <summary>
    ///     Gets or sets a value indicating whether the user would like to be contacted.
    /// </summary>
    /// <value>
    ///     <c>true</c> if they would like to be contacted; otherwise, <c>false</c>.
    /// </value>
    /// <precondition>None.</precondition>
    /// <returns>True iff the user wishes to be contacted.</returns>
    public bool Contact { get; set; }

    /// <summary>
    ///     Gets or sets the user's preferred contact method.
    /// </summary>
    /// <value>
    ///     The preferred contact method.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The user's preferred contact method.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set contact method to null</exception>
    public string ContactMethod
    {
        get { return this._contactMethod; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set contact method to null");
            }
            this._contactMethod = value;
        }
    }

    private string _comments;
    private string _contactMethod;
    private int _efficiency;
    private int _resolution;
    private int _serviceTime;
}