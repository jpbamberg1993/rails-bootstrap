describe 'visitors/index.html.erb' do
	it 'displays home' do
		render
		expect(render).to match /Welcome/
	end
end