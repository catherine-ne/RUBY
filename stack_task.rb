def function(str)
  chars = str.split('')
  return chars
end

stack = []
open = ['{', '(', '[']
close = ['}', ')', ']']
closeIndex = 0
openIndex = 0
user = gets
len = function(user)

(0...len).each { |i|
  openIndex = open.indexOf(chars[i])
  if (openIndex != -1)
    stack.push(openIndex)
    next
  end
}

  closeIndex = close.indexOf(chars[i])
  if (closeIndex != -1)
    openIndex = stack.pop()
    end
  if (closeIndex != openIndex)
    return false
    end


    if (stack.length != 0)
      return false
    end

  return true
