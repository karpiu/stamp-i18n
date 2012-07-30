require 'date'
require 'time'
require 'i18n'

require "stamp-i18n/version"

# using stamp gem
require 'stamp'

module StampI18n
  def localize_stamp(example)
    I18n.localize self, :format => strftime_format(example)
  end
  alias :l_stamp :localize_stamp
end

Date.send(:include,::StampI18n)
Time.send(:include,::StampI18n)
