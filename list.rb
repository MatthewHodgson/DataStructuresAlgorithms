class Node
    attr_accessor :data
    attr_accessor :next

    def initialize(data, next_node=nil)
        @data = data
        @next = next_node
    end
end

class List
    include Enumerable

    attr_accessor :head

    def insert(data)
        @head = Node.new(data, head)
    end

    def insert_sorted(data)
        if(!@head || data < @head.data)
            return self.insert(data)
        end
        current = @head
        while(current.next && current.next.data < data)
            current = current.next
        end
        current.next = Node.new(data,current.next)
    end

    def each()
        item = @head
        while(item)
            yield item
            item = item.next
        end
    end

    def find_value(value)
        return find() do |item|
            item.data == value
        end
    end
end