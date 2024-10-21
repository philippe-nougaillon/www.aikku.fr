class ContactMailer < ApplicationMailer
  def submitted(message)
    @message = message
    mail(to: 'sebastien.pourchaire@aikku.eu',
         cc: 'philippe.nougaillon@aikku.eu',
         subject: '[WWW.AIKKU.EU] Nouveau contact')
  end
end
