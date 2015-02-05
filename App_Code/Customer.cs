using System;

/// <summary>
/// This class represents a customer in a database.
/// A Customer contains information such as: id, name, and contact information.
/// 
/// <author>Jonathan Walker</author>
/// <version>Spring 2015</version>
/// </summary>
public class Customer
{
    private string _customerId;
    private string _name;
    private string _address;
    private string _city;
    private string _state;
    private string _zipCode;
    private string _phoneNumber;
    private string _emailAddress;

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
    /// Gets or sets the customer's name.
    /// </summary>
    /// <value>
    /// The customer's name.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The customer's name.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set name to null</exception>
    public string Name
    {
        get { return this._name; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set name to null");
            }
            this._name = value;
        }
    }

    /// <summary>
    /// Gets or sets the customer's street address.
    /// </summary>
    /// <value>
    /// The customer's street address.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The customer's street address.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set address to null</exception>
    public string Address
    {
        get { return this._address; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set address to null");
            }
            this._address = value;
        }
    }

    /// <summary>
    /// Gets or sets the customer's city of residence.
    /// </summary>
    /// <value>
    /// The customer's city of residence.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The customer's city of residence.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set city to null</exception>
    public string City
    {
        get { return this._city; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set city to null");
            }
            this._city = value;
        }
    }

    /// <summary>
    /// Gets or sets the customer's state of residence.
    /// </summary>
    /// <value>
    /// The customer's state of residence.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The customer's state of residence.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set state to null</exception>
    public string State
    {
        get { return this._state; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set state to null");
            }
            this._state = value;
        }
    }

    /// <summary>
    /// Gets or sets the customer's zip code.
    /// </summary>
    /// <value>
    /// The customer's zip code.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The customer's zip code.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set zip code to null</exception>
    public string ZipCode
    {
        get { return this._zipCode; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set zip code to null");
            }
            this._zipCode = value;
        }
    }

    /// <summary>
    /// Gets or sets the customer's phone number.
    /// </summary>
    /// <value>
    /// The customer's phone number.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The customer's phone number.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set phone number to null</exception>
    public string PhoneNumber
    {
        get { return this._phoneNumber; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set phone number to null");
            }
            this._phoneNumber = value;
        }
    }

    /// <summary>
    /// Gets or sets the customer's email address.
    /// </summary>
    /// <value>
    /// The customer's email address.
    /// </value>
    /// <precondition>value != null</precondition>
    /// <returns>The customer's email address.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set email address to null</exception>
    public string EmailAddress
    {
        get { return this._emailAddress; }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set email address to null");
            }
            this._emailAddress = value;
        }
    }
}