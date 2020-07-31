import Foundation

/*
 * Условие:
 * * Требуется найти в бинарном векторе самую длинную последовательность единиц и вывести её длину.
 * * Желательно получить решение, работающее за линейное время и при этом проходящее по входному массиву только один раз.
 *
 * Ограничения:
 * * По времени: 1 секунда
 * * По памяти: 64Mb
 *
 * Форматы:
 * * Ввода: Первая строка входного файла содержит одно число n, n ≤ 10000. Каждая из следующих n строк содержит ровно одно число — очередной элемент массива.
 * * Вывода: Выходной файл должен содержать единственное число — длину самой длинной последовательности единиц во входном массиве.
 * * Например:
 * * * Input:
 * * * * 5
 * * * * 1
 * * * * 0
 * * * * 1
 * * * * 0
 * * * * 1
 * * * Output:
 * * * * 1
 */

let n = Int(readLine()!)!

var maxLength = 0
var currentLength = 0

for _ in 0..<n {
  let value = Int(readLine()!)!
  if value == 1 {
    currentLength += 1
    if currentLength > maxLength {
      maxLength = currentLength
    }
  }
  else if value == 0 {
    if currentLength > maxLength {
      maxLength = currentLength
    }
    currentLength = 0
  }
}

print(maxLength)
