require 'yaml'

task :insertMoc => :environment do
  fname = ENV['fileName']
  puts fname
  mocs = YAML.load(File.read("./data/legislators-current.yaml"))
  print mocs.length
  mocs.each do |m|
    print convertEntryToMoc(m)
  end
end


def convertEntryToMoc(entry)
  moc = Moc.new 
  moc['name'] = entry['name']['official_full']
  terms = entry['terms'].last
  moc['party'] = terms['party']
  moc['state'] = terms['state']
  moc['district'] = terms['district']
  moc['url'] = terms['url']
  moc['phone'] = terms['phone']
  moc['fax'] = terms['fax']
  moc['moc_type'] = terms['type']
  moc['address'] = terms['address']
  moc['contact_site'] = terms['address_site']
  moc['rss_url'] = terms['rss_url']
  moc.save
  return moc
end
