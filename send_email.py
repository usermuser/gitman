import requests
import smtplib


url = 'http://api.myip.com'
login = 'api.myip.com@gmail.com'
psw = '89043019528Rustam'
from_email = "api.myip.com@gmail.com"
to_email = "xakacb4@mail.ru"


def send_email ( url, login=login, psw=psw, from_email=from_email):
    text = get_ip(url)
    smtpObj = smtplib.SMTP('smtp.gmail.com', 587)
    smtpObj.starttls()
    smtpObj.login(login, psw)
    smtpObj.sendmail(from_email, to_email, text)

def get_ip(url):
    try:
        r = requests.get(url)
        if r.status_code == 200:
            j = r.json()
            ip = j.get('ip')
            send_email(url)
            print('', ip)
        else:
            print('Error occured, server status_code =', r.status_code)
            text = r.status_code
            send_email()
    except Exception as e:
        print('Error occured!!', e)




text = get_ip(url)
get_ip(url=url)
