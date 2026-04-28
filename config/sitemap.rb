# frozen_string_literal: true

# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://www.aikku.eu/"

SitemapGenerator::Sitemap.create do
  add aikku_access_path
  add aikku_plann_path
  add aikku_coopcomm_path
  # add aikku_projects_path
  # add aikku_sign_path

  add qui_sommes_nous_path
  add services_path
  # add nos_clients_path
  add contact_path
  add mentions_legales_path

  # add prestofacto_path
  # add talea_path
  # add portfolio_path
  # add blog_path

  # Post.where(published: true).find_each do |post|
  #   add post_path(post), lastmod: post.updated_at
  # end
end
