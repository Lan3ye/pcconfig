import pandas as pd
import mysql.connector

db_config = {
    'host': '192.168.188.121',
    'user': 'jkrause',
    'password': '',
    'database': 'computerparts'
}

try:
    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor()
    # queries
    cursor.close()
    conn.close()
except mysql.connector.Error as err:
    print(err)
#file = './data-staging/cpu.json'
#file = './data-staging/video-card.json'

#df = pd.read_json(file)
#print(df.head(20))

