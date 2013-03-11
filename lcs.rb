#Find the longest common subsequence of two string
a = "arun"
b = "kumar"

def lcs(a, b)
    return "" if a.empty? || b.empty?
 
    x, xs, y, ys = a[0..0], a[1..-1], b[0..0], b[1..-1]
    if x == y
        x + lcs(xs, ys)
    else
        [lcs(a, ys), lcs(xs, b)].max_by {|x| x.size}
    end
end
p lcs(a,b)
