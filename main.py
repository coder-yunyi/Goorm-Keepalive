from selenium.webdriver.support.wait import WebDriverWait
from selenium import webdriver
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from time import sleep
import sys


def main(username: str, passwd: str):
    br = webdriver.Chrome()
    br.get("https://accounts.goorm.io/login?return_url=aHR0cHM6Ly9pZGUuZ29vcm0uaW8vbXkvZGFzaGJvYXJk&keep_login=true")
    WebDriverWait(br, 30, 0.5).until(
        EC.visibility_of_element_located((By.XPATH, '//*[@id="app"]/section/div[4]/button'))
    )
    br.find_element_by_xpath('//*[@id="emailInput"]').send_keys(username)
    br.find_element_by_xpath('//*[@id="passwordInput"]').send_keys(passwd)
    br.find_element_by_xpath('//*[@id="app"]/section/div[4]/button').click()
    br.get(
    WebDriverWait(br, 30, 0.5).until(
        EC.visibility_of_element_located((By.XPATH, '/html/body/div[1]/div[3]/div/section/div/div[2]/div[2]/div/div[4]/div/div/div[1]/div[2]/a'))
    ).get_attribute('href')
    )
    sleep(65536114514256)


if __name__ == '__main__':
    main(sys.argv[1], sys.argv[2])
