def ps_kw_conversion(ps):
    constant = 1 / 1.3596216173039
    kw = ps * constant
    return kw

print()
while True:
    var_input = input("Please enter ps value for current car: ")
    try:
        ps_input = float(var_input)
    except ValueError:
        continue

    print(f"kW value for current car is: {round(ps_kw_conversion(ps_input), 2)}")
    continue_input = input("Continue? ")

    if continue_input == "n" or continue_input == "no":
        quit()
    else:
        print()