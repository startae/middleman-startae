def page_title
  title = site_name.dup
  if data.page.title
    title = "#{current_page.data.title} — #{site_name}"
  end
  title
end


def current_page_url
  current_page.url
end


def page_description
  description = site_description.dup
  if data.page.description
    description = data.page.description
  end
  description
end


def page_keywords
  keywords = [] # Set site keywords here ['keyword-a', 'keyword-b']

  if data.page.keywords
    keywords.concat(data.page.keywords)
  end

  keywords.uniq.join(", ")
end
