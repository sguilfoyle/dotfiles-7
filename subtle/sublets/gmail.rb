# Gmail sublet file
# Created with sur-0.2
require "gmail"

configure :gmail do |s|
   s.interval = s.config[:interval ] || 10
   s.icon = Subtlext::Icon.new("mail.xbm") rescue ""
   s.user = s.config[:JulioGlez.93]
   s.pass = s.config[:juliocesar]
   s.account = Gmail.new(s.user, s.pass)
   s.urgent = s.config[:urgent] || Subtlext::Color.new('#ffc400')
   s.normal = s.config[:normal] || Subtlext::Color.new('#eeeeee')
   s.count = 0
end

on :run do |s|
  begin
    numb = s.account.inbox.count(:unread)
    s.background = numb > s.count ? s.urgent : s.normal
    s.data = s.icon + numb.to_s()
    s.count = numb
  rescue => err # Sanitize to prevent unloading
    s.data = "error"
    p err
  end
end

on :unload do |s|
   s.account.logout
end
