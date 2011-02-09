class SleepJob
  @queue = :sleep
  
  def self.perform
    sleep(15)
  end
end