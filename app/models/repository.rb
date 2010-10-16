class Repository < ActiveRecord::Base
  belongs_to :user
  has_many :dependencies
  def language_icon
    return "icons/script-code.png" if language.nil?

    case language.downcase
    when 'ruby':    "icons/ruby.png"
    when 'javascript': "icons/script-code.png"
    when 'perl':    "icons/script-attribute-p.png"
    when 'python':  "icons/script-code.png"
    when 'c':       "icons/script-attribute-c.png"
    when 'php':     "icons/script-php.png"
    when 'shell':   "icons/terminal.png"
    when 'java':    "icons/cup.png"
    when 'c++':     "icons/script-code.png"
    when 'viml':    "icons/script-code.png"
    when 'c#':      "icons/script-visual-studio.png"
    when 'lisp':    "icons/game-monitor.png"
    when 'haskell': "icons/function.png"
    when 'actionscript': "icons/blue-document-flash-movie.png"
    when 'lua':     "icons/weather-moon.png"
    when 'f#':      "icons/blue-document-attribute-f.png"
    when 'visualbasic': "icons/blue-document-visual-studio.png"
    when 'r':       "icons/script-attribute-r.png"
    when 'd':       "icons/script-attribute-d.png"
    when 'erlang':  "icons/mobile-phone.png"
    when 'boo':     "icons/ghost.png"      
    else "icons/script-code.png"
    end
  end
protected
  after_create :work
  def work
    Resque.enqueue(GemfileWorker, self.id)
  end
end
