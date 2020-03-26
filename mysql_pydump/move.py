import os
from datetime import datetime


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
        os.system(cmd)

        if 'compress' in CONNECTION.keys():
            if CONNECTION['compress'] == 'True':
                file_format = '.sql.gz'
            else:
                file_format = '.sql'
        else:
            file_format = '.sql'

        cmd = "mv {}{} {}/{}/{}/{}/'{}'{}".format(CONNECTION['result'], file_format, path,
                                                  date_format[0], date_format[1], date_format[2], file_name(CONNECTION),
                                                  file_format)
        print(cmd)
        os.system(cmd)

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
        os.system(cmd)

        return True
    else:
        return False
