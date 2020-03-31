schema = {
    "test": [
        'name',
        'last_name',
        'amir'
    ],
}


def build_delete_query(new_values: tuple, table_name: str) -> list:
    template = 'DELETE FROM `{}` WHERE {};'
    output: list = list()

    for value in new_values:
        counter = 0
        text = ''
        for c, v in zip(schema[table_name], value):

            text += f'{c}="{v}"'

            if len(value) == 1 or counter == len(value) - 1:
                counter += 1
                continue
            else:
                text += " AND "
                counter += 1
        output.append(text)
    return output


def build_update_query(new_values: tuple, table_name: str) -> str:
    template = "INSERT INTO {} VALUES {}"

    if len(new_values) == 1:
        new_values = str(new_values)[1:-2]
    else:
        new_values = str(new_values)[1:-1]

    return template.format(table_name, new_values)
