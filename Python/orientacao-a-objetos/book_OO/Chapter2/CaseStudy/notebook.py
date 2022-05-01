from notes import Note

class Notebook:
    def __init__(self):
        self.notes = []
    
    def add_note(self, note: Note) -> None:
        self.notes.append(note) 
    
    def change_tag(self, id: int, new_tag: str) -> None:
        for note in note:
            if note.match_id(id):
                note.write_tag(new_tag)
    
    def search(self, search_text) -> None:
        result = []
        for note in self.notes:
            if note.match_text(search_text):
                result.append(note)
    
    def show_notes(self, id_list: list = []):
        for note in self.notes:
            print(note.text)