# Redmine issue completion

[![Code Climate](https://codeclimate.com/github/insspb/redmine_issue_completion/badges/gpa.svg)](https://codeclimate.com/github/insspb/redmine_issue_completion)

Redmine issue completion plugin helps you to fill some fields on issue close event. 
It fills percent to 100% in any status with "Issue closed" selected. You do not need to configure Issue done ratios in tracker configuration, so you can use floating percents on other statuses.

It also sets due date as current date if not filled.

Based on redmine-auto-percent by @wadewomersley & @escline

Version 0.0.2
Automatically sets due date as current date if not filled.
Checked on work with Redmine 3.0.3

Version 0.0.1
Automatically sets the percent done to 100% on Resolved or Closed.
