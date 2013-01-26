module ActionController
  class Responder
    protected

    def api_behavior(error)
      raise error unless resourceful?

      if get?
        display resource
      elsif post?
        display resource, :status => :created, :location => api_location
      else
        display resource
      end
    end

  end
end
