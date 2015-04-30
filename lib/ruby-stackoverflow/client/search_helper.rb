module RubyStackoverflow
  class Client
    module SearchHelper

      def search(query, options={})
        search_response(query, options)
      end

      def similar(title, options={})
        similar_response(title, options)
      end

      private

      def similar_response(title, options={})
        getr 'similar', 'question', options.merge(title: title)
      end

      def search_response(query, options={})
        getr 'search', 'question', options.merge(intitle: query)
      end

    end
  end
end
