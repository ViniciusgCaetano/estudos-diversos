from datetime import date

last_id = 0

class Note:
    '''Class used for notes'''
    def __init__(self, text: str, tags: str = ''):
        '''Iinitalize a note with space-separated tags, automatically
        assign the creation date and a unique id.'''
        self.creation_date = date.today
        self.tags = tags
        self.text = text
        global last_id
        last_id += 1
        self.id = last_id
         
    def write_text(self, new_text: str) -> None:
        self.text = new_text
    
    def write_tag(self, tags: str) -> None:
        self.tags = tags
    
    def match_text(self, filter: str) -> bool:
        '''Determine if a filter string matches with the text of a note
        or the tags who are in these note'''
        return filter in self.text or filter in self.tags

    def match_id(self, filter: int) -> bool:
        return filter == self.id