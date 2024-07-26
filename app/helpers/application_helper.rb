module ApplicationHelper
  def localized_time(time, format: "%d.%m.%Y %H:%M")
    return nil if time.nil?
    I18n.with_locale(I18n.locale) { I18n.l(time, format: format) }
  end
end
