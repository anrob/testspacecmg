class ContractMailerPreview
  def deliver
    ContractMailer.deliver user, contract, additional
  end


  def event_info_email
    ContractMailer.event_info_email user, contract, additional
  end


  def event_info_email_with_all_money
    ContractMailer.event_info_email_with_all_money user, contract, additional
  end


  def event_info_email_with_net_money
    ContractMailer.event_info_email_with_net_money user, contract, additional
  end


  def event_info_email_with_no_money
    ContractMailer.event_info_email_with_no_money user, contract, additional
  end


  def send_reminder
    ContractMailer.send_reminder user
  end


  def send_user_reminder
    ContractMailer.send_user_reminder user
  end


  def newactcodes
    ContractMailer.newactcodes actcodes
  end


  def notconfirmed
    ContractMailer.notconfirmed user
  end


  def welcome_to_family
    ContractMailer.welcome_to_family contract
  end


  def level_3_mail
    ContractMailer.level_3_mail contract, mail_type
  end
end
