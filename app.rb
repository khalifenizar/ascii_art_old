require "sinatra"
require "artii"

get "/ascii/:text/?:font?" do
  params[:font] = "shadow" if params[:font].nil?
  a = Artii::Base.new :font => params[:font]
  @ascii_text = a.asciify(params[:text])
  erb :ascii
end

get "/ascii/dinosaur/special/secret" do
  erb :dinosaur
end
