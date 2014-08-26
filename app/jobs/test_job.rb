class TestJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    Rails.logger.info "#{self.class.name}: I WAS RUN!"
  end
end
