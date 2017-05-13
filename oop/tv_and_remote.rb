# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Remote
    attr_accessor :power, :volume, :channel, :tv
    def initialize
        @tv = tv
    end

    def toggle_power
        if @power == "on"
            @power = "off"
        else @power = "on"
        end
    end

    def increment_volume
        @volume += 1
    end

    def decrement_volume
        @volume -= 1
    end

    def set_channel(channel)
        @channel = channel
    end
end


class TV < Remote
    attr_accessor :power, :volume, :channel

    def initialize(input)
        @power = input[:power]
        @volume = input[:volume]
        @channel =input[:channel]
    end
end



tv = TV.new({
                power: "on",
                volume: 5,
                channel: 7
            })

tv.toggle_power
p tv

tv.increment_volume
p tv

tv.decrement_volume
p tv

tv.set_channel(12)
p tv
