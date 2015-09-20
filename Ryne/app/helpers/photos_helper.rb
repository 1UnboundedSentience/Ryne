require 'uri'
module PhotosHelper
  def url_without_locale_params(url)
    p url
    p "penguin"
    return url.split("?")[0]
  end

end
