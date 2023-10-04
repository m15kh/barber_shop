from django.urls import path
from .views import SignUpPageView

app_name = 'accounts'

urlpatterns = [
    path('signup/', SignUpPageView.as_view(), name='signup'),
]