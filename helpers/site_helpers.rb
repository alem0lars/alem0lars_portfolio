module SiteHelpers

  def page_title
    title = "Alessandro Molari portfolio"
    if data.page.title
      title << " | " + data.page.title
    end
    title
  end

  def page_description
    if data.page.description
      description = data.page.description
    else
      description = "An Inventive Software Engineer focused in Software Elegance."
    end
    description
  end

end
