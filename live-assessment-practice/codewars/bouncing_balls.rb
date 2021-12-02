=begin

A child is playing with a ball on the nth floor of a tall building. The height of this floor, drop_height, is known.

He drops the ball out of the window. The ball bounces (for example), to two-thirds of its height (a bounce of 0.66).

His mother looks out of a window 1.5 meters from the ground.

How many times will the mother see the ball pass in front of her window (including when it's falling and bouncing?
Three conditions must be met for a valid experiment:

    Float parameter "drop_height" in meters must be greater than 0
    Float parameter "bounce" must be greater than 0 and less than 1
    Float parameter "window" must be less than h.

If all three conditions above are fulfilled, return a positive integer, otherwise return -1.

Note:
The ball can only be seen if the height of the rebounding ball is strictly greater than the window parameter.

Examples:

- h = 3, bounce = 0.66, window = 1.5, result is 3

- h = 3, bounce = 1, window = 1.5, result is -1 

(Condition 2) not fulfilled).

Input: The three float parameters described above: drop_height, bounce and window
Output: -1 if any of the three params are not valid, or an integer, the number
of times it will pass by the window at window height

Mental Model:
  - The ball will fall from drop_height
  - It will pass in front of the window on its way to the ground
    - Needs variable times_seen, increment that
  - It will bounce up a distance of drop_height / bounce
    - Update drop_height to that
    - if drop_height > window_height, increment times_seen and start loop over
    - else return times_seen

Algorithm:
  - Init bounce_height = 0
  - Init times_seen = 0
  - loop
    - increment times seen
    - set bounce_height = the drop height / bounce
    - if bounce_height > window_height
      - increment times_seen
      - set drop_height to bounce_height
      - loop again
    - else
      return times_seen

    Copied to set up input validation conditional:
    Float parameter "drop_height" in meters must be greater than 0
    Float parameter "bounce" must be greater than 0 and less than 1
    Float parameter "window" must be less than h.


=end

def bouncing_ball(drop_height, bounce, window_height)
  return -1 if drop_height.negative? || !(0...1).include?(bounce) || window_height > drop_height

  bounce_height = drop_height
  times_seen = 0

  until bounce_height <= window_height
    times_seen += 1
    bounce_height = (drop_height * bounce)

    if bounce_height > window_height
      times_seen += 1
      drop_height = bounce_height
    end

  end

  times_seen
end

p bouncing_ball(2, 1, 1) == -1
p bouncing_ball(1, 0.5, 2) == -1
p bouncing_ball(-1, 0.5, -2) == -1
p bouncing_ball(3, 0.66, 1.5) == 3
p bouncing_ball(2, 0.5, 1) == 1
