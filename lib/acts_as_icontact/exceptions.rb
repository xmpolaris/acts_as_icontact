module ActsAsIcontact
  # Thrown when a configuration value isn't provided or is invalid.
  class ConfigError < StandardError; end
  
  # Thrown when a bad parameter is passed to a resource find.
  class QueryError < StandardError; end
  
  # Thrown before saving if iContact validation rules are not met.
  class ValidationError < StandardError; end
  
  # Thrown by attempts to save a read-only resource.
  class ReadOnlyError < StandardError; end
  
  # Thrown when a resource calls save! and fails. Contains the +.errors+ array from
  # the resource.
  class SaveError < StandardError
    attr_reader :errors
    
    def initialize(errors = [])
      @errors = errors
    end
    
    def message
      errors.first
    end
    alias_method :error, :message
  end
end