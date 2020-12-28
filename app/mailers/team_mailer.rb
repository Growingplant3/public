class TeamMailer < ApplicationMailer
  def authority_transfer_mail(old_owner, team)
    @old_owner = old_owner
    @team = team
    mail to: "#{team.owner.email}", subject: I18n.t('views.messages.notice_new_leader')
  end
end
