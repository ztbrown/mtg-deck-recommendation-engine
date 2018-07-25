module ImageHelper
  def image_for(url)
    if url
      image_tag(url)
    end
  end
end
