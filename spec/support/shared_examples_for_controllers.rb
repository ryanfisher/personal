shared_examples 'a standard get request' do
  it 'responds 200 OK' do
    expect(response.status).to be 200
  end
end
