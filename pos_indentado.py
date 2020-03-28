# 1 - Indentacion correcta

def save_transaction(price, qtty, description):
    file = open("sales.txt", "a")
    file.write("%3d;%8.2f;%-16s\n" % (qtty, price * qtty, description))
    file.close()

items = ["FACTURA", "CAFE", "TE", "MUFFIN"]
prices = [15.0, 90.0, 85.0, 25.0]
running = True
while running:
    option = 1
    for choice in items:
        print(str(option) + ". " + choice)
        option = option + 1
    print(str(option) + ". Quit")
    choice = int(input("Elija opción: "))
    if choice == option:
        running = False
    else:
        msg = items[choice - 1] + " cantidad? "
        qtty = int(input(msg))
        save_transaction(prices[choice - 1], qtty, items[choice - 1])