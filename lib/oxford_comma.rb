def oxford_comma(array)

  new_arr = array.collect {|el|

      if array.length == 1 || array.index(el) == array.length-1
        el = el
      elsif array.index(el) == array.length - 2
        array.length != 2 ? el += ", and " : el += " and "
      else
        el += ", "
      end
  }

  new_arr.join

end

# refactoring code above

def oxford_comma_simple(array)
  if array.length == 1
    array.join
  elsif array.length == 2
    array[0] << " and "
    array.join
  elsif array.length > 2
    array[-1] = "and "
    array.join(", ")
  end
  
end
