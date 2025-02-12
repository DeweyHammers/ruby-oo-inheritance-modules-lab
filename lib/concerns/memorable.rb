module Memorable
    module ClassMethods
        def reset_all
            self.all.clear
        end

        def count
            self.all.count
        end
    end

    module InstanceMethod
        def initialize
            self.class.all << self
        end
    end
end

class Song
    extend Memorable::ClassMethods
    include Memorable::InstanceMethod
end

class Artist
    extend Memorable::ClassMethods
    include Memorable::InstanceMethod
end