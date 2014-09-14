describe Global::Configuration::Writable do
  before(:each) do
    Global.configure do |config|
      config.environment = 'test'
      config.config_directory = File.join(Dir.pwd, 'spec/files')
    end
    Global.reload!
  end

  it 'returns the value of the file before overwrite' do
    expect(Global.rspec_config.test_value).to eq 'test value'
  end

  it 'can be overwritten and changes it\'s value' do
    expect(Global.rspec_config.test_value).to eq 'test value'
    Global.rspec_config.test_value = 'test value overwrittten'
    expect(Global.rspec_config.test_value).to eq 'test value overwrittten'
  end

  it 'revives the value of the file after reload!' do
    expect(Global.rspec_config.test_value).to eq 'test value'
    Global.rspec_config.test_value = 'test value overwrittten'
    expect(Global.rspec_config.test_value).to eq 'test value overwrittten'
    Global.reload!
    expect(Global.rspec_config.test_value).to eq 'test value'
  end
end
