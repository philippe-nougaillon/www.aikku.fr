# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = 'https://www.aikku.eu/'

SitemapGenerator::Sitemap.create do
  add qui_sommes_nous_path
  add logiciels_path
  add services_path
  add nos_clients_path
  add contact_path
  add planning_path
  add camino_path
  add prestofacto_path
  add crystal_data_path
  add mentions_legales_path
  add emargements_path
  add guide_planning_path
  add talea_path
  # add portfolio_path
  # add blog_path

  Post.where(published: true).find_each do |post|
    add post_path(post), lastmod: post.updated_at
  end
end
