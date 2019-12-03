# マイページ
crumb :root do
  link "Home", root_path
end

crumb :mypage do
  link "マイページ", user_accounts_path
end

crumb :mypage_payment do
  link "お支払い方法", card_registrations_path
  parent :mypage
end

crumb :mypage_card_registration do
  link "クレジットカード情報入力", new_card_registration_path
  parent :mypage_payment
end

crumb :logout do
  link "ログアウト", edit_top_path
  parent :mypage
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).