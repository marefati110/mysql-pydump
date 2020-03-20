<h3 align="center">mysql-pydump</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![GitHub license](https://img.shields.io/github/license/marefati110/mysql-pydump)](https://github.com/marefati110/mysql-pydump/blob/master/LICENSE)
[![GitHub issues](https://img.shields.io/github/issues/marefati110/mysql-pydump)](https://github.com/marefati110/mysql-pydump/issues)
[![GitHub forks](https://img.shields.io/github/forks/marefati110/mysql-pydump)](https://github.com/marefati110/mysql-pydump/network)
[![GitHub stars](https://img.shields.io/github/stars/marefati110/mysql-pydump)](https://github.com/marefati110/mysql-pydump/stargazers)

</div>

---

<p align="center"> Few lines describing your project.
    <br> 
</p>

## 📝 Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Usage](#usage)
- [Built Using](#built_using)
- [Contributing](../CONTRIBUTING.md)
- [Authors](#authors)

## 🧐 About <a name = "about"></a.
    
mysql_pydump allows you to easily backup your mysql database

## 🏁 Getting Started <a name = "getting_started"></a>

### Prerequisites

you just need have mysql or mariadb in your system

you can check1 by this cammand
```
mysql -u USERNAME -p
```

### Installing

for installing mysql read this <a href = "https://dev.mysql.com/doc/mysql-installation-excerpt/5.7/en/">Document</a>

after installing you can connecto to mysql like this 

```
mysql -u USERNAME -p
```

and you can install mysql-pydump easily by pypi :

```
pip install mysql-pydump
```


## 🎈 Usage <a name="usage"></a>

```
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

```
  for more detail read mysql-pydump <a href="">Document</a>

## ✍️ Authors <a name = "authors"></a>

- [@marefati](https://github.com/marefati110) - Idea & Initial work

See also the list of [contributors](https://github.com/marefati110/mysql-pydump/graphs/contributors) who participated in this project.
