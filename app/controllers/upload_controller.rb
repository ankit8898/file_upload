class UploadController < ApplicationController
 def index

end


  def uploadfile
    post = DataFile.save(params[:upload],params[:upload1])
    render :text => "File has been uploaded successfully"
  end
end
