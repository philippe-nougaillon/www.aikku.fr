class ContactMailer < ApplicationMailer
  def submitted(message)
    @message = message
    mail(to: 'sebastien.pourchaire@aikku.eu',
         cc: 'nougaillon@aikku.eu',
         subject: '[PORTFOLIO] Nouveau contact')
  end
end
