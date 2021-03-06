module MusicPlayer
  class Config
    def initialize(data={})
      @data = {}
      update!(data)
    end

    def update!(data)
      data.each do |key, value|
        self[key] = value
      end
    end

    def [](key)
      @data[key.to_sym]
    end

    def []=(key, value)
      if value.class == Hash
        @data[key.to_sym] = Config.new(value)
      else
        @data[key.to_sym] = value
      end
    end

    def method_missing(sym, *args)
      if sym.to_s =~ /(.+)=$/
        self[$1] = args.first
      else
        self[sym]
      end
    end
  end

  class << self
    def setup
      yield config
    end

    def config
      @config ||= Config.new
    end

    def config=(new_config)
      @config = new_config
    end
  end
end

#Musicplayer.setup do |config|
  #config.mpd_server = '192.0.0.1'
  #config.mpd_port = 6060
  #config.spotify_password = 'password'
  #config.spotify_username = 'username'
#end
