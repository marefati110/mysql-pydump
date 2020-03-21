mysql-pydump
============

.. toctree::
   :maxdepth: 2

Description
^^^^^^^^^^^

   **mysql-pydump allows you to easily backup your mysql database**

Getting Started
^^^^^^^^^^^^^^^
**Prerequisites**
  - mysql or mariadb
  - python version 2.x or 3.x

**Installing**
   - for installing mysql you can read this [Document](https://dev.mysql.com/doc/mysql-installation-excerpt/5.7/en/)
   - install mysql-pydump by PyPi   


Usage
^^^^^

- simple example:

   .. code::

      from mysql_pydump import dump

      CONFIG = {
         "host": 'mysql_host',
         "username": 'mysql_username',
         "password": 'mysql_password',
         "database": 'database_name',
         "result": 'result_file_name',
         "path": '.', # path for save files
      }

      dump(CONFIG)

- Details:

   1. sorting files by date format

   .. code::

      CONFIG = {
         ***

         "order_by" : ['y','m','d'] #  ['d','m','y']  , ...
         
         ***
      }

   2. compress dump files 

   .. code::

         CONFIG = {
            ***

            "compress" : "True"

            ***
         }

   3. file name can be current time as file name  

   .. code::

      CONFIG = {
         ***

         "result" : "TIME"

         ***
      }
