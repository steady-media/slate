require "pathname"

class Helper
  class << self
    def render_shared(path)
      File.open(shared_path.join(path), "r:UTF-8", &:read)
    end

    private

    def shared_path
      Pathname.new(File.expand_path('../source/includes/shared/', __dir__))
    end
  end
end
