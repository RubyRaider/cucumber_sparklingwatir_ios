require 'sparkling_watir/element'

class Page

  attr_reader :app

  def initialize(app)
    @app = app
  end

  def to_s
    self.class.to_s.sub('Page', ' Page')
  end
end
