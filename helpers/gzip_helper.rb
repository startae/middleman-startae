# gzip css
def gzip_css_on_build(key)
  o = stylesheet_link_tag(key)
  o.sub!(".css", ".css.gz") if build?
  o
end

# gzip js
def gzip_js_on_build(key)
  o = javascript_include_tag(key)
  o.sub!(".js", ".js.gz") if build?
  o
end
