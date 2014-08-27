module MetaHelpers

  def page_title
    title = "Middleman" #Set site title here

    if current_page.data.title
      title = current_page.data.title + " — " + title
    end

    title
  end

  def page_description
    description = "A Static Site Generator" # Set site description here

    if current_page.data.description
      description = current_page.data.description
    end

    description
  end

  def page_keywords
    keywords = [] # Set site keywords here ['keyword-a', 'keyword-b']

    if current_page.data.keywords
      keywords.concat(current_page.data.keywords)
    end

    keywords.uniq.join(", ")
  end

  def page_author
    author = "Author Name" #Set site author name here

    if current_page.data.author
      author = current_page.data.author
    end

    author
  end

end
