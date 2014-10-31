require 'perscribo/core/constants'

require 'scss_lint/reporter/default_reporter'

module SCSSLint
  class Reporter::PerscriboReporter < ::SCSSLint::Reporter::DefaultReporter
    def report_lints
      return unless lints.any?

      lints.map do |lint|
        label = lint.error? ? label(:failure) : label(:success)
        type = lint.error? ? '[E]'.color(:red) : '[W]'.color(:yellow)

        linter_name = "#{lint.linter.name}: ".color(:green) if lint.linter
        message = "#{linter_name}#{lint.description}"

        "#{label}#{lint.filename.color(:cyan)}:" <<
          "#{lint.location.line}".color(:magenta) <<
            "\n#{label}#{type} #{message}"
      end.join("\n") + "\n"
    end

    private

    def label(level = :info)
      label_format = ::Perscribo::Core::Constants::MATCH_FORMAT
      label_format.gsub(':level', '%s') % level
    end
  end
end
