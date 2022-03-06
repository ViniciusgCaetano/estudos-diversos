import sqlite3
import string
from random import choice
import webbrowser

conn = sqlite3.connect('data.db', check_same_thread=False)
c = conn.cursor()


def create_linktable():
    c.execute('CREATE TABLE IF NOT EXISTS linktable(shortlink TEXT,longlink TEXT)')
    conn.commit()

def add_shortlink(short_link, long_link):
	c.execute('INSERT INTO linktable(shortlink, longlink) VALUES (?,?)',(short_link, long_link))
	conn.commit()


def find_short_link(long_link):
	c.execute('SELECT * FROM linktable WHERE longlink =?',(long_link, ))
	data = c.fetchall()
	return data

def find_long_link(short_link):
	c.execute('SELECT * FROM linktable WHERE shortlink =?',(short_link, ))
	data = c.fetchall()
	return data[0][1]


def short_link(long_link):
    create_linktable()
    charset = list(string.ascii_lowercase + string.ascii_uppercase + string.digits)
    short_link = ""
    for i in range(6):
        short_link += choice(charset)
    if len(find_short_link(long_link)):
        return find_short_link(long_link)[0][0]
    else:
        add_shortlink(short_link, long_link)
        return short_link
        
def open(short_link):
    long = find_long_link(short_link)
    webbrowser.open(long)



