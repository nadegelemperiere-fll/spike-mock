# -------------------------------------------------------
# Copyright (c) [2022] Nadege LEMPERIERE
# All rights reserved
# -------------------------------------------------------
""" Hub button mock API """
# -------------------------------------------------------
# Nadège LEMPERIERE, @04 november 2022
# Latest revision: 04 november 2022
# -------------------------------------------------------

class App() :
    """ App mocking class.

        Class is accessed simultaneously by the user side thread and the
        ground truth update thread. It is therefore protected by a mutex
    """

    s_names = {
        "Alert", "Applause 1", "Applause 2", "Applause 3", "Baa", "Bang 1", "Bang 2",
        "Basketball Bounce", "Big Boing", "Bird", "Bite", "Boat Horn 1", "Boat Horn 2",
        "Bonk", "Boom Cloud", "Boop Bing Bop", "Bowling Strike", "Burp 1", "Burp 2", "Burp 3",
        "Car Accelerate 1", "Car Accelerating 2", "Car Horn", "Car Idle", "Car Reverse",
        "Car Skid 1", "Car Skid 2", "Car Vroom", "Cat Angry", "Cat Happy", "Cat Hiss",
        "Cat Meow 1", "Cat Meow 2", "Cat Meow 3", "Cat Purring", "Cat Whining", "Chatter",
        "Chirp", "Clang", "Clock Ticking", "Clown Honk 1", "Clown Honk 2", "Clown Honk 3",
        "Coin", "Collect", "Connect", "Crank", "Crazy Laugh", "Croak", "Crowd Gasp", "Crunch",
        "Cuckoo", "Cymbal Crash", "Disconnect", "Dog Bark 1", "Dog Bark 2", "Dog Bark 3",
        "Dog Whining 1", "Dog Whining 2", "Doorbell 1", "Doorbell 2", "Doorbell 3", "Door Closing",
        "Door Creek 1", "Door Creek 2", "Door Handle", "Door Knock", "Door Slam 1", "Door Slam 2",
        "Drum Roll", "Dun Dun Dunnn", "Emotional Piano", "Fart 1", "Fart 2", "Fart 3", "Footsteps",
        "Gallop", "Glass Breaking", "Glug", "Goal Cheer", "Gong", "Growl", "Grunt", "Hammer Hit",
        "Head Shake", "High Whoosh", "Jump", "Jungle Frogs", "Laser 1", "Laser 2", "Laser 3",
        "Laughing Baby 1", "Laughing Baby 2", "Laughing Boy", "Laughing Crowd 1",
        "Laughing Crowd 2", "Laughing Girl", "Laughing Male", "Lose", "Low Boing", "Low Squeak",
        "Low Whoosh", "Magic Spell", "Male Jump 1", "Male Jump 2", "Moo", "Ocean Wave", "Oops",
        "Orchestra Tuning", "Party Blower", "Pew", "Ping Pong Hit", "Plane Flying By",
        "Plane Motor Running", "Plane Starting", "Pluck", "Police Siren 1", "Police Siren 2",
        "Police Siren 3", "Punch", "Rain", "Ricochet", "Rimshot", "Ring Tone", "Rip", "Robot 1",
        "Robot 2", "Robot 3", "Rocket Explosion Rumble", "Rooster", "Scrambling Feet", "Screech",
        "Seagulls", "Service Announcement", "Sewing Machine", "Ship Bell", "Siren Whistle", "Skid",
        "Slide Whistle 1", "Slide Whistle 2", "Sneaker Squeak", "Snoring", "Snort",
        "Space Ambience", "Space Flyby", "Space Noise", "Splash", "Sport Whistle 1",
        "Sport Whistle 2", "Squeaky Toy", "Squish Pop", "Suction Cup", "Tada", "Telephone Ring 2",
        "Telephone Ring", "Teleport 2", "Teleport 3", "Teleport", "Tennis Hit", "Thunder Storm",
        "Toliet Flush", "Toy Honk", "Toy Zing", "Traffic", "Train Breaks", "Train Horn 1",
        "Train Horn 2", "Train Horn 3", "Train On Tracks", "Train Signal 1", "Train Signal 2",
        "Train Start", "Train Whistle", "Triumph", "Tropical Birds", "Wand", "Water Drop",
        "Whistle Thump", "Whiz 1", "Whiz 2", "Window Breaks", "Win", "Wobble", "Wood Tap", "Zip"
    }

####################################### SPIKE API METHODS ########################################

    def __init__(self) :
        """ Contructor """

    def play_sound(self, name, volume=100) :
        """
        Plays a sound from the device (i.e., tablet or computer).

        The program will not continue until the sound has finished playing.

        If a sound with the specified name isn’t found, nothing will happen.

        :param name: The name of the sound to play.
        :type name: string
        :param volume: The volume at which the sound will be played.
        :type volume: integer [0,100]

        :raises TypeError: name is not a string or volume is not an integer.
        :raises ValueError: name is not one of the allowed values
        """

        if not isinstance(volume, int):
            raise TypeError('volume is not an integer')
        if not isinstance(name, str) :
            raise TypeError('name is not a string')


    def start_sound(self, name, volume=100) :
        """
        Starts playing a sound from your device (i.e., tablet or computer).

        The program will not wait for the sound to finish playing before proceeding to the next
        command.

        If a sound with the specified name isn’t found, nothing will happen.

        :param name: The name of the sound to play.
        :type name: string
        :param volume: The volume at which the sound will be played.
        :type volume: integer [0,100]

        :raises TypeError: name is not a string or volume is not an integer.
        :raises ValueError: name is not one of the allowed values
        """
        if not isinstance(volume, int):
            raise TypeError('volume is not an integer')
        if not isinstance(name, str) :
            raise TypeError('name is not a string')