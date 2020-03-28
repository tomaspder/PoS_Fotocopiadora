#simple 0.45
#doble faz 0.85
#ampliacion 1.5
#color 2.5
import json
import datetime



def save_transaction(choice, price, qtty, description):
    file = open("sales.txt", "a")
    file.write("%3d;%3d;%8.2f;%-16s\n" % (choice, qtty, price * qtty, description))
    file.close()

def listPrices():
    with open('catalogue.json', 'r') as f:
        data = f.read()
        prods = json.loads(data)
        print("\033[1m" + "Producto <--> Precio" + '\033[0m')
        for i in prods["products"]:
            print(i, "--> $",prods["products"][i])


def closeDay():
    f = open("sales.txt", "r")
    cantxid = {"1": 0, "2": 0, "3": 0, "4": 0}
    soldValues = []
    for i in f:
        cantxid[i[2]] += int(i[6])
        soldValues.append(float(i[8:16].replace(" ", "")))
    f.close()
    with open("sales.txt", "r") as f:
        with open("sales_storage.txt", "a") as f1:
            for i in f:
                f1.write(i)
            f1.write("\nCantidad de SIMPLE: {}\n".format(cantxid['1']))
            f1.write("Cantidad de DOBLE FAZ: {}\n".format(cantxid['2']))
            f1.write("Cantidad de AMPLIACION: {}\n".format(cantxid['3']))
            f1.write("Cantidad de COLOR: {}\n".format(cantxid['4']))
            f1.write("Recaudo total: ${}\n".format(sum(soldValues)))
            f1.write("Cierre del dia: {}\n".format(datetime.datetime.now()))
            f1.write("\n**************************END**************************\n")





items = ["SIMPLE", "DOBLE FAZ", "AMPLIACION", "COLOR"]
prices = [0.45, 0.85, 1.5, 2.5]
running = True
while running:
    option = 1
    for choice in items:
        print(str(option) + ". " + choice)
        option = option + 1
    print(str(option) + ". Quit")
    print(str(option+1) + ". List prices")
    print(str(option + 2) + ". Close day")
    choice = int(input("Elija opción: "))
    if choice == option:
        running = False
    elif choice == option+1:
        listPrices()
    elif choice == option+2:
        closeDay()
        with open("sales.txt","w+") as s:
            s.write("")
        print("Día cerrado. Las ventas han sido guardadas con éxito.\nFin de la ejecución.")
        running = False
    else:
        msg = items[choice - 1] + " cantidad? "
        qtty = int(input(msg))
        save_transaction(choice, prices[choice - 1], qtty, items[choice - 1])