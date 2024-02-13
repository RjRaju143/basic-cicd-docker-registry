from django.urls import path
from django.http import JsonResponse
from django.contrib import admin

def test_view(request):
    return JsonResponse(
        {
            "albumId": 1,
            "id": 1,
            "title": "accusamus beatae ad facilis cum similique qui sunt",
            "url": "https://via.placeholder.com/600/92c952",
            "thumbnailUrl": "https://via.placeholder.com/150/92c952"
        }
    )


urlpatterns = [
    path('admin/', admin.site.urls),
    path('test/', test_view),
]
