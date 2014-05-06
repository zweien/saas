=begin
定义一个类BookInStock，它表示一本书，这本书拥有ISBN编号isbn和一个用浮点数表示的价格price作为属性。构造函数应该接受ISBN号码（一个字符串）作为第一个参数，价格作为第二个参数，并且当这个ISBN号码是空字符串或者当价格小于等于0时触发ArgumentError（一个Ruby内置的异常类型）。

你要为这些属性编写恰当的getter和setter。编写一个方法price_as_string，它返回开头带有美元号、结尾带有一些0的这本书的价格，也就是说，价格20应该显示为"$20.00"，价格33.8应该显示为"$33.80"。

请把以上三个方法放在同一个文件中，并使用下面的方式上传。
=end
class BookInStock
    attr_accessor :isbn, :price
    def initialize(isbn, price)
        raise ArgumentError if isbn.empty? or price<= 0
        @isbn, @price = isbn, price
    end
    
    def price_as_string
        "$%#.2f" % @price
    end
end

# a = BookInStock.new('ss',234.5665)
# p a.price_as_string