from contact import Contact
from address_holder import AddressHolder

class Friend(Contact, AddressHolder):
    def __init__(
        self, name, email, phone, street, city, state, code):
        Contact.__init__(name, email)
        AddressHolder.__init__(street, city, state, code)
        self.phone = phone