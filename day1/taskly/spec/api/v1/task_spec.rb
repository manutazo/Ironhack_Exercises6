require 'rails_helper'

describe Api::vi: do
  before {@users = users.create.name: "manuel"}

  it return "a name of users" do
    get users_path(format: :json)
    data = JSON.parse(response.body)

    expect(response).to have_http_status(200)
    expect(data.lenght).to eq(1)
  end
end
