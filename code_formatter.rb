require 'sinatra/base'

# Reference:
#   http://code.tutsplus.com/tutorials/an-introduction-to-haml-and-sinatra--net-14858
#   http://ningbit.github.io/blog/2013/06/28/how-to-integrate-bootstrap-css-into-your-sinatra-site/
#   http://joeyates.info/2010/04/07/a-beginners-sinatra-tutorial/

class CodeFormatter < Sinatra::Base

  set :static, true
  set :public_folder, File.dirname(__FILE__) + '/static'
  set :haml, format: :html5

  get '/' do
    # Reference: http://stackoverflow.com/questions/2437390/serving-static-files-with-sinatra
    #send_file File.join(settings.public_folder, 'index.html')
    haml :index
  end

end

