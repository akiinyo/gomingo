#coding: utf-8

require 'yaml'
require 'rubygems'
require 'action_mailer'

class GarbageMailer < ActionMailer::Base
  def garbage_message(to_address,my_subject,my_body)
    from 'akiinyo@esm.co.jp'
    recipients to_address
    subject my_subject
    body my_body
  end
end

yaml = YAML.load_file('settings.yml')

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.smtp_settings = yaml['smtp_settings'].symbolize_keys
GarbageMailer.garbage_message( yaml['mail'], 'ゴミンゴからのお知らせ','今日はゴミの日です！' ).deliver
