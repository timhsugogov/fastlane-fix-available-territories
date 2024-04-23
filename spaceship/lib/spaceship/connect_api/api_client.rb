
        # Membership expired
        # {
        #   "errors" : [
        #     {
        #       "id" : "UUID",
        #       "status" : "403",
        #       "code" : "FORBIDDEN_ERROR",
        #       "title" : "This request is forbidden for security reasons",

        end

        return formatted_errors
      end

      private

      def local_variable_get(binding, name)
        if binding.respond_to?(:local_variable_get)
          binding.local_variable_get(name)
        else
          binding.eval(name.to_s)
        end
      end

      def provider_id
        return team_id if self.provider.nil?
        self.provider.provider_id
      end
    end
  end
  # rubocop:enable Metrics/ClassLength
end
