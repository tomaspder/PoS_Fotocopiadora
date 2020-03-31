import mysql.connector

con = mysql.connector.connect(user='root', password='', host='127.0.0.1', database='fotocopiadoraDB')
mycursor = con.cursor(buffered=True)


def searchByMonth(month):
    response = []
    qry = '''SELECT SUM(cant_simple), SUM(cant_doblefaz), SUM(cant_ampliacion), SUM(cant_color), SUM(recaudo_total) FROM `ventas` WHERE MONTH(fecha) = {}'''.format(month)
    mycursor.execute(qry)
    con.commit()
    result = mycursor.fetchall()
    result = list(result[0])
    return result

def searchByDay(date):
    qry = '''SELECT * FROM `ventas` WHERE `fecha`= "{}"'''.format(date)
    mycursor.execute(qry)
    con.commit()
    result = mycursor.fetchall()
    result = list(result[0])
    return result


def searchByWeek(date):
    qry = 'SELECT * FROM ventas WHERE WEEK(fecha,1) = WEEK("{}",1)'.format(date)
    mycursor.execute(qry)
    con.commit()
    result = mycursor.fetchall()
    weekprofit = {
        "simple": 0,
        "doble": 0,
        "ampli": 0,
        "color": 0,
        "total": 0
    }
    print("Semana compuesta por los dias: ")
    for i in result:
        print("ID {} - {}".format(i[0],i[6]))
        weekprofit["simple"] += int(i[1])
        weekprofit["doble"] += int(i[2])
        weekprofit["ampli"] += int(i[3])
        weekprofit["color"] += int(i[4])
        weekprofit["total"] += int(i[5])
    print(
        "Cantidad de SIMPLE: {}\nCantidad de DOBLE FAZ: {}\nCantidad de AMPLIACION: {}\nCantidad de COLOR: {}\nRecaudo total: ${}".format(
            weekprofit["simple"], weekprofit["doble"], weekprofit["ampli"], weekprofit["color"], weekprofit["total"]))
