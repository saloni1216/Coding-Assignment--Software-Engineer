def getChange(x, y):
    change = round((x - y) * 100)

    coins = [100, 50, 25, 10, 5, 1]
    result = []

    for coin in coins:
        result.append(change // coin)
        change = change % coin

    return result