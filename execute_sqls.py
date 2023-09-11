import os
import json
"""
import mysql.connector
from mysql.connector import errorcode
"""

# read configs
config_file = open('./config/execute_sqls.json', 'r')
db_config = json.load(config_file)
print(db_config)

# read dbpass
db_root_pass = os.environ.get('MYSQL_ROOT_PASSWORD')

"""
try:
  cnx = mysql.connector.connect(user='scott',
                                database='employ')
except mysql.connector.Error as err:
  if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
    print("Something is wrong with your user name or password")
  elif err.errno == errorcode.ER_BAD_DB_ERROR:
    print("Database does not exist")
  else:
    print(err)
else:
  cnx.close()
"""