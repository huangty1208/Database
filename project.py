import cx_Oracle
con = cx_Oracle.connect('om', 'om', 'xe') #these inputs will need adjustment
cur = con.cursor()

def searchAll(user_id):
    return True
def searchDateMenu(user_id):
    return True
def searchToday(user_id):
    return True
def searchToday(user_id):
    return True
def searchToday(user_id):
    return True
def searchToday(user_id):
    return True


#def coachMenu(user_id, user_name, plan_id):
#def playerMenu(user_id, user_name, plan_id):
def homeMenu(user_id, user_last_name, user_name): #this can be deleted when the "is_coach" is added
    home_loop = True

    while home_loop:
        
        print '\nHello ' + user_name
        print '\nOption       Action\n'
        print '     1       Search for all concussions\n'
        print '     2       Search for concussions within dates\n'
        print '     3       Search for today\'s concussions\n'
        print '     4       Find max acceleration\n'
        print '     5       Alert emergancy contacts\n'
        print '     6       Account info\n'
        print '     7       Log out\n'
        print '     8       Close\n'
    
        home_sel = raw_input("Select option:  ")
        
        if home_sel == '1':
            searchAll(user_id)
        elif home_sel == '2':
            searchDateMenu(user_id)
        elif home_sel == '3':
            searchToday(user_id)
        elif home_sel == '4':
            searchToday(user_id)
        elif home_sel == '5':
            searchToday(user_id)
        elif home_sel == '6':
            searchToday(user_id)
        elif home_sel == '7':
            main_loop = True
            home_loop = False
        elif home_sel == '8':
            main_loop = False
            home_loop = False
        else:
            print 'Invalid entry, please try again'

    return main_loop


def main():
    main_loop = True
    while main_loop:
        print '\nPlease log in'
        username = raw_input("First Name:    ")
        password = raw_input("Birth Day:             ")
        sel_state = "SELECT client_birthday, client_id, client_last_name FROM clients WHERE client_first_name = '"
        #sel_state = "SELECT client_birthday, client_id, client_last_name, client_is_coach FROM clients WHERE client_first_name = '"
        cur.execute(sel_state + str(username) + "'")
        pass_check = cur.fetchall()
        if not pass_check:
            print 'Username or email does not exist'
        elif pass_check[0][0] == password:
            user_id = pass_check[0][1]
            user_last_name = pass_check[0][2]
            #is_coach = pass_chech[0][3]
            #Here we will need to distinguish between coach and player
            #if is_coach:
                #main_loop = coachMenu(user_id, user_last_name, username)
            #else:
                #main_loop = playerMenu(user_id, user_last_name, username)
            main_loop = homeMenu(user_id, user_last_name, username)
        else:
            print '\nIncorrect password\n\n'

main()

cur.close()
con.close() 