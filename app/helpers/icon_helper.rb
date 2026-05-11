module IconHelper
def icon(name, options = {})
  path = Rails.root.join("app/assets/icons/#{name}.svg")
  return "?" unless File.exist?(path)

  svg = File.read(path)
  svg = svg.sub("<svg", "<svg class=\"#{options[:class]}\"") if options[:class]

  svg.html_safe
end
end