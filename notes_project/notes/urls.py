from django.urls import path
from .views import NoteListCreate, NoteRetrieveUpdateDelete

urlpatterns = [
    path('notes/', NoteListCreate.as_view(), name='note-list-create'),
    path('notes/<int:pk>/', NoteRetrieveUpdateDelete.as_view(), name='note-retrieve-update-delete'),
]
