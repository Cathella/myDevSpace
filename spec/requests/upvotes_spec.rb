 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/upvotes", type: :request do
  
  # Upvote. As you add validations to Upvote, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Upvote.create! valid_attributes
      get upvotes_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      upvote = Upvote.create! valid_attributes
      get upvote_url(upvote)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_upvote_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      upvote = Upvote.create! valid_attributes
      get edit_upvote_url(upvote)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Upvote" do
        expect {
          post upvotes_url, params: { upvote: valid_attributes }
        }.to change(Upvote, :count).by(1)
      end

      it "redirects to the created upvote" do
        post upvotes_url, params: { upvote: valid_attributes }
        expect(response).to redirect_to(upvote_url(Upvote.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Upvote" do
        expect {
          post upvotes_url, params: { upvote: invalid_attributes }
        }.to change(Upvote, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post upvotes_url, params: { upvote: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested upvote" do
        upvote = Upvote.create! valid_attributes
        patch upvote_url(upvote), params: { upvote: new_attributes }
        upvote.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the upvote" do
        upvote = Upvote.create! valid_attributes
        patch upvote_url(upvote), params: { upvote: new_attributes }
        upvote.reload
        expect(response).to redirect_to(upvote_url(upvote))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        upvote = Upvote.create! valid_attributes
        patch upvote_url(upvote), params: { upvote: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested upvote" do
      upvote = Upvote.create! valid_attributes
      expect {
        delete upvote_url(upvote)
      }.to change(Upvote, :count).by(-1)
    end

    it "redirects to the upvotes list" do
      upvote = Upvote.create! valid_attributes
      delete upvote_url(upvote)
      expect(response).to redirect_to(upvotes_url)
    end
  end
end