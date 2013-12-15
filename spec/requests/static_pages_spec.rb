require 'spec_helper'

describe "StaticPages" do

  subject { page }

  describe "Root" do

    before() do
      visit static_pages_root_path
    end

    it { should have_content 'axun' }
    it { should have_title 'root' }
  end

  describe "Help page" do
    before() do
      visit static_pages_help_path
    end

    it { should have_content 'help' }
    it { should have_title 'help' }
  end

  describe "About page" do
    before() do
      visit static_pages_about_path
    end

    it { should have_link 'about me' }
    it { should have_title 'about' }
  end
end
