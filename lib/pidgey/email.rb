module Pidgey
  module Email
    # Add one or more emails to a Recipient List.
    # @url http://sendgrid.com/docs/API_Reference/Marketing_Emails_API/emails.html#add-json
    # @param [String] list name
    # @param [String] data in JSON. It must contains the keys: email and name
    def add_email(list_name, data)
      self.post("/newsletter/lists/email/add.json", { body: { list: list_name, data: data } })
    end

    # Get the email addresses and associated fields for a Recipient List.
    # @url http://sendgrid.com/docs/API_Reference/Marketing_Emails_API/emails.html#get-json
    # @param [String] list_name The list you are searching.
    # @param [String] email Optional email addresses to search for in the Recipient List.
    def get_email(list_name, email = nil)
      if email.nil?
        self.post("/newsletter/lists/email/get.json", { body: { list: list_name } })
      else
        self.post("/newsletter/lists/email/get.json", { body: { list: list_name, email: email } })
      end
    end

    # Remove one or more emails from a Recipient List.
    # @url http://sendgrid.com/docs/API_Reference/Marketing_Emails_API/emails.html#delete-json
    # @param [String] list_name The list which you are removing email addresses from.
    # @param [String] email the email address or email addresses you wish to remove from the specified Recipient List.
    def delete_email(list_name, email)
      self.post("/newsletter/lists/email/delete.json", { body: { list: list_name, email: email } })
    end
  end
end