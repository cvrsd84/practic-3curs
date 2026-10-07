import tkinter as tk
from tkinter import ttk


class Shop(tk.Tk):
    def __init__(self):
            super().__init__()
            self.title("ИС 'Чудо Обувь'")
            self.geometry("1000x650")


            self.main_container = ttk.Frame(self)
            self.main_container.pack(fill="both", expand=True)
            self.login()

    def clear_container(self):
        for widget in self.main_container.winfo_children():
            widget.destroy()

    # ЭКРАН 1: Авторизация пользователя
    def login(self):
        self.clear_container() # Стираем старый экран, если он был
        reg_okno = tk.Frame(self.main_container)
        reg_okno.pack(padx=20, pady=20)
        log = tk.Label(reg_okno, text='Login', font=('Arial',10))
        log.grid(row=0, column=0, padx=10,pady=20)

        log1 = tk.Entry(reg_okno)
        log1.grid(row=0, column=1, padx=10) 

        knopka = tk.Button(reg_okno, text='Log in', command=self.katalog)
        knopka.grid(row=1, column=1, padx=25, sticky='w')

        # ЭКРАН 2: Главное рабочее пространство (после входа)
    def katalog(self):
        self.clear_container()# Очищаем экран авторизации
        osnova = tk.Frame(self.main_container, bg='grey')
        osnova.pack()

        lable = tk.Label(osnova, text='Магазин обуви', font=('Arial',14))
        lable.grid(row=0, column=0, sticky='s', padx=10, pady=10)

        zakaz1 = tk.Frame(osnova, bg = 'light blue')
        zakaz1.grid(row=1, column=0, sticky='w', padx=10, pady=10 )
        lable1 = tk.Label(zakaz1, text='Топ 1 кроссовка для молождежи унисекс', font=('Aril',8))
        lable1.grid(row=1, column=1, sticky='e', padx=10, pady=10)
        lable1 = tk.Label(zakaz1, text='9.999$', font=('Aril',8))
        lable1.grid(row=2, column=1, sticky='e', padx=10, pady=10)
        img = tk.Frame(zakaz1, bg = 'grey', width=80, height=80)
        img.grid(row=1, column=0, padx=10,pady=10)

        zakaz2 = tk.Frame(osnova, bg = 'light blue')
        zakaz2.grid(row=2, column=0, sticky='w', padx=10, pady=10 )
        lable1 = tk.Label(zakaz2, text='Крутая ботинка баленсиага как у kai angel', font=('Aril',8))
        lable1.grid(row=1, column=1, sticky='e', padx=10, pady=10)
        img = tk.Frame(zakaz2, bg = 'grey', width=80, height=80)
        img.grid(row=1, column=0, padx=10,pady=10)
        lable1 = tk.Label(zakaz2, text='9.999$', font=('Aril',8))
        lable1.grid(row=2, column=1, sticky='e', padx=10, pady=10)



        zakaz3 = tk.Frame(osnova, bg = 'light blue')
        zakaz3.grid(row=3, column=0, sticky='w', padx=10, pady=10,  )
        lable1 = tk.Label(zakaz3, text='Носик спанчбобаааааааааааааааааааа', font=('Aril',8))
        lable1.grid(row=1, column=1, sticky='e', padx=10, pady=10)
        img = tk.Frame(zakaz3, bg = 'grey', width=80, height=80)
        img.grid(row=1, column=0, padx=10,pady=10)
        lable1 = tk.Label(zakaz3, text='9.999$', font=('Aril',8))
        lable1.grid(row=2, column=1, sticky='e', padx=10, pady=10)


        exit = tk.Button(osnova, text='Exit', command=self.login)
        exit.grid(row=0, column=3, padx=20, pady=20)

if __name__ == "__main__":
     app = Shop()
     app.mainloop()