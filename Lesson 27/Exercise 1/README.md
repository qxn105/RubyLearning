﻿Чтение XML-визитки
Сделайте свою визитку в формате XML.

Укажите свои фамилию, имя, отчество, телефон, адрес электронной почты и немного напишите о своих навыках.

Напишите программу, которая читает эту визитку в формате XML и красиво выводит информацию на экран.

Например:

Иван А. Попов
+7 999 100-30-20, ivan.popov@mail.ru
Начинающий программист на Ruby

Создайте файл как мы показывали на уроке. Начните со служебной конструкции

<?xml version="1.0" encoding="utf-8"?>
Помните, что корневой элемент только один.

В программе откройте файл с помощью библиотеки rexml и достаньте все нужные поля с помощью метода elements.

doc.root.elements["first_name"].text
Возможно, вам понадобится заглянуть в инструкцию по использованию этой библиотеки (ещё одна, описание класса REXML).