def remove_common(result: list) -> list:
    output: list = []
    for elm in result:
        if '+' in elm[:2] or '-' in elm[:2]:
            output.append(elm)
        else:
            pass
    result.clear()
    return output


def fix_diff(result: list) -> list:
    output: list = []

    for elm in result:
        if elm[0] == '+':
            check: bool = '-' + elm[1:] in result
            if check:
                continue
            else:
                output.append(elm)
        elif elm[0] == '-':
            check: bool = '+' + elm[1:] in result
            if check:
                continue
            else:
                output.append(elm)
        else:
            pass

    result.clear()
    return output


def filter_by(result: list, remove_symbol: str) -> list:
    output: list = []
    for elm in result:
        if remove_symbol in elm[:2]:
            continue
        else:
            output.append(elm[2:])
    result.clear()
    return output


def concat(result):
    txt = ''
    for elm in result:
        txt += elm
    return txt
