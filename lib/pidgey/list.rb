module Pidgey
  module List
    # List all Recipient Lists on your account, or check if a particular List exists.
    # @url http://sendgrid.com/docs/API_Reference/Marketing_Emails_API/lists.html#get-json
    # @param [String] Recipient List name optional
    def get_list(name = nil)
      self.post("/newsletter/lists/get.json", { body: { list: name } })
    end

    # Creates a new List.
    # @url http://sendgrid.com/docs/API_Reference/Marketing_Emails_API/lists.html#add-json
    # @param [String] new Recipient List name
    def add_list(name)
      self.post("/newsletter/lists/add.json", { body: { list: name }  })
    end

    # Rename a Recipient List.
    # @url http://sendgrid.com/docs/API_Reference/Marketing_Emails_API/lists.html#edit-json
    # @param [String] the name of the Recipient List to be renamed
    # @param [String] the new name for the Recipient List
    def edit_list(name, new_name)
      self.post("/newsletter/lists/edit.json", { body: { list: name, newlist: new_name } })
    end

    # Remove a Recipient List from your account.
    # @url http://sendgrid.com/docs/API_Reference/Marketing_Emails_API/lists.html#add-json
    # @param [String] list name
    def delete_list(name)
      self.post("/newsletter/lists/delete.json", { body: { list: name } })
    end
  end
end