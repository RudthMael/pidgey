module Pidgey
  module Newsletter
    # Retrieve the contents of an existing Marketing Email.
    # @url http://sendgrid.com/docs/API_Reference/Marketing_Emails_API/newsletters.html#get-json
    # @param [String] Retrieve the content of an existing Marketing Email.
    def get_newsletter(name)
      self.post("/newsletter/get.json", { body: { name: name } })
    end

    # Create a new Marketing Email.
    # @url http://sendgrid.com/docs/API_Reference/Marketing_Emails_API/newsletters.html#create-json
    # @param [String] identify The Identity that will be used for the Marketing Email being created.
    # @param [String] name The name that will be used for the Marketing Email being created.
    # @param [String] subject The subject that will be used for the Marketing Email being created.
    # @param [String] text The text portion of the Marketing Email being created.
    # @param [String] html The html portion of the Marketing Email being created.
    def add_newsletter(identity, name, subject, text, html)
      body = {
        identity: identity,
        name: name,
        subject: subject,
        text: text,
        html: html
      }

      self.post("/newsletter/add.json", { body: body, headers: { 'Content-Type' => 'application/x-www-form-urlencoded' } })
    end

    # Edit an existing Marketing Email.
    # @url http://sendgrid.com/docs/API_Reference/Marketing_Emails_API/newsletters.html#create-json
    # @param [String] name The name of the Marketing Email being updated.
    # @param [String] newname The new name for the Marketing Email being edited..
    # @param [String] identity The new Identity for the Marketing Email being edited.
    # @param [String] subject The new subject that will be used for the Marketing Email being edited.
    # @param [String] text The new text portion of the Marketing Email being edited.
    # @param [String] html The new html portion of the Marketing Email being edited.
    def edit_newsletter(name, newname, identity, subject, text, html)
      body = {
        identity: identity,
        name: name,
        subject: subject,
        text: text,
        html: html,
        newname: newname
      }

      self.post("/newsletter/edit.json", { body: body })
    end

    # Remove an existing Marketing Email.
    # @url http://sendgrid.com/docs/API_Reference/Marketing_Emails_API/newsletters.html#delete-json
    # @param [String] name Remove the Marketing Email with this name.
    def delete_newsletter(name)
      self.post("/newsletter/delete.json", { body: { name: name } })
    end
  end
end