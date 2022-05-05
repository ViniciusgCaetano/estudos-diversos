class Property:
    """A superclass for store basic attributes of a porperty.
    """
    def __init__(self, name: str, address: str, square_feet: float,
                 number_of_rooms: int, **kwargs):
        """Instantiates a Property object

        Args:
            name (str): code of property
            address (str): address pf a propertu
            area (float): area of a house in square feets
            number_of_rooms (int): number of rooms in a house
        """
        super().__init__(**kwargs)
        self.name = name
        self.address = address
        self.area = square_feet
        self.number_of_rooms = number_of_rooms
    def display(self):
        print("PROPERTY DETAILS")
        print("================")
        print("square footage: {}".format(self.square_feet))
        print("bedrooms: {}".format(self.num_bedrooms))
        print("bathrooms: {}".format(self.num_baths))
        print()
        
    def prompt_init():
        return dict(square_feet=input("Enter the square feet: "),
        beds=input("Enter number of bedrooms: "),
        baths=input("Enter number of baths: "))
    prompt_init = staticmethod(prompt_init)
                
        
        
class House(Property):
    """This class is used for a house

    Args:
        Property (_type_): The super class that is used for store basic 
        attributes of a property
    """
    def __init__(self, name: str, address: str, 
                    area: float, number_of_rooms: int, num_stories: int,
                    garage: str, fenced_yard: bool):
        """__init__

        Args:
            name (str): code
            address (str): address
            area (float): area
            number_of_rooms (int): number of rooms in a house
            num_stories (int): number of stories in a house
            garage (str): stores if the house have garage, in positive case
            can be attached or disattached.
            fenced_yard (bool): if a house's yard is fenced.
        """
        
        super().__init__(name, address, area, number_of_rooms)
        self.num_stories = num_stories
        self.garage = garage
        self.fenced_yard = fenced_yard
            
            
            
class Apartment(Property):
    """_summary_

    Args:
        Property (_type_): _description_
    """
    def __init__(self, name: str, address: str, area: float, 
                 number_of_rooms: int, balcony: int,
                 laundry: int):
        super().__init__(name, address, area, number_of_rooms)
        self.balcony = balcony
        self.laundry = laundry
        
        
    
    
