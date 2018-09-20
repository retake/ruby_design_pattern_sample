require './proxy_service'

service = ProxyService.new
puts ''
puts ' ### Proxyを通して、事前処理後に実処理の同名メソッドを実行 ###'
service.do_something
puts ''
puts ' ### Proxyを通して、そのまま実処理の同名メソッドを実行 ###'
service.do_other
puts ''
puts ' ### Proxyを通して、実処理に無いメソッドを実行 ###'
service.do_nothing

