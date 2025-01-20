class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home; end

  # def portfolio
  #   @projets = Projet.all
  #   @tags = @projets.tag_counts_on(:tags).order(:taggings_count).reverse

  #   unless params[:tag].blank?
  #     if params[:tag] != session[:tag]
  #       @projets = Projet.tagged_with(params[:tag])
  #       session[:tag] = params[:tag]
  #     else
  #       session[:tag] = params[:tag] = nil
  #     end
  #   end
  #   @projets_commits = @projets.sum(:commit)
  #   @projets_deploys = @projets.sum(:deploy)
  #   @projets_coffees = @projets.sum(:coffee)
  #   @projets = @projets.includes(:tags)
  # end

  def contact; end

  def contact_submit
    if verify_recaptcha || Rails.env.development?
      message = Message.create(email: params[:email], objet: params[:objet], contenu: params[:contenu],
                               nom: params[:nom], prénom: params[:prénom], structure: params[:structure], fonction: params[:fonction], mobile: params[:mobile])
      ContactMailer.submitted(message).deliver_now
      redirect_to root_path, notice: t('contact.message_sent')
    else
      flash[:alert] = t('contact.recaptcha_problem')
      render 'contact'
    end
  end

  def qui_sommes_nous; end

  # def blog
  #   @posts = Post.where(published: true)
  #   @tags = @posts.tag_counts_on(:tags).order(:taggings_count).reverse

  #   return if params[:tag].blank?

  #   if params[:tag] != session[:tag]
  #     @posts = Post.tagged_with(params[:tag])
  #     session[:tag] = params[:tag]
  #   else
  #     session[:tag] = params[:tag] = nil
  #   end
  # end

  def nos_clients
    @tags = Client.tag_counts_on(:tags).order(:taggings_count).reverse
    @clients = Client.ordered

    return if params[:tag].blank?

    if params[:tag] != session[:tag]
      @clients = Client.tagged_with(params[:tag]).ordered
      session[:tag] = params[:tag]
    else
      session[:tag] = params[:tag] = nil
    end
  end

  def services; end

  def logiciels; end

  def prestofacto; end

  def guide_planning; end

  def mentions_légales; end
end
