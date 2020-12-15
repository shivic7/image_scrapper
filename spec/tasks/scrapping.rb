require 'spec_helper'
require 'rake'

describe 'scrapping' do
  let (:url) { 'https://github.com/' }
  Rake.application.invoke_task "img_scrapper:scrapping[#{region_name}]"
end
