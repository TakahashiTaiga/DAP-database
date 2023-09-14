import os
import json
from pyhocon import ConfigFactory
from dotenv import load_dotenv
import mysql.connector
from mysql.connector import errorcode


"""
memo
{
    prototype_db = [
        "users",
        "login_sessions",
        "attribute_sets",
        "attributes",
        "categories",
        "files",
        "descriptions"]
}

conf = ConfigFactory.parse_file('./config/execute_sqls.conf')

for c in conf:
  print(type(c)) -> str
  print(c)       -> 'prototype'
  print(conf[c]) -> ['users', 'login_sessions', 'attribute_sets', 'attributes', 'categories', 'files', 'descriptions']
"""

class execute_sqls():  
  """
    class values
      self.mysql_user
      self.mysql_root_password
      self.mysql_port
      self.cnx
      self.cursor
  """
  def __init__(self):
    # get env for connecting mysql
    load_dotenv()
    self.mysql_user = os.getenv('MYSQL_USER')
    self.mysql_root_password = os.getenv('MYSQL_ROOT_PASSWORD')
    self.mysql_port = os.getenv('DB_PORT')

  def connectToMySQL(self):
    try:
      self.cnx = mysql.connector.connect(user=self.mysql_user,
                                    password=self.mysql_root_password,
                                    port=self.mysql_port)
      self.cursor = self.cnx.cursor()
    
    except mysql.connector.Error as err:
      if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
        print("Something is wrong with your user name or password")
      elif err.errno == errorcode.ER_BAD_DB_ERROR:
        print("Database does not exist")
      else:
        print(err)

  def useDB(self, db):
    try:
      use_db = "USE {};".format(db)
      self.cursor.execute(use_db)
    except mysql.connector.Error as err:
      print(err)
      exit(1)

  def openSQLFile(self, db, table):
    path = "ddl/{0}/{1}.sql".format(db, table)
    with open(path) as f:
      create_table = f.read()
      f.close()
      return create_table
  
  def createTable(self, db, table):
    try:
      create_table = self.openSQLFile(db, table)
      self.cursor.execute(create_table)
    except mysql.connector.Error as err:
      print("Failed creating database: {}".format(err))
      exit(1)

  def closeConnection(self):
    self.cnx.close()
      
      
""" main program """
# read configs
conf = ConfigFactory.parse_file('./config/execute_sqls.conf')

# create instance
exec_sqls = execute_sqls()
# connect to MySQL
exec_sqls.connectToMySQL()
# execute create tables by the order based on execute_sqls.conf
for c in conf:
  db = c
  table_list = conf[db]
  execute_sqls.useDB(db)
  for table in table_list:
    execute_sqls.createTable(db, table)
# close connection to MySQL
exec_sqls.close()
  