class DevelopmentMailInterceptor
  def self.delivering_email(message)
    message.subject = "---=== Jesus de Mari Teste de Email ===---"
    message.to = "log@korewa.com.br"
    message.bcc = "log@korewa.com.br"
  end
end
