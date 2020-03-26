import os


def compress(CONNECTION):
    try:
        cmd = "gzip -9 {}.sql".format(CONNECTION['result'])
        os.system(cmd)
        return True
    except Exception as e:
        print(e)
        return False
