module Pidgey
  module Newsletter
    module Recipient
      # This module allows you to manage which lists are assigned to marketing email.
      # More info: http://sendgrid.com/docs/API_Reference/Marketing_Emails_API/recipients.html


      # Assign a List to a Marketing Email.
      # @url http://sendgrid.com/docs/API_Reference/Marketing_Emails_API/recipients.html#add-json
      # @param [String] list The name of the list to assign to the marketing email.
      # @param [String] name The name of the marketing email.
      def add_recipients_newsletter(list, name)
        self.post("/newsletter/recipients/add.json", { body: { list: list, name: name } })
      end

      # Get all lists assigned to a particular marketing email.
      # @url http://sendgrid.com/docs/API_Reference/Marketing_Emails_API/recipients.html#get-json
      # @param [String] name The name of the marketing email for which to retrieve lists.
      def get_recipients_newsletter(name)
        self.post("/newsletter/recipients/get.json", { body: { name: name } })
      end

      # Remove assigned lists from marketing email.
      # @url http://sendgrid.com/docs/API_Reference/Marketing_Emails_API/recipients.html#delete-json
      # @param [String] name Remove the scheduled delivery time from an existing Marketing Email.
      # @param [String] name Remove the scheduled delivery time from an existing Marketing Email.
      def delete_recipients_newsletter(list, name)
        self.post("/newsletter/schedule/delete.json", { body: { list: list, name: name } })
      end
    end
  end
end
