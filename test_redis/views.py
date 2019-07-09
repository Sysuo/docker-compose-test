from django.shortcuts import render
from django.http import HttpResponse
from redis import Redis

def index(request):
    redis = Redis(host='redis', port=6379)
    redis.incr('hits')
    return HttpResponse("Hello, world. You're at the polls index. redis = %s" % redis.get('hits'))
