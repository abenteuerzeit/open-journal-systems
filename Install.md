# Open Journal Systems

## How to Install 

Download package release version

```shell
curl --output 3.3.0-15.tar.gz https://pkp.sfu.ca/ojs/download/ojs-3.3.0-15.tar.gz
```

Unzip and tidy up

```shell
tar -xvzf 3.3.0-15.tar.gz
rm 3.3.0-15.tar.gz
mv ojs-3.3.0-15/* .
rm -r ojs-3.3.0-15
```

Click run and open Web view in a new tab

```shell
chmod -R 777 config.inc.php public cache
mkdir /home/runner/files
chmod -R 777 /home/runner/files

mysql -u root -h localhost -e "CREATE DATABASE ojsdb; GRANT ALL PRIVILEGES ON ojsdb.* TO 'ojsuser'@'localhost' IDENTIFIED BY 'password'; FLUSH PRIVILEGES;" && cd ~/Open-Journal-Systems && php tools/install.php install --db-driver mysqli --db-host localhost --db-username ojsuser --db-password password --db-name ojsdb --base-url https://replit.com/@abenteuerzeit/Open-Journal-Systems

```


```shell
/nix/store/5n5pjgv0pjdxfkbaqi3nl6wp55zlzcxy-nano-7.0
Adding nano to replit.nix
success
 Environment updated. Reloading shell...
~/Open-Journal-Systems$ mysqld_safe --defaults-file=/home/runner/Open-Journal-Systems/my.cnf &
~/Open-Journal-Systems$ rm -rf /home/runner/Open-Journal-Systems/mysql_data/*
~/Open-Journal-Systems$ mysql_install_db --datadir=/home/runner/Open-Journal-Systems/mysql_data --user=runner
chown: changing ownership of '/nix/store/83vs3hbhf61w6azvp6jkllvsmhwhikxf-mariadb-server-10.6.10/lib/mysql/plugin/auth_pam_tool_dir/auth_pam_tool': Operation not permitted
Couldn't set an owner to '/nix/store/83vs3hbhf61w6azvp6jkllvsmhwhikxf-mariadb-server-10.6.10/lib/mysql/plugin/auth_pam_tool_dir/auth_pam_tool'.
It must be root, the PAM authentication plugin doesn't work otherwise..

Installing MariaDB/MySQL system tables in '/home/runner/Open-Journal-Systems/mysql_data' ...
OK

To start mysqld at boot time you have to copy
support-files/mysql.server to the right place for your system


Two all-privilege accounts were created.
One is root@localhost, it has no password, but you need to
be system 'root' user to connect. Use, for example, sudo mysql
The second is runner@localhost, it has no password either, but
you need to be the system 'runner' user to connect.
After connecting you can set the password, if you would need to be
able to connect as any of these users with a password and without sudo

See the MariaDB Knowledgebase at https://mariadb.com/kb

You can start the MariaDB daemon with:
cd '/nix/store/83vs3hbhf61w6azvp6jkllvsmhwhikxf-mariadb-server-10.6.10' ; /nix/store/83vs3hbhf61w6azvp6jkllvsmhwhikxf-mariadb-server-10.6.10/bin/mysqld_safe --datadir='/home/runner/Open-Journal-Systems/mysql_data'

You can test the MariaDB daemon with mysql-test-run.pl
cd '/nix/store/83vs3hbhf61w6azvp6jkllvsmhwhikxf-mariadb-server-10.6.10/mysql-test' ; perl mysql-test-run.pl

Please report any problems at https://mariadb.org/jira

The latest information about MariaDB is available at https://mariadb.org/.

Consider joining MariaDB's strong and vibrant community:
https://mariadb.org/get-involved/

~/Open-Journal-Systems$ mysqld_safe --defaults-file=/home/runner/Open-Journal-Systems/my.cnf --datadir=/home/runner/Open-Journal-Systems/mysql_data &
[1] 300
~/Open-Journal-Systems$ 240608 00:34:26 mysqld_safe Logging to '/home/runner/Open-Journal-Systems/mysql_data/0479c7246752.err'.
240608 00:34:26 mysqld_safe Starting mariadbd daemon with databases from /home/runner/Open-Journal-Systems/mysql_data
~/Open-Journal-Systems$ tail -n 100 /home/runner/Open-Journal-Systems/mysql_data/11313352320a.err
tail: cannot open '/home/runner/Open-Journal-Systems/mysql_data/11313352320a.err' for reading: No such file or directory
~/Open-Journal-Systems$ tail -n 100 /home/runner/Open-Journal-Systems/mysql_data/0479c7246752.err 
240608 00:34:26 mysqld_safe Starting mariadbd daemon with databases from /home/runner/Open-Journal-Systems/mysql_data
2024-06-08  0:34:26 0 [Note] /nix/store/83vs3hbhf61w6azvp6jkllvsmhwhikxf-mariadb-server-10.6.10/bin/mariadbd (server 10.6.10-MariaDB) starting as process 394 ...
2024-06-08  0:34:26 0 [Warning] Could not increase number of max_open_files to more than 20971 (request: 32188)
2024-06-08  0:34:26 0 [Note] InnoDB: Compressed tables use zlib 1.2.13
2024-06-08  0:34:26 0 [Note] InnoDB: Number of pools: 1
2024-06-08  0:34:26 0 [Note] InnoDB: Using crc32 + pclmulqdq instructions
2024-06-08  0:34:26 0 [Note] InnoDB: Using liburing
2024-06-08  0:34:26 0 [Note] InnoDB: Initializing buffer pool, total size = 134217728, chunk size = 134217728
2024-06-08  0:34:26 0 [Note] InnoDB: Completed initialization of buffer pool
2024-06-08  0:34:26 0 [Note] InnoDB: 128 rollback segments are active.
2024-06-08  0:34:26 0 [Note] InnoDB: Creating shared tablespace for temporary tables
2024-06-08  0:34:26 0 [Note] InnoDB: Setting file './ibtmp1' size to 12 MB. Physically writing the file full; Please wait ...
2024-06-08  0:34:26 0 [Note] InnoDB: File './ibtmp1' size is now 12 MB.
2024-06-08  0:34:26 0 [Note] InnoDB: 10.6.10 started; log sequence number 42120; transaction id 14
2024-06-08  0:34:26 0 [Note] Plugin 'FEEDBACK' is disabled.
2024-06-08  0:34:26 0 [Note] InnoDB: Loading buffer pool(s) from /home/runner/Open-Journal-Systems/mysql_data/ib_buffer_pool
2024-06-08  0:34:26 0 [Note] Server socket created on IP: '0.0.0.0'.
2024-06-08  0:34:26 0 [Note] Server socket created on IP: '::'.
2024-06-08  0:34:26 0 [Note] InnoDB: Buffer pool(s) load completed at 240608  0:34:26
2024-06-08  0:34:26 0 [Note] /nix/store/83vs3hbhf61w6azvp6jkllvsmhwhikxf-mariadb-server-10.6.10/bin/mariadbd: ready for connections.
Version: '10.6.10-MariaDB'  socket: '/home/runner/Open-Journal-Systems/mysql_data/mysqld.sock'  port: 3306  MariaDB Server
~/Open-Journal-Systems$ mysql --socket=/home/runner/Open-Journal-Systems/mysql_data/mysqld.sock -u runner -e "SHOW DATABASES;"
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
| test               |
+--------------------+
~/Open-Journal-Systems$ mysql --socket=/home/runner/Open-Journal-Systems/mysql_data/mysqld.sock -u runner -e "CREATE DATABASE ojsdb;"
~/Open-Journal-Systems$ mysql --socket=/home/runner/Open-Journal-Systems/mysql_data/mysqld.sock -u runner -e "CREATE USER 'ojsuser'@'localhost' IDENTIFIED BY 'password';"
~/Open-Journal-Systems$ mysql --socket=/home/runner/Open-Journal-Systems/mysql_data/mysqld.sock -u runner -e "GRANT ALL PRIVILEGES ON ojsdb.* TO 'ojsuser'@'localhost';"
~/Open-Journal-Systems$ mysql --socket=/home/runner/Open-Journal-Systems/mysql_data/mysqld.sock -u runner -e "FLUSH PRIVILEGES;"
sudo mysqladmin --socket=/home/runner/Open-Journal-Systems/mysql_data/mysqld.sock shutdown
[1]+  Done                    mysqld_safe --defaults-file=/home/runner/Open-Journal-Systems/my.cnf --datadir=/home/runner/Open-Journal-Systems/mysql_data
~/Open-Journal-Systems$ sudo mysqld_safe --datadir=./mysql_data
240608 01:13:07 mysqld_safe Logging to './mysql_data/4546ace8d2d3.err'.
240608 01:13:07 mysqld_safe Starting mariadbd daemon with databases from ./mysql_data

```