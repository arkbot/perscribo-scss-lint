require 'perscribo/guard'

module Perscribo
  module Support
    module Guard
      module SCSSLint
        REQ_PATH = File.expand_path('/../../scss-lint/reporter.rb', __FILE__)
        OUT_PATH = "#{Dir.pwd}/tmp/perscribo_scsslint_#{ENV['RACK_ENV']}.log"
        DEFAULTS = {
          labels: [:info, :failure, :success],
          guard_opts: {
            all_on_start: false,
            cli: [
              "--require #{REQ_PATH}",
              '--format Perscribo::SCSSLint::Reporter',
              "--out #{OUT_PATH}"
            ].join(' '),
            notification: true
          },
          path: OUT_PATH,
          watcher_opts: { }
        }

        ::Perscribo::Guard.capture!(self)
      end
    end
  end
end
