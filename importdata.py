import cx_Oracle

def main():
    
  con = cx_Oracle.connect('system', 'hyde1208', 'xe') 
  cur = con.cursor()

#  infile = open('teamlist.txt','r')
  infile1 = open('clients.txt','r')

#  for line in infile:
#
#    linelist = line.split(',')
#    cur.execute('insert into TEAMS values(:1,:2)',{'1':linelist[0],'2':linelist[1]})

  for line in infile1:
    linelist1 = line.split(',')
    cur.execute('insert into CLIENTS values(:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14)',{'1':linelist1[0],'2':linelist1[1],'3':linelist1[2],'4':linelist1[3],'5':linelist1[4],'6':linelist1[5],'7':linelist1[6],'8':linelist1[7],'9':linelist1[8],'10':linelist1[9],'11':linelist1[10],'12':linelist1[11],'13':linelist1[12],'14':linelist1[13]})    

  con.commit()

  infile1.close()
#  infile.close()
  cur.close()
  con.close()
main()  
