Makenewsmail
=========

Ruby API wrapper for Make Newsmail

What is Make Newsmail?
-----------------

Make Newsmail is a software as a service that provides a clean and easy to understand interface for creating newsletters.

Visit [Make Newsmail](http://www.makenewsmail.com) to learn more.

## Usage

Create an instance:

    make = Makenewsmail::Client.new("account_email","api_key")

### Subscriberlist handling
    
Get your subscriberlists:

    make.get_lists
    
Create a new subscriberlist:

    make.create_list(title: "New list")

### Subscribers handling
    
Create or update a subscriber to a subscriberlist:

    make.subscribe(subscriberlist_id, {
      email: "john@example.com",
      firstname: "John",
      lastname: "Doe"
    })
    
Unsubscribe a subscriber from a subscriberlists:

    make.unsubscribe(subscriberlist_id, { email: "john@example.com" })
    
**Every call will return XML with root node "status"**