class AgendaMailer < ApplicationMailer
  default from: 'admin@example.com'
  layout 'mailer'

  def destroy_mail(agenda)
    @agenda = agenda
    mail to: agenda.team.users.pluck(:email), subject: I18n.t("views.messages.agenda_destroy_notice")
  end
end
