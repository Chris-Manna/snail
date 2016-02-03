def snail(g_arr)
  
  sideV = g_arr.length - 1
  sideH = g_arr[0].length - 1
  return g_arr[0] if sideH < 2
  return g_arr if sideV < 2
  return [] if g_arr.empty?
  
  arr = []
  i = 0
  
  until (arr.length >= g_arr.length)
    
    i.upto(sideH - i - 1) {|itr| arr << g_arr[i][itr] } # up horizontal 
    i.upto(sideV - i - 1) {|itr| arr << g_arr[itr][sideH - i] } # up vertical
    (sideH - i).downto(i + 1) {|itr| arr << g_arr[sideV - i][itr] } # down horizontal
    (sideV - i).downto(i + 1) {|itr| arr << g_arr[itr][i] } # down vertical
  end

  return arr;
end
