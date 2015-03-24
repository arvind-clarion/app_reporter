require 'erb'

namespace :reporter do
  desc "Run Reporter"
  task :run do
    extend Reporter
		# Function call
		p "===== Collecting data from brakeman report ====="
		self.brakeman_report

		p "===== Collecting data from metric_fu_report report ====="
		self.metric_fu_report

		p "===== Generating final report ====="
		self.generate_final_report
  end
end
