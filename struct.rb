module LogReader
  Entry = Struct.new(:path, :ip)
end
entries = [
LogReader::Entry.new("/about", "205.253.29.102"),
LogReader::Entry.new("/products", "233.57.149.50"),
LogReader::Entry.new("/offers", "233.45.149.60"),
LogReader::Entry.new("/specials", "243.45.159.60"),
LogReader::Entry.new("/home", "233.45.179.60")
]


puts entries


output

#<struct LogReader::Entry path="/about", ip="205.253.29.102">
#<struct LogReader::Entry path="/products", ip="233.57.149.50">
#<struct LogReader::Entry path="/offers", ip="233.45.149.60">
#<struct LogReader::Entry path="/specials", ip="243.45.159.60">
#<struct LogReader::Entry path="/home", ip="233.45.179.60">

{
"/about": {
  "total": 4,
  "unique": 3,
  "ips": {
   "205.253.29.102": true,
   "245.253.29.102": true,
   "305.253.29.102": true,
   "205.253.29.102": false
  }
}


"/about": Accumulator.new
