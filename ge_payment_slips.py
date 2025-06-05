import random

# Generate a list of 400 workers randomly
workers = []
genders = ['Male', 'Female']

try:
    for i in range(400):
        worker = {
            "id": i + 1,
            "name": f"Worker_{i + 1}",
            "gender": random.choice(genders),
            "salary": round(random.uniform(5000, 30000), 2)
        }
        workers.append(worker)

    # Generate payment slips
    for worker in workers:
        try:
            unknown_level="No level assigned"
            salary = worker["salary"]
            gender = worker["gender"]

            if 10000 < salary < 20000:
                unknown_level = "A1"
            if 7500 < salary < 30000 and gender == "Female":
                unknown_level = "A5-F"

            print(f"Payment Slip for {worker['name']} ")
            print(f"ID: {worker['id']}\nEmployee Level: {unknown_level}\nGender: {gender}\nSalary: ${salary}")
            print("-" * 25)

        except KeyError as e:
            print(f"Missing data for worker: {worker.get('id', 'Unknown')}, Error: {e}")

except Exception as e:
    print(f"An unexpected error occurred: {e}")
