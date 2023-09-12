import os
import json
from pyhocon import ConfigFactory
from dotenv import load_dotenv

"""
import mysql.connector
from mysql.connector import errorcode
"""

# get env for connecting mysql
load_dotenv()
mysql_user = os.getenv('MYSQL_USER')
mysql_root_password = os.getenv('MYSQL_ROOT_PASSWORD')
print(mysql_user)
print(mysql_root_password)

# read configs
conf = ConfigFactory.parse_file('./config/execute_sqls.conf')
databases = conf['database']
tables = conf['tables'] 

print(databases)
print(tables)

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