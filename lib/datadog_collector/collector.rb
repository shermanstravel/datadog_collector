module DatadogCollector
  class Collector

    attr_reader :collector

    def initialize(host=Statsd::DEFAULT_HOST, port=Statsd::DEFAULT_PORT, opts={})
      @collector = ::Statsd.new(host, port, opts)
    end

    def increment(stat, opts={})
      @collector.increment(stat, checked_opts(opts))
    end

    def count(stat, count, opts={})
      @collector.count(stat, count, checked_opts(opts))
    end

    def gauge(stat, value, opts={})
      @collector.gauge(stat, value, checked_opts(opts))
    end

    def timing(stat, ms, opts={})
      @collector.timing(stat, ms, checked_opts(opts))
    end

    def method_missing(method, *args)
      @collector.send(method, *args)
    end

    def respond_to_missing?(method, include_private = false)
      @collector.respond_to?(method, include_private)
    end

    private

    def checked_opts(obj={})
      return obj if obj.is_a?(Hash)
      return { :sample_rate => obj } if obj.is_a?(Fixnum)
    end
  end
end
