require "kdtree"
require "tzwhere/version"
require "tzwhere/query"
require "tzwhere/active_support"

module TZWhere
  class << self
    def lookup(latitude, longitude)
      @tzwhere ||= TZWhere::Query.new
      @tzwhere.lookup(latitude, longitude)
    end
  end
end
