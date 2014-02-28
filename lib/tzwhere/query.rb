module TZWhere
  class Query
    def initialize
      @points ||= []
      @timezones ||= []

      load_points

      @kd = Kdtree.new(@points)
    end

    def lookup(latitude, longitude)
      @timezones.at(@kd.nearest(latitude, longitude))
    end

    private

    def load_points
      File.open(File.join(File.dirname(__FILE__) + "/points.dat"), "r").each_line do |line|
        lat, long, timezone = line.split

        @timezones.push(timezone) unless @timezones.index(timezone)

        @points << [lat.to_f, long.to_f, @timezones.index(timezone)]
      end
    end
  end
end
