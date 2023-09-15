from pyhocon import ConfigFactory
import execute_sqls

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
  