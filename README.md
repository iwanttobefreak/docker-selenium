
#Chrome: use ipython to test
from selenium import webdriver
from selenium.webdriver.chrome.options import Options

options = Options()
options.add_argument('--headless')
options.add_argument('--no-sandbox')
options.add_argument('--disable-dev-shm-usage')

driver = webdriver.Chrome(options=options)

#Firefox
from selenium import webdriver
from selenium.webdriver.firefox.options import Options

options = Options()
options.add_argument("--headless")

driver = webdriver.Chrome(options=options)


driver.get("http://<my url>")
driver.page_source
driver.save_screenshot("<path dir/file.png>')

