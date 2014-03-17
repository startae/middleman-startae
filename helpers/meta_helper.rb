def page_title
  title = "Middleman" #Set site title here

  if data.page.title
    title << " | " + data.page.title
  end

  title
end

def page_description
  description = "A Static Site Generator" # Set site description here

  if data.page.description
    description = data.page.description
  end

  description
end

def page_keywords
  keywords = [] # Set site keywords here

  if data.page.keywords
    keywords.concat(dat.page.keywords)
  end

  keywords.uniq.join(", ")
end
