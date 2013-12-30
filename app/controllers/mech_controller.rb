class MechController < ApplicationController
   require 'rubygems'
   require 'mechanize'

   def export
    @states = State.all
    @cities = City.all
   end

   def exportcities
    num = 1
    @citys = City.all
    @cities = []
    @citys.each do |city|
      if num <= 200
        @cities.push(city)
        num = num + 1
      else
      end
    end
   end

   def exportcities2
    num = 1
    @citys = City.all
    @cities = []
    @citys.each do |city|
      if num <= 200
        num = num + 1
      elsif num <= 400
        @cities.push(city)
        num = num + 1
      else
      end
    end
   end

   def exportcities3
    num = 1
    @citys = City.all
    @cities = []
    @citys.each do |city|
      if num <= 400
        num = num + 1
      elsif num <= 600
        @cities.push(city)
        num = num + 1
      else
      end
    end
   end

   def exportcities4
    num = 1
    @citys = City.all
    @cities = []
    @citys.each do |city|
      if num <= 600
        num = num + 1
      elsif num <= 800
        @cities.push(city)
        num = num + 1
      else
      end
    end
   end

   def exportcities5
    num = 1
    @citys = City.all
    @cities = []
    @citys.each do |city|
      if num <= 800
        num = num + 1
      elsif num <= 1000
        @cities.push(city)
        num = num + 1
      else
      end
    end
   end

   def grasp
      filename = 'website.zip'
      temp_file = Tempfile.new(filename)

      agent = Mechanize.new
      agent.pluggable_parser.html = Mechanize::FileSaver
      pager = agent.get('http://htcgen.herokuapp.com/site/alabama.html')
      
      # send_file(pager, :type => 'text/html', :filename => "alabama.html" )

      begin
         Zip::OutputStream.open(temp_file) { |zos| }
         Zip::File.open(temp_file.path, Zip::File::CREATE) do |zip|
            Dir.glob("htcgen.herokuapp.com/site/*").each do |file|
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


   	# path = Rails.root.join('tmp')
   	# system("wget -p -k -P #{path} http://htcgen.herokuapp.com/site/texas/blood-testing/abilene-tx.html")

      # filename = 'website.zip'
      # temp_file = Tempfile.new(filename)
      # directory = Rails.root.join('tmp/htcgen.herokuapp.com/site/texas/blood-testing/')



      # path = Rails.root.join('tmp')
      # system("wget -p -k -r -P #{path} http://htcgen.herokuapp.com/site/texas/blood-testing/abilene-tx.html")

      # filename = 'website.zip'
      # temp_file = Tempfile.new(filename)
      # directory = Rails.root.join('tmp/htcgen.herokuapp.com')

      # begin
      #   Zip::OutputStream.open(temp_file) { |zos| }
      # 	Zip::File.open(temp_file.path, Zip::File::CREATE) do |zip|
      #     Dir.glob("**/*").each do |file|
      #       zip.add file, file
      #     end
      #     # zip.add('abilene-tx.html', directory + 'abilene-tx.html')
      #   end

      #   zip_data = File.read(temp_file.path)
      #   send_data(zip_data, :type => 'application/zip', :filename => filename)
      # ensure
      # 	temp_file.close
      #   temp_file.unlink
      # end
   end
end
