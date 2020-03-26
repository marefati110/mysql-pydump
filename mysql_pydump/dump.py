import os


def sql_dump(CONNECTION):
    cmd = "mysqldump -h{} -u{} -p{} {} > {}.sql".format(
        CONNECTION['host'], CONNECTION['username'], CONNECTION['password'], CONNECTION['database'],
        CONNECTION['result'])
    try:
        os.system(cmd)
        return True
    except Exception as e:
        print(e)
        return False
