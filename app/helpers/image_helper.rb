module ImageHelper
  def image_for(url, options={})
    if url
      image_tag(url, options)
    end
  end
end
