class String
    def is_integer_or_is_float?
        self.to_f.to_s == self || self.to_i.to_s == self
    end
end