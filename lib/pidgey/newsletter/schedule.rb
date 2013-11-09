module Pidgey
  module Newsletter
    module Schedule
      # Schedule a delivery time for an existing Marketing Email.
      # @url http://sendgrid.com/docs/API_Reference/Marketing_Emails_API/schedule.html#add-json
      # @param [String] name Marketing Email to schedule delivery for.
      # @param [Datetime] at Date / Time to schedule marketing email Delivery.
      # @param [Integer] Number of minutes until delivery should occur.
      def add_schedule_newsletter(name, at = nil, after = nil)
        q = { name: name }
        q[:at] = at.iso8601 if at
        q[:after] = after if after

        self.post("/newsletter/schedule/add.json", { query: q })
      end

      # Retrieve the scheduled delivery time for an existing Marketing Email.
      # @url http://sendgrid.com/docs/API_Reference/Marketing_Emails_API/schedule.html#get-json
      # @param [String] name Retrieve the delivery time scheduled for this Marketing Email.
      def get_schedule_newsletter(name)
        self.post("/newsletter/schedule/get.json", { query: { name: name } })
      end

      # Cancel a scheduled send for a Marketing Email.
      # @url http://sendgrid.com/docs/API_Reference/Marketing_Emails_API/schedule.html#delete-json
      # @param [String] name Remove the scheduled delivery time from an existing Marketing Email.
      def delete_schedule_newsletter(name)
        self.post("/newsletter/schedule/delete.json", { query: { name: name } })
      end
    end
  end
end