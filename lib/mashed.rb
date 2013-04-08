class Mashed
  class << self
    def demongoize(object)
      Hashie::Mash.new(object)
    end

    def mongoize(object)
      if object.nil?
        {}
      else
        Hash[object]
      end
    end

    def evolve(object)
      case object
      when Mashed then mongoize(object)
      else object
      end
    end
  end
end