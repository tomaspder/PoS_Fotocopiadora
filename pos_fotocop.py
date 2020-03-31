#simple 0.45
#doble faz 0.85
#ampliacion 1.5
#color 2.5
import json
import datetime
import importar
import consultas

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
    db_data = {}
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
            f1.write("Cierre del dia: {}\n".format(datetime.datetime.today().strftime('%Y-%m-%d')))
            f1.write("\n**************************END**************************\n")
    db_data = {
        "cant_simple":cantxid["1"],
        "cant_doblefaz":cantxid["2"],
        "cant_ampliacion":cantxid["3"],
        "cant_color":cantxid["4"],
        "recaudo_total":sum(soldValues),
        "fecha":datetime.datetime.today().strftime('%Y-%m-%d')
    }
    return db_data

def queryDates(choice):
    months = ["enero","febrero","marzo","abril","mayo","junio","julio","agosto","septiembre","octubre","noviembre","diciembre"]
    if choice == 3:
        month = int(input("Ingrese el numero de mes que desea consultar (e.g. 1 -> enero, 2 -> febrero..., etc.) : "))
        result = consultas.searchByMonth(month)
        return print("Ventas registradas durante el mes de {}\nCantidad de SIMPLE: {}\nCantidad de DOBLE FAZ: {}\nCantidad de AMPLIACION: {}\nCantidad de COLOR: {}\nRecaudo total: ${}".format(months[month-1],result[0], result[1], result[2], result[3], result[4]))
    elif choice == 1:
        date = str(input("Ingrese la fecha del dia a consultar en formato AAAA-MM-DD (e.g. 2020-02-18): "))
        result = consultas.searchByDay(date)
        return print("Ventas registradas durante el dia {}\nID de la venta: {}\nCantidad de SIMPLE: {}\nCantidad de DOBLE FAZ: {}\nCantidad de AMPLIACION: {}\nCantidad de COLOR: {}\nRecaudo total: ${}".format(date,result[0], result[1], result[2], result[3], result[4],result[5]))
    elif choice == 2:
        date = str(input("Ingrese una fecha, y vera en pantalla toda la semana que la integra (formato AAAA-MM-DD e.g. 2020-02-18): "))
        result = consultas.searchByWeek(date)
        return result

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
    print(str(option + 3) + ". Consultar ventas")
    choice = int(input("Elija opción: "))
    if choice == option:
        running = False
    elif choice == option+1:
        listPrices()
    elif choice == option+2:
        importar.guardar_venta(closeDay())
        with open("sales.txt","w+") as s:
            s.write("")
        print("Día cerrado. Las ventas han sido guardadas con éxito.\nFin de la ejecución.")
        running = False
    elif choice == option+3:
        dtchoice = int(input("1. Consulta por dia\n2. Consulta por semana\n3. Consulta por mes\nIngrese el numero de la consulta a realizar: "))
        queryDates(dtchoice)
    else:
        msg = items[choice - 1] + " cantidad? "
        qtty = int(input(msg))
        save_transaction(choice, prices[choice - 1], qtty, items[choice - 1])