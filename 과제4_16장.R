setwd("C:/Rwork/Part-IV")
library(arules)

# 데이터 가져오기
csv <- read.csv("transaction_data.csv")

# 결측치 제거
df <- data.frame(csv)
df <- df[df$"UserId" != -1, ]

# 트랜잭션 객체 생성
tran <- as(df, "transactions")
str(tran)
tran
inspect(tran) # 데이터 확인

# 요약통계량
summary(tran)

# 규칙 발견
rule <- apriori(tran, parameter = list(supp=0.2, conf=0.3))

# 상위 6개 규칙 보기
inspect(head(rule))

# lift(향상도) 기준 내림차순 정렬 상위 6개 출력
inspect(head(sort(rule, by="lift")))

# 발견된 규칙 시각화
library(arulesViz)
plot(rule, method = "graph", engine = "htmlwidget")