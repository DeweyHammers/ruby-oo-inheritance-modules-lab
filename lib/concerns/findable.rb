module Findable
    module ClassMethods
        def find_by_name(name)
          all().detect{|a| a.name == name}
        end
    end 
end

class Song
    extend Findable::ClassMethods
end

class Artist
    extend Findable::ClassMethods
end