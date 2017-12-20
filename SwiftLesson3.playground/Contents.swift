//Tuples
/* 1. Создать тюпл с тремя параметрами:

- максимальное количество отжиманий
- максимальное количество подтягиваний
- максимальное количество приседаний

Заполните его своими достижениями :)
Распечатайте его через println()
*/
print("------1--------")
var MyMaxCount = (pushUps:50, pullUps:150, sitUps:80)
print("My max count \(MyMaxCount)")


/* 2. Также сделайте три отдельных вывода в консоль для каждого параметра
При том одни значения доставайте по индексу, а другие по параметру
 */
print("------2--------")
print("Maximum number of push-ups \(MyMaxCount.0)")
print("Maximum number of pull-ups \(MyMaxCount.1)")
print("Maximum number of sit-ups \(MyMaxCount.sitUps)")



/* 3. Создайте такой же тюпл для другого человека (супруги или друга)
с такими же параметрами, но с другими значениями
Используйте промежуточную переменную чтобы поменять соответствующие значения
первого тюпла на значения второго
 */
print("------3--------")
var FriendMaxCount = MyMaxCount
FriendMaxCount = (100,90, 80)
print("Friend max count \(FriendMaxCount)")


/* 4. Создайте третий тюпл с теми же параметрами, но значения это разница
между соответствующими значениями первого и второго тюплов
Результат выведите в консоль
 */
print("------4--------")
var differenceCount = MyMaxCount

if MyMaxCount.0 > FriendMaxCount.0 {
    differenceCount.0 = MyMaxCount.0 - FriendMaxCount.0
    print ("I push myself more than my friend on \(differenceCount.0)")
} else if MyMaxCount.0 == FriendMaxCount.0 {
    differenceCount.0 = 0
    print ("We press the same number of times")
}
else {
    differenceCount.0 = FriendMaxCount.0 - MyMaxCount.0
    print ("My friend presses more than I do on \(differenceCount.0)")
}

if MyMaxCount.1 > FriendMaxCount.1 {
    differenceCount.1 = MyMaxCount.1 - FriendMaxCount.1
    print ("I pull myself more than my friend on \(differenceCount.1)")
} else if MyMaxCount.1 == FriendMaxCount.1 {
    differenceCount.1 = 0
    print ("We pull up the same number of times")
}
else {
    differenceCount.1 = FriendMaxCount.1 - MyMaxCount.1
    print ("My friend pulls up more than I do on \(differenceCount.1)")
}

if MyMaxCount.2 > FriendMaxCount.2 {
    differenceCount.2 = MyMaxCount.2 - FriendMaxCount.2
    print ("I crouch more than a friend on \(differenceCount.2)")
} else if MyMaxCount.2 == FriendMaxCount.2 {
    differenceCount.2 = 0
    print ("We squat the same number of times")
}
else {
    differenceCount.2 = FriendMaxCount.2 - MyMaxCount.2
    print ("My friend squats more than I do on \(differenceCount.2)")
}
print(differenceCount)




