# Chrome
Version: ChromeDriver 73.0.3683.20
Download: https://sites.google.com/a/chromium.org/chromedriver/downloads
Documentacion: https://sites.google.com/a/chromium.org/chromedriver/
~~~
ipython

from selenium import webdriver
from selenium.webdriver.chrome.options import Options

options = Options()
options.add_argument('--headless')
options.add_argument('--no-sandbox')
options.add_argument('--disable-dev-shm-usage')

driver = webdriver.Chrome(options=options)

driver.get("http://<my url>")
driver.page_source
driver.save_screenshot("<path dir/file.png>')
~~~

# Firefox
Version: FirefoxDriver v0.22.0
Download: https://github.com/mozilla/geckodriver/releases/
Documentacion: https://developer.mozilla.org/en-US/docs/Web/WebDriver

~~~
ipython

from selenium import webdriver
from selenium.webdriver.firefox.options import Options

options = Options()
options.add_argument("--headless")

driver = webdriver.Chrome(options=options)

driver.get("http://<my url>")
driver.page_source
driver.save_screenshot("<path dir/file.png>')
~~~
