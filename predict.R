sq_x = c(130, 140, 150, 160, 170, 180, 190, 195, 197)
sq_x1 = ...
sq_y = c(0.75, 0.7, 0.62, 0.54, 0.5, 0.48, 0.41, 0.34, 0.32)
sq_y1 = ...
# later on fill with sq_y1, sq_y2 ... for subsequent days, don't
# forget corresponding sq_x1 and so on
df = data.frame(sq_x, sq_y)
true_fit = lm(sq_x ~ poly(sq_y, 2, raw = TRUE), data = df)
# test new ones
sq_x1 = c(135, 145, 155)
sq_y1 = c(0.75, 0.7, 0.62)
new_df = data.frame(sq_x1, sq_x2)
predict(true_fit, new_df)
