class DataFile < ActiveRecord::Base
 def self.save(upload, upload1)

    name =  upload['datafile'].original_filename
    name1 =  upload1['datafile1'].original_filename
    directory = "public/data"
    # create the file path
    path = File.join(directory, name)
    path1 = File.join(directory, name1)
    # write the file
    File.open(path, "wb") { |f| f.write(upload['datafile'].read) }
    File.open(path1, "wb") { |f| f.write(upload1['datafile1'].read) }
  end
end
