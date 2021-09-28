# @api private

module Wisper
  class BlockRegistration < Registration
    def broadcast(event, publisher, *args, **options)
      if should_broadcast?(event)
        listener.call(*args, **options)
      end
    end
  end
end
