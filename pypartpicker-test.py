from pypartpicker import Scraper

# creates the scraper object
pcpp = Scraper()
# returns a list of Part objects we can iterate through
parts = pcpp.part_search("i7")

# iterates through every part object
for part in parts:
    # prints the name of the part
    print(part.name)

# gets the first product and fetches its URL
first_product_url = str(parts[0].url)
# gets the Product object for the item
product = pcpp.fetch_product('https://pcpartpicker.com/product/g94BD3/amd-ryzen-5-5600x-37-ghz-6-core-processor-100-100000065box')
# prints the product's specs using the specs attribute
print(product.specs)