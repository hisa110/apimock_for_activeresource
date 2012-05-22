class MokumokuController < ApplicationController
  
  def ret
  
    # get uri
    path =  params[:path]
    
    
    # get json from file
    # ENV['MOCK_DIR']
    flist=[]
    Find.find($yaml_dir+'/'+path) {|f|
      if File::ftype(f) == "file"
        if /_#{$response_code}.yml$/ =~ f then
          flist.push f
        end

      end
    }
    
    # random
    jsonpath=flist.sort_by{|i| rand }.first
    
    # return
    render :text => s = File.read(jsonpath, :encoding => Encoding::UTF_8), :status=>$response_code
  end
  
end
