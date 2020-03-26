import re


def insert_check_and_split(result: list) -> list:
    insert_pattern = re.compile("^[\-\+] INSERT INTO")
    table_name_pattern = re.compile("\`.*\`")

    output: list = list()
    temp: list = list()

    for elm in result:
        if elm in temp:
            continue
        elif insert_pattern.match(elm):
            table_name = table_name_pattern.findall(elm)
            table_name = table_name[0]
            previous_data_pattern = re.compile(f"[\-\+] INSERT INTO *{table_name}")

            for elm_ in result:
                if elm_ == elm:
                    continue
                elif previous_data_pattern.match(elm_):
                    output.append([elm, elm_])
                    temp.append(elm)
                    temp.append(elm_)
                    break
                else:
                    pass
        else:
            pass
    return output
