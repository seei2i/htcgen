class MechController < ApplicationController
   require 'rubygems'
   require 'zip'

   def export
   end

   def grasp
   	  # path = Rails.root.join('tmp')
   	  # system("wget -p -k -P #{path} http://htcgen.herokuapp.com/site/texas/blood-testing/abilene-tx.html")

      # filename = 'website.zip'
      # temp_file = Tempfile.new(filename)
      # directory = Rails.root.join('tmp/htcgen.herokuapp.com/site/texas/blood-testing/')

      path = Rails.root.join('tmp')
      system("wget -p -k -r -P #{path} http://htcgen.herokuapp.com/site/texas/blood-testing/abilene-tx.html")

      filename = 'website.zip'
      temp_file = Tempfile.new(filename)
      directory = Rails.root.join('tmp/htcgen.herokuapp.com')

      begin
        Zip::OutputStream.open(temp_file) { |zos| }
      	Zip::File.open(temp_file.path, Zip::File::CREATE) do |zip|
          Dir.glob("**/*").each do |file|
            zip.add file, file
          end
          # zip.add('abilene-tx.html', directory + 'abilene-tx.html')
        end

        zip_data = File.read(temp_file.path)
        send_data(zip_data, :type => 'application/zip', :filename => filename)
      ensure
      	temp_file.close
        temp_file.unlink
      end
   end
end
