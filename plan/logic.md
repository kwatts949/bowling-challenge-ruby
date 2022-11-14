Frame_number = 0
spare = false
strike = true
score = 0

while frame_number is less than 11

1. Check if previous round was strike
      True - Add sum of frame * 2 to score
2. Check if previous round was spare
      True - Add sum of frame[0] to score
3. Check if this frame is strike
      If true + 10 to score
4. Check if this frame is spare
      If true + 10 to score   
5. Otherwise add sum of frame to score 