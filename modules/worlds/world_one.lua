WorldOne = Class{
    init = function(self, handler)
        self.handler = handler
    end;

    update = function(self, deltaTime)
        --
    end;

    draw = function(self)
        love.graphics.print("World One!!")
    end;
}
