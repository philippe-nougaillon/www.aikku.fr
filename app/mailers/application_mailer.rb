# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: "contact@aikku.eu"
  layout "mailer"
end
