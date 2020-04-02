class Soldier:
    
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength
    
    def attack(self):
        return self.strength
    
    def receive_damage(self, damage):
        self.health -= damage

        
class Viking(Soldier):
    
    def __init__(self, health, strength, name):
        #super(). fetches Parent class __init__
        #here using Soldier. to clearly specifies parenting class
        Soldier.__init__(self, health, strength)
        self.name = name

    def receive_damage(self, damage):
        Soldier.receive_damage(self, damage)
        if self.health > 0:
            return f'{self.name} has received {damage} points of damage & is still alive'
        else:
            return f'{self.name} has died in combat & went back to Valhala'
    
    def battle_cry():
        return "Odin Owns You All !"


class Saxon(Soldier):
    
    def __init__(self, health, strength):
    
        Soldier.__init__(self, health, strength)

    def receive_damage(self, damage):
        Soldier.receive_damage(self, damage)
        if self.health > 0 :
            print(f'A Saxon has received {damage} points of damage & is still alive')
        else:
            return 'A Saxon has died proudly in combat'