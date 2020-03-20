import os
import subprocess
from datetime import datetime

CONNECTION = {
    "host": '127.0.0.1',
    "username": 'root',
    "password": 'hacer1999',
    "database": 'dbo',
    'result': 'ali',
    "path": '.',
    # 'order_by': ['y', 'm', 'd'],
    'compress': 'False',

}


def sql_dump(CONNECTION):

    cmd = "mysqldump -h{} -u{} -p{} {} > {}.sql".format(
        CONNECTION['host'], CONNECTION['username'], CONNECTION['password'], CONNECTION['database'],
        CONNECTION['result'])
    try:
        subprocess.run(cmd, stdout=subprocess.PIPE, shell=True)
        return True
    except Exception as e:
        print(e)
        return False


def compress(CONNECTION):
    try:
        cmd = "gzip -9 {}.sql".format(CONNECTION['result'])
        subprocess.run(cmd, stdout=subprocess.PIPE, shell=True)
        return True
    except Exception as e:
        print(e)
        return False


def move(CONNECTION):

    def file_name(CONNECTION):
        if CONNECTION['result'] == 'TIME':
            return str(datetime.now())
        else:
            return CONNECTION['result']

    if 'order_by' in CONNECTION.keys() and 'path' in CONNECTION.keys():

        path = os.getcwd() if CONNECTION['path'] == '.' else CONNECTION['path']
        date = datetime.now()
        year = date.year
        month = date.month
        day = date.day
        date_format = []
        for elm in CONNECTION['order_by']:
            if elm == 'y':
                date_format.append(year)
            elif elm == 'm':
                date_format.append(month)
            elif elm == 'd':
                date_format.append(day)
            else:
                pass

        cmd = 'mkdir -p {}/{}/{}/{}'.format(path,
                                            date_format[0], date_format[1], date_format[2])
        subprocess.run(cmd, stdout=subprocess.PIPE, shell=True)

        if 'compress' in CONNECTION.keys():
            if CONNECTION['compress'] == 'True':
                file_format = '.sql.gz'
            else:
                pass
        else:
            file_format = '.sql'

        cmd = 'mv {}{} {}/{}/{}/{}/"{}{}"'.format(CONNECTION['result'], file_format, path,
                                                  date_format[0], date_format[1], date_format[2], file_name(CONNECTION), file_format)
        subprocess.run(cmd, stdout=subprocess.PIPE, shell=True)

        return True

    elif 'order_by' not in CONNECTION.keys() and 'path' in CONNECTION.keys():
        path = os.getcwd() if CONNECTION['path'] == '.' else CONNECTION['path']

        if 'compress' in CONNECTION.keys():
            if CONNECTION['compress'] == 'True':
                file_format = '.sql.gz'
            else:
                file_format = '.sql'
        else:
            file_format = '.sql'

        cmd = 'mv {}{} {}/"{}{}"'.format(CONNECTION['result'],
                                         file_format, path, file_name(CONNECTION), file_format)
        subprocess.run(cmd, stdout=subprocess.PIPE, shell=True)
        
        return True
    else:
        return False


def dump(CONNECTION, encryption=False):
    """

    CONNECTION = {

        "host": '127.0.0.1',
        "username": 'root',
        "password": 'hacer1999',
        "database": 'dbo', 
        'result': 'sqmpl', // result file name like sample.sql | sample.sql.gz (when compressed)
        "path": '.', // save file path default is . | (optional) & required if defined order_by
        'order_by': ['y', 'm', 'd'] // ['m', 'y', 'd'] , ['d', 'm', 'y'] , ... | (optional)
    }
    """

    result = sql_dump(CONNECTION)
    if result:
        if 'compress' in CONNECTION.keys():
            if CONNECTION['compress'] == 'True':
                result = compress(CONNECTION)
            else:
                pass
        if encryption:
            pass
        else:
            pass
        result = move(CONNECTION)
        return True
    else:
        return False


if __name__ == "__main__":

    dump(CONNECTION)