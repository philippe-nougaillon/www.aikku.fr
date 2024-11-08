class ContactMailer < ApplicationMailer
  def submitted(message)
    @message = message
    mail(to: 'contact@aikku.eu',
         subject: '[WWW.AIKKU.EU] Nouveau contact')
  end
end
