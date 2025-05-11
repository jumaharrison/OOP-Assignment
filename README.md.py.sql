# OOP-Assignment
# Assignment 1: Smartphone Class
class Smartphone:
    def __init__(self, brand, model, battery_life):
        self.brand = brand
        self.model = model
        self.battery_life = battery_life
    
    def make_call(self, number):
        print(f"Calling {number} from {self.brand} {self.model}...")
    
    def send_message(self, number, message):
        print(f"Sending message to {number}: {message}")
    
    def battery_status(self):
        print(f"Battery life remaining: {self.battery_life}%")

# Inheritance - GamingPhone subclass
class GamingPhone(Smartphone):
    def __init__(self, brand, model, battery_life, cooling_system):
        super().__init__(brand, model, battery_life)
        self.cooling_system = cooling_system
    
    def gaming_mode(self):
        print(f"Gaming mode activated on {self.brand} {self.model} with {self.cooling_system} cooling system!")

# Creating objects
phone1 = Smartphone("Apple", "iPhone 15", 80)
phone2 = GamingPhone("Asus", "ROG Phone 6", 90, "Liquid Cooling")

phone1.make_call("0794233368")
phone2.gaming_mode()
phone2.battery_status()

# Activity 2: Polymorphism Challenge
class Vehicle:
    def move(self):
        pass

class Car(Vehicle):
    def move(self):
        print("Driving")

class Plane(Vehicle):
    def move(self):
        print("Flying")

class Boat(Vehicle):
    def move(self):
        print("Sailing")

# Testing polymorphism
vehicles = [Car(), Plane(), Boat()]
for v in vehicles:
    v.move()
