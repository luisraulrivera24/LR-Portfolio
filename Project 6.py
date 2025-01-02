hours = float(input('Enter Hours: '))
rate = float(input('Enter Rate: '))

if hours > 40:
    ot_hours = hours - 40
    ot_pay = ot_hours * (rate * 1.5)
    pay = (hours - ot_hours) * rate
    total_pay = ot_pay + pay
    print(f'Pay: {total_pay:.2f}')
else:
    total_pay = rate * hours
    print(f'Pay: {total_pay:.2f}')