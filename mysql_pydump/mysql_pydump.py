from .compress import compress
from .dump import sql_dump
from .move import move


def dump(CONNECTION):
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
                pass
            else:
                pass
        if True:
            pass

        move(CONNECTION)
        return True
    else:
        return False
