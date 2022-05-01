from contact_list import ContactList

class Contact:
    all_contacts = ContactList()
    
    def __init__(self, name, email):
        self.name = name
        self.email = email
        self.all_contacts.append(self)



    
