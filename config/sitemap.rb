# frozen_string_literal: true

# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://www.aikku.eu/"
SitemapGenerator::Sitemap.compress = false
SitemapGenerator::Sitemap.create do
  add 'fr/aikku_plann'
  add 'en/aikku_plann'

  add 'fr/aikku_coopcomm'
  add 'en/aikku_coopcomm'

  add 'fr/aikku_access'
  add 'en/aikku_access'

  add 'fr/services'
  add 'en/services'

  add 'fr/qui_sommes_nous'
  add 'en/qui_sommes_nous'

  add 'en/contact' 
  add 'fr/contact'

  add 'fr/mentions_légales'
  add 'en/mentions_légales'
end
