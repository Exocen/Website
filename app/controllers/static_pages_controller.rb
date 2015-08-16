class StaticPagesController < ApplicationController
  def home
  end

  def state
  end

  def term
  end

  def chat
  end


  def cv
    # pdf_filename = File.join(Rails.root, "public/cv.pdf")
    # send_file(pdf_filename, :filename => "cv.pdf", :disposition => 'inline', :type => "application/pdf")
  end

end
