import mysql.connector

con = mysql.connector.connect(user='root', password='', host='127.0.0.1', database='fotocopiadoraDB')
mycursor = con.cursor(buffered=True)

def guardar_venta(valores):

    qry = '''INSERT INTO `ventas` (`id`,`cant_simple`, `cant_doblefaz`, `cant_ampliacion`, `cant_color`, `recaudo_total`, `fecha`) 
        VALUES (NULL, '{}', '{}', '{}', '{}', '{}', '{}');               
              '''.format(valores['cant_simple'],
                         valores['cant_doblefaz'],
                         valores['cant_ampliacion'],
                         valores['cant_color'],
                         valores['recaudo_total'],
                         valores['fecha'])

    mycursor.execute(qry)
    con.commit()

