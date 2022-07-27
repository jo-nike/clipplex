from multiprocessing import cpu_count
from os import environ

bind = "0.0.0.0:" + environ.get("PORT", "5000")
workers = cpu_count()
