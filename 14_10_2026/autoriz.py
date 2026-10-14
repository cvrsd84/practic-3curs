import tkinter as tk
from tkinter import ttk, messagebox
import psycopg2

DB_CONFIG = {
    "host" : "localhost",
    "password" : "Wahf128lkr",
    "database" : "demo_1",
    "port" : "5432",
    "user" : "postgres"
}




def perexod():
    katalog_frame.pack_forget()
    registr_frame.pack()



window = tk.Tk()
window.geometry("1200x900")
window.title("Чудо-обувь")

registr_frame = tk.Frame(window)

katalog_frame = tk.Frame(window)
katalog_frame.pack()

def katalog():
    con = psycopg2.connect(**DB_CONFIG)
    try:
        cur = con.cursor()
        cur.execute('''select m.model_name, m.model_creator, m.model_sostav, c.category_name, m.model_price 
                    FROM model m
                    LEFT JOIN category c on m.category_id = c.category_id
                     ''')
        row = cur.fetchall()

        for pos, row in enumerate(row):
            spisok_frame = tk.Frame(katalog_frame)
            spisok_frame.grid(column=0, row=pos+4, sticky='w', padx=5, pady=5)



            img_frame = tk.Frame(spisok_frame, bg="grey", height=120, width=120)
            img_frame.grid(column=0, row=0, sticky="w", pady=5, padx=5)
            img_frame.pack_propagate

            tovar_frame = tk.Frame(spisok_frame)
            tovar_frame.grid(column=1, row=0)
            creator_label = tk.Label(tovar_frame, text=f"Производитель: {row[1]}" if row[1] else "Производитель не найден.", font=('Calibri', 12))
            creator_label.grid(column=0, row=0, pady=5, padx=[0,100], sticky='w')

            name_label = tk.Label(tovar_frame, text=row[0] if row[0] else "Название не указано.", font=('Calibri',12))
            name_label.grid(column=0, row=0, pady=5, padx=10,sticky='e' )

            category_label = tk.Label(tovar_frame, text=row[3] if row[3] else "Категория не найдена.", font=('Calibri', 10))
            category_label.grid(column=0, row=1, sticky='w', padx=10, pady=5)
        
            kolvo_label = tk.Label(tovar_frame, text='Колличество', font=('Calibri',10))
            kolvo_label.grid(column=0, row=2, sticky='w', padx=10, pady=5)
        
            sostav_label = tk.Label(tovar_frame, text=row[2] if row[2] else "Состав не найден.", font=('Calibri',10))
            sostav_label.grid(column=0, row=3, sticky='w', padx=10, pady=5)
            price_label = tk.Label(tovar_frame, text=f"{row[4]}.руб"  if row[4] else "Цена не указана.", font=('Calibri',16))
            price_label.grid(column=1, row=2, sticky='w', padx=10, pady=5)
        cur.close()
        con.close()
    except Exception as e:
        messagebox.showerror("Ошибка", str(e))
    return
katalog()

def get_users_fio(login):
    con = psycopg2.connect(**DB_CONFIG)
    try:
        cur = con.cursor()
        cur.execute('''select users_fam, users_name, users_otc
                    from users
                    where users_login =%s
                    ''', (login,))
        row = cur.fetchone()
        if row:
            return f"{row[0]}, {row[1]}, {row[2] or ''}".strip()
    except Exception as e:
        messagebox.showerror("Ошибка!", str(e))
    finally:
        cur.close()
        con.close()
    return None

def get_login():
    login = reg_e.get().strip()
    if not login:
        messagebox.showwarning("Ошибка!","Логин не найден!")
        return
    fio = get_users_fio(login)
    if fio:
        registr_frame.pack_forget()
        katalog_frame.pack()

        hi_label = tk.Label(katalog_frame, text=f"Добро пожаловать - {fio} !", font=('Calibri',14))
        hi_label.grid(column=0, row=0, sticky='n', padx=5, pady=5)
    else:
        messagebox.showerror("Ошибка!", "Пользователь не найден!")


reg_l = tk.Label(registr_frame, text="введите логин: ", font=("Calibri", 14))
reg_l.grid(column=0, row=0)

reg_e = tk.Entry(registr_frame)
reg_e.grid(column=1, row=0)

reg_b = tk.Button(registr_frame, text="Войти", command=get_login)
reg_b.grid(column=0, row=2) 

exit_b = tk.Button(katalog_frame, text="Войти", command=perexod)
exit_b.grid(column=0, row=0, padx=40, pady=40)

window.mainloop()


        

