import cv2



tgt_names =[
    {"L":"0002-latest1.png","R":"0002-old1.png","D":"0002-result1.png"},
    {"L":"0003-latest2.png","R":"0003-old2.png","D":"0003-result2.png"},
    {"L":"0004-latest3.png","R":"0004-old3.png","D":"0004-result3.png"}
]

for tgt_name in tgt_names:
    im_l = cv2.imread(tgt_name["L"])
    im_r = cv2.imread(tgt_name["R"])
    im_res = cv2.hconcat([im_l,im_r])
    cv2.imwrite(tgt_name["D"],im_res)
