import pandas as pd

# Загрузим данные из файла
data = pd.read_csv('data.csv')

# Рассчитаем среднюю зарплату
average_salary = data['salary'].mean()

# Соберем сотрудников старше 30 лет
filtered_data = data[data['age'] > 30]

print(f'Средняя зарплата сотрудников: {average_salary}')
print('Сотрудники старше 30 лет:')
print(filtered_data)