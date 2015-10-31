#!/usr/bin/env bash
curl -XPOST -H "Content-type:application/json" -d'
{
   "id": 2,
   "name": "a",
   "age": 23,
   "address": "house123"
}' http://localhost:8080/JewelleryDev/test1