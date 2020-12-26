class TeamMailer < ApplicationMailer
  def authority_transfer_mail(old_owner, team)
    @old_owner = old_owner
    @team = team
    mail to: "#{team.owner.email}", subject: "新リーダー就任のお知らせ"
  end
end
