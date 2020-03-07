# frozen_string_literal: true

require 'irb/completion'
require 'irb/ext/save-history'
ARGV.concat ['--readline', '--prompt-mode', 'simple']
IRB.conf[:SAVE_HISTORY] = 1_000_000_000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"
