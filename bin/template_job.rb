require 'titlekit'

job = Titlekit::Job.new

job.have do

  # Specify the file you already have; Also works with .ssa and .ass
  file('original.srt')

  # Change this to your encoding, uncomment if you don't know
  encoding('utf-8')

  # Uncomment and edit to set a reference in the existing subtitles
  # reference(:first, srt_timecode: '00:00:00,000')

  # Uncomment and edit to set another reference in the existing subtitles
  # reference(:second, srt_timecode: '00:00:00,000')

end

job.want do

  # Specify the file to be created; Also works with .ssa and .ass
  file('target.srt')

  # Change this to your desired target encoding
  encoding('utf-8')

  # Uncomment and edit to set a new target timecode for the first reference
  # reference(:first, srt_timecode: '00:00:00,000')

  # Uncomment and edit to also set the second target timecode
  # reference(:second, srt_timecode: '00:00:00,000')

end

if job.run
  puts 'Job completed without errors!'
else
  puts 'There were errors:'
  puts job.report.join("\n")
end

