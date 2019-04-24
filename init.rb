require 'redmine'

ActiveSupport::Reloader.to_prepare do
  require_dependency 'issue'
  # Guards against including the module multiple time (like in tests)
  # and registering multiple callbacks
  unless Issue.included_modules.include? RedmineAutoPercent::IssuePatch
    Issue.send(:include, RedmineAutoPercent::IssuePatch)
  end
end

Redmine::Plugin.register :redmine_issue_completion do
  name 'Redmine issue completion'
  author 'Andrey Shpak'
  description 'Automatically sets 100% done and current date as due_date on Resolved or Closed'
  version '0.0.2'
  url 'https://github.com/insspb/redmine_issue_completion'
  author_url 'http://ashpak.ru'
end
