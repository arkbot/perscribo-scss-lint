DEFAULT_SCSSLINT_RESULTS = "#{Dir.pwd}/tmp/perscribo-scss-lint.log"
DEFAULT_SCSSLINT_CLI = [
  "--require #{File.dirname(__FILE__)}/../scss-lint/perscribo_reporter.rb",
  '--format Perscribo',
  "--out #{DEFAULT_PERSCRIBO_RESULTS}"
]
DEFAULT_SCSSLINT_OPTS = {
  all_on_start: false,
  # cli: "#{DEFAULT_SCSSLINT_CLI.join(' ')}",
  notification: true
}
log_output('SCSS', "#{DEFAULT_SCSSLINT_RESULTS}", :info, :failure, :success)
