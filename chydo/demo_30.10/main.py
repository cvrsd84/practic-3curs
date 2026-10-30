# импорт необходимих библиотек
import tkinter as tk 
import customtkinter as ctk
import psycopg2
from tkinter import ttk, messagebox
from customtkinter import CTkImage
from PIL import Image
# подключение к БД
BD_CONNECT = {
    "host" :"localhost",
    "port" :"5432",
    "password": "Wahf128lkr",
    "user":"postgres",
    "database": "demo30"
}

window = ctk.CTk() # создание окна
window.title("Чудо-Обувь")
window.geometry("1600x900")
# функции перехода между окнами
def go_catalog():
    reg_f.pack_forget()
    catalog_f.pack()
def go_reg():
    catalog_f.pack_forget()
    reg_f.pack()
catalog_f = ctk.CTkFrame(window)
catalog_f.pack(fill='both', expand=True)

reg_f = ctk.CTkFrame(window, width=200, height=100)
reg_l = ctk.CTkLabel(reg_f, text='Ввеите логин', font=("Calibri", 16))
reg_l.grid(row=0, column=0, pady=5, padx=5)

def get_login(): # получаем логин из строки ввода, проверяем что она не пустая, если все верно, в каталоге выводится "аккаунт - фио пользователя"
    login = reg_e.get().strip()
    
    if not login: 
        messagebox.showwarning("Внимание!", "Введите логин!")
        return

    fio = get_user_fio(login)
    if fio:
        reg_f.pack_forget()
        catalog_f.pack(fill='both', expand=True)

        hi_label = ctk.CTkLabel(spiski_f, text=f"Аккаунт - {fio} !", font=('Calibri', 14))
        hi_label.grid(column=1, row=0, sticky='n', padx=5, pady=5)
    else:
        messagebox.showerror("Ошибка!", "Пользователь с таким логином не найден!")

reg_e = ctk.CTkEntry(reg_f, width=84)
reg_e.grid(row=0, column=1, pady=5, padx=5)
reg_b = ctk.CTkButton(reg_f, command=get_login, text='Войти')
reg_b.grid(row=2, column=0, sticky='w')


spiski_f = ctk.CTkFrame(catalog_f, height=50,width=1400)
spiski_f.grid(row=0)

scroll_f = ctk.CTkScrollableFrame(catalog_f, width=1400, height=850)
scroll_f.grid(row=1, sticky='nsew')
to_reg_b = ctk.CTkButton(spiski_f, text='Войти', command=go_reg)
to_reg_b.grid(row=0, column=0, pady=5, padx=5)

category_values = ["Все категории","Мужская обувь","Женская обувь","Детская обувь"]
category= ttk.Combobox(spiski_f, values=category_values, width=13, state="readonly")
category.set("Все категории")
category.grid(row=0, column=4, padx=5)

price_values = ["мин-->макс","макс --> мин"]
price= ttk.Combobox(spiski_f, values=price_values, width=13, state="readonly")

price.set("Цена")

price.grid(row=0, column=5, padx=5)



def catalog(event=None): #функция каталога, берем данные из бд для создания карточек, через for pos деалем 1 карточку, которая повторяется для каждой позиции бд
    try:
        con = psycopg2.connect(**BD_CONNECT)
        cur = con.cursor()
        cur.execute(''' select m.model_name, m.model_creator, m.model_img, m.model_bio, m.model_sostav, m.model_price, c.category_name, 
                    COALESCE(SUM(CAST(s.count_for_order AS INTEGER)), 0 ), m.model_id
                    from model m
                    LEFT JOIN category c on m.category_id = c.category_id
                    LEFT JOIN stock s ON m.model_id = s.model_id
                    GROUP BY m.model_id, m.model_name, m.model_creator, m.model_img,m.model_bio, m.model_sostav, m.model_price, c.category_name
                    ''')
        row = cur.fetchall()
        for pos, row in enumerate(row):
            tovari_f = ctk.CTkFrame(scroll_f)
            tovari_f.grid(column=0, row=pos, sticky='w')

            img_f = ctk.CTkFrame(tovari_f, height=85, width=85)
            img_f.grid(column=0, row=0, pady=5, padx=5)
            img_f.grid_propagate(False)
            if row[2]:
                try:
                    img_path = f"Images/{row[2]}"
                    pil_image = Image.open(img_path)
                    ctk_image = CTkImage(
                        light_image=pil_image,
                        dark_image=pil_image,
                        size=(85, 85)
                        )
                    l_img = ctk.CTkLabel(img_f, image=ctk_image, text="")
                    l_img.pack(expand=True)
                except Exception as e:
                    pass
                bio_f = ctk.CTkFrame(tovari_f)
                bio_f.grid(sticky='nsew', row=0, column=1, pady=5, padx=5)

                name_l = ctk.CTkLabel(bio_f, text=f'Производство - {row[1]} | Наименование - {row[0]}', font=("Calibri",14))
                name_l.grid(row=0, column=0, sticky='w', pady=5, padx=5)

                category_l = ctk.CTkLabel(bio_f, text=f'Категория - {row[6]}', font=("Calibri",14))
                category_l.grid(row=1, column=0, sticky='w', pady=5, padx=5)

                count = row[7]
                count_color = 'red' if count < 3 else 'white'

                count_l = ctk.CTkLabel(bio_f, text=f'В наличии - {count} шт', font=("Calibri",14), text_color=count_color)
                count_l.grid(row=2, column=0, sticky='w', pady=5, padx=5)

                sostav_l = ctk.CTkLabel(bio_f, text=f'Состав - {row[4]}', font=("Calibri",10))
                sostav_l.grid(row=3, column=0, sticky='w',)

                price_l = ctk.CTkLabel(bio_f, text=f'Цена - {row[5]} руб.', font=("Calibri",14))
                price_l.grid(row=1, column=1, sticky='w', pady=5, padx=(0,15))
                buy_b = ctk.CTkButton(bio_f, text='Купить')
                buy_b.grid(row=2, column=1, sticky='w', pady=5, padx=(0,15))
    except Exception as e:
        messagebox.showerror("Ошибка!", str(e))
    finally:
        cur.close()
        con.close()
catalog()

def get_user_fio(login): # из бд получаем фио пользователя
    try:
        con= psycopg2.connect(**BD_CONNECT)
        cur = con.cursor()
        cur.execute('''select users_name, users_otc, users_fam
                    from users
                    where users_login = %s''',(login,))                
        row= cur.fetchone()
        if row:
            return f"{row[2]} {row[0]} {row[1]}".strip()
    except Exception as e:
        messagebox.showerror("Ошибка!", str(e))
    finally:
        cur.close()
        con.close()
    return None

def get_login():
    login = reg_e.get().strip()
    
    if not login: 
        messagebox.showwarning("Внимание!", "Введите логин!")
        return

    fio = get_user_fio(login)
    if fio:
        reg_f.pack_forget()
        catalog_f.pack(fill='both', expand=True)

        hi_label = ctk.CTkLabel(spiski_f, text=f"Аккаунт - {fio} !", font=('Calibri', 14))
        hi_label.grid(column=1, row=0, sticky='n', padx=5, pady=5)
    else:
        messagebox.showerror("Ошибка!", "Пользователь с таким логином не найден!")




window.mainloop()