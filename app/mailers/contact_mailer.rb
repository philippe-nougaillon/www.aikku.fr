# frozen_string_literal: true

class ContactMailer < ApplicationMailer
  def submitted(message)
    @message = message
    mail(to: "sebastien.pourchaire@aikku.eu, philippe.nougaillon@aikku.eu, pierre-emmanuel.dacquet@aikku.eu",
      subject: "[WWW.AIKKU.EU] Nouveau contact")
  end
end
