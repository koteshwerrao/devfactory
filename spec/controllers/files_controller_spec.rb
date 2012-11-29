require 'spec_helper'

require 'net/ftp'

describe FilesController do
    describe "GET index" do
      it "assigns @files" do
      ftp = FileManager.ftp_connect
      @files = FileManager.seg(ftp.list)
      get :index
       end
      it "renders the index template" do
      get :index
      response.should render_template("index")
       end
      end
      describe "Upload the file" do
      it "assigns upload the new file" do
      ftp =	FileManager.ftp_connect
      match  :upload
       end
      end
      describe "Delete the file" do
      it "assigns to the delete the file" do
      ftp =	FileManager.ftp_connect
      match :delete_file
       end
      end
      describe "Remove the directory" do
      it "assigns to the delete the directory" do
      ftp =	FileManager.ftp_connect
      match :remove_directory
       end
      end
      describe   "Get the item" do
      it "get the file or directory" do
      ftp =	FileManager.ftp_connect
      match :remove_directory 
       end
      end
   end
