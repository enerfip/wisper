module Wisper
  module Broadcasters
    class SendBroadcaster
      def broadcast(listener, publisher, event, args, options)
        listener.public_send(event, *args, **options)
      end
    end
  end
end
