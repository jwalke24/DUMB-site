using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
///     This class is used to store information about the
///     customers in the contact list.
/// </summary>
/// <author>Jonathan Walker</author>
/// <version>Spring 2015</version>
public class CustomerList
{
    /// <summary>
    ///     Gets or sets the <see cref="Customer" /> at the specified index.
    /// </summary>
    /// <value>
    ///     The <see cref="Customer" />.
    /// </value>
    /// <param name="index">The index.</param>
    /// <precondition> index > 0 && this.customerList.Count > index && value != null </precondition>
    /// <returns>The customer at the specified index.</returns>
    /// <exception cref="System.ArgumentNullException">value;cannot set a null customer</exception>
    public Customer this[int index]
    {
        get
        {
            if (index < 0 || index >= this._customerList.Count)
            {
                throw new ArgumentOutOfRangeException("index", "index cannot be negative or greater than the list size");
            }
            return this._customerList[index];
        }
        set
        {
            if (value == null)
            {
                throw new ArgumentNullException("value", "cannot set a null customer");
            }
            this._customerList[index] = value;
        }
    }

    /// <summary>
    ///     Gets the <see cref="Customer" /> with the specified name.
    /// </summary>
    /// <value>
    ///     The <see cref="Customer" />.
    /// </value>
    /// <param name="name">The name.</param>
    /// <precondition>None.</precondition>
    /// <returns>The first customer from the list with the specified name.</returns>
    public Customer this[string name]
    {
        get
        {
            Customer specifiedCustomer = null;
            foreach (var currentCustomer in this._customerList)
            {
                if (currentCustomer.Name == name)
                {
                    specifiedCustomer = currentCustomer;
                }
            }
            return specifiedCustomer;
        }
    }

    private readonly List<Customer> _customerList;

    /// <summary>
    ///     Initializes a new instance of the <see cref="CustomerList" /> class.
    /// </summary>
    /// <precondition>None.</precondition>
    /// <postcondition>A new customer list is instantiated.</postcondition>
    public CustomerList()
    {
        this._customerList = new List<Customer>();
    }

    /// <summary>
    ///     Returns the number of customers in the list.
    /// </summary>
    /// <precondition>None.</precondition>
    /// <returns>The number of customers in the list.</returns>
    public int Count()
    {
        return this._customerList.Count;
    }

    /// <summary>
    ///     Adds the specified customer to the list.
    /// </summary>
    /// <param name="newCustomer">The new customer.</param>
    /// <precondition>newCustomer != null</precondition>
    /// <postcondition>A new customer is added to the end of the list.</postcondition>
    /// <exception cref="System.ArgumentNullException">newCustomer;cannot add a null customer to the list</exception>
    public void AddItem(Customer newCustomer)
    {
        if (newCustomer == null)
        {
            throw new ArgumentNullException("newCustomer", "cannot add a null customer to the list");
        }
        this._customerList.Add(newCustomer);
    }

    /// <summary>
    ///     Removes the customer at the specified index.
    /// </summary>
    /// <param name="index">The index.</param>
    /// <precondition>index > 0 && this.customerList.Count > index</precondition>
    /// <postcondition>A customer is removed from the list.</postcondition>
    /// <exception cref="System.ArgumentOutOfRangeException">index;index cannot be negative or greater than the list size</exception>
    public void RemoveAt(int index)
    {
        if (index < 0 || index > this._customerList.Count)
        {
            throw new ArgumentOutOfRangeException("index", "index cannot be negative or greater than the list size");
        }
        this._customerList.RemoveAt(index);
    }

    /// <summary>
    ///     Clears the list of all customers.
    /// </summary>
    /// <precondition>None.</precondition>
    /// <postcondition>The list is empty.</postcondition>
    public void Clear()
    {
        this._customerList.Clear();
    }

    /// <summary>
    ///     Gets the customer list stored in the current session.
    /// </summary>
    /// <precondition>None.</precondition>
    /// <returns>The customer list stored in the current session.</returns>
    public static CustomerList GetCustomers()
    {
        if (HttpContext.Current.Session["CustomerList"] == null)
        {
            HttpContext.Current.Session["CustomerList"] = new CustomerList();
        }

        return (CustomerList) HttpContext.Current.Session["CustomerList"];
    }
}