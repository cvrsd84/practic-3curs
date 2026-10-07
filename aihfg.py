'''
name = input("Как вас зовут? ")
rol = input("Кто вы? студент, или может быть работаете кем то?? ")
city = input ("Где вы живете? ")

hobby = input("Какое у вас хобби? ")


print("\n --- МОЯ ВИЗИТКА ---")
print(f"Имя: {name}")
print(f"Кем является: {rol}")
print(f"Живу тут: {city}")
print(f"Хобби: {hobby}")
'''
'''
price = float(input("Скажите общую сумму счета :) "))
chai = int(input("Сколько процентов на чай? "))
people = int(input("НА сколько людей делить счет? "))

itog_cahi = (price * chai/100)
total_itog = itog_cahi+price
kajdi = total_itog / people

print('\n ИТОГ ПО ЗАКАЗУ !!!!')
print(f"Всего чаевых {itog_cahi} !")
print(f"Всего сумма заказа {total_itog} !")
print(f"На каждого человека {kajdi} !")
'''


'''secret = input("Секретное слово знаете? ")
age = int(input("А сколько вам лет?"))

if secret != 'python':
    print("Пароль не верный! Доступ запрещен! ")
elif secret == 'python':
    if age < 18:
        print("Пароль верный, но вам слишком мало лет")
    else:
        print("Добро пожаловать в клуб! ")
'''

'''import random

stroka = 'qwertyuiopasdfghjklzxcvbnm1234567890'
s1 = random.choice(stroka)
s2 = random.choice(stroka)
s3 = random.choice(stroka)
s4 = random.choice(stroka)
s5 = random.choice(stroka)
password = s1+s2+s3+s4+s5

print(f'Ваш пароль: {password}')
'''
'''shopping_list = []
a = input("Какие продукты хотите купить? ")
a1 = input("Какие продукты хотите купить? ")
a2 = input("Какие продукты хотите купить? ")

shopping_list.append (a)
shopping_list.append (a1)
shopping_list.append (a2)

print(f'Ваш список покупок: {shopping_list}')
x = input("Хотите удалить продукт? ")
if x == "да" :
    a3= input()
    shopping_list.remove (a3)
print(shopping_list)
'''

'''import random

x = random.randint (1,100)

a = 0
while a!= x :
    a = int(input('Попробуйте угадать число '))
    if a < x :
        print("Ваше число меньше! ")
    elif a > x :
        print("Ваше число больше!")
    else:
        print("ВЫ УГАДАЛИ!!! ")
        break
'''

'''phone_book = {
    "Алина" : "89854532131",
    "Дима" : "89209004262",
    "Леша" : "89661581350"
}
a = input("Чей вы хотите номер узнать? ")
if a in phone_book :
    print(f"Телефон {phone_book[a]}")
else:
     print("Контакт не найден! ")
'''

'''def km_to_miles(km):
    itog = km * 0.621371
    return itog

def kg_to_pounds(kg):
    itog = kg * 2.20462
    return itog

a = input("Что хотите перевести? (km) или (kg)")
b = int(input("Сколько? "))
if a == "km":
    print(km_to_miles(b))
elif a == 'kg':
    print(kg_to_pounds(b))
'''
'''
import tkinter as tk

window = tk.Tk()
window.title("Счетчик кликов")
window.geometry('350x250')


n = 0
def click():
    global n
    n += 1
    label.config(text= n )

def sbros():
    global n
    n = 0
    label.config(text = 0)

button1 = tk.Button(
    window,
    text="Клик",
    command=click,
    font=("Arial",12)
)
button1.pack()

button2 = tk.Button(
    window,
    text="Ретюрн",
    command=sbros,
    font=("Arial",12)
)
button2.pack()

label = tk.Label(window, text= n, font=("Arial",14))
label.pack()

window.mainloop()

'''

import tkinter as tk

a = 0

def plus():
    chis = int(entry2.get())
    chis2 = int(entry3.get())
    if chis and chis2:
        label.config(text=chis + chis2)

window = tk.Tk()
window.title("calc")
window.geometry("300x250")

frame = tk.Frame(window)
frame.pack(pady=20, padx=20)

label2 = tk.Label(frame, text="1-oe chis", font=("Arial", 10))
label2.grid(row=0, column=0, sticky="e", padx=5, pady=5)

entry2 = tk.Entry(frame, width=20)
entry2.grid(row=0, column=1, padx=5, pady=5)

label3 = tk.Label(frame, text="2-oe chis", font=("Arial", 10))
label3.grid(row=1, column=0, sticky="e", padx=5, pady=5)

entry3 = tk.Entry(frame, width=20)
entry3.grid(row=1, column=1, padx=5, pady=5)


label = tk.Label(frame, text="0", font=("Arial", 20))
label.grid(row=3, column=0, sticky="e", padx=5, pady=5)


button1 = tk.Button(window, text="+", command=plus)
button1.pack()

window.mainloop()




window.mainloop()