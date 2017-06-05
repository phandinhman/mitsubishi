module ErrorFormatter
  def self.call message, _backtrace, _options, env
    {
      Settings.meta => {
        Settings.string_error => Settings.error,
        Settings.status_code => message[Settings.status_code.to_sym] || env["api.endpoint"].status,
        Settings.message => message[Settings.content.to_sym]
      }
    }.to_json
  end
end
