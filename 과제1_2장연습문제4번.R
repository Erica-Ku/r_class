Data2 <- c("2017-02-05 수입3000원",
           "2017-02-06 수입4500원",
           "2017-02-07 수입2500원")
library(stringr)

# 조건1. 일자별 수입을 다음과 같이 출력하시오.
str_sub(Data2, 14, )

# 조건2. 위 벡터에서 연속하여 2개 이상 나오는 모든 숫자를 제거하시오.
str_remove_all(Data2, "[0-9]{2}")

# 조건3. 위 벡터에서 -를 /로 치환하시오.
str_replace_all(Data2, "-", "/")

# 조건4. 모든 원소를 쉼표에 의해서 하나의 문자열로 합치시오.
# paste() 함수 이용
paste(Data2, collapse = ",")