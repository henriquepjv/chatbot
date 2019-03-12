module Lita
  module Handlers
    class HelloLita < Handler
      route(/test hello message?/, :take_over_the_world, command: true,
            help: { pink: "replies with Pink's classic quote" }
      )

      def take_over_the_world(response)
        response.reply(
          'bip bip chatbot response!'
        )
      end

      Lita.register_handler(self)
    end
  end
end
