class SampleBatch
  def self.execute
    open('/tmp/myfile.txt', 'a') do |f|
      f.puts "#{Time.current}: Hello, world. It's me again."
    end
  end
end
