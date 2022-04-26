d <- read.csv('demos.csv')
h <- read.csv('health.csv')

##theme code
theme <- theme(
  plot.title = element_text(color="black", size=14, face="bold.italic"),
  axis.title.x = element_text(color="black", size=14, face="bold"),
  axis.title.y = element_text(color="black", size=14, face="bold"))
##end

library("ggpubr")
library(tidyverse)
library(ggpubr)
library(rstatix)

##StrokeAge Effect
ggdensity(d$age_at_stroke.y, fill = "lightgray")
ggqqplot(d$age_at_stroke.y)
shapiro_test(d$age_at_stroke.y)
stroke_age <- qplot(y = residualsROIsLHdamage, x = age_at_stroke.y,
                    data = d) +
  geom_smooth(method = 'lm', fullrange=TRUE) + labs(title = "Age At Stroke Main Effect",
                                                    x = "Age at Stroke", y = "WAB AQ Residuals") + theme
tiff("age_147_updated.tiff", units="in", width=5, height=5, res=300)
stroke_age
dev.off()

##TimePostStroke Effect
ggdensity(d$time_post_stroke.y, fill = "lightgray")
ggqqplot(d$time_post_stroke.y)

#transforming skewed data
d <- d %>%
  mutate(transformed_timepoststroke2 = log(time_post_stroke.y+1))
         
shapiro_test(d$time_post_stroke.y)
tps <- qplot(y = residuals, x = time_post_stroke.y,
             data = dem) +
  geom_smooth(method = 'lm', fullrange=TRUE) + labs(title = "Time Post-Stroke Main Effect",
                                                    x = "Time post-stroke (m)", y = "WAB AQ Residuals") + theme
tiff("tps_147_updated.tiff", units="in", width=5, height=5, res=300)
tps
dev.off()

model <- lm(residuals ~ time_post_stroke.y, data = dem)
par(mfrow = c(2,2))
plot(model)
## WAIS MAIN EFFECT
wais <- qplot(y = residuals, x = WAIS_SCALED,
              data = dem) +
  geom_smooth(method = 'lm', fullrange=TRUE) + labs(title = "WAIS Main Effect",
                                                    x = "WAIS Matrices Score", y = "WAB AQ Residuals") + theme
tiff("wais_99_updated.tiff", units="in", width=5, height=5, res=300)
wais
dev.off()


merged <- merge(d, h, all.x = TRUE, by = "study_id")
colnames(merged)
merged <- merged %>%
  select(c(2, 3, 5, 7, 11, 14))
colnames(merged)
colnames(merged) <- c('SES', 'WAIS score', 'Education (yrs)', 'Stroke age', 'Time post-stroke (m)', 'Fazekas')

library("Hmisc")
res2 <- rcorr(as.matrix(cor_dat2))
res2
summary(res2)

tiff("cor_mat_long_study.tiff", width = 10, height = 8, units = "in", res = 300 )
col<- colorRampPalette(c("darkblue", "white", "darkred"))(10)
corrplot(res2$r, type="upper", order="hclust",
         tl.col="black", tl.srt=45,
         tl.cex = 1.5,#Text label color and rotation
         addCoef.col = "black", diag = FALSE, col = col,
         title = "Correlation Matrix of Demographic and Health Factors",
         mar=c(0,0,3,0), # http://stackoverflow.com/a/14754408/54964
         p.mat = res2$P, sig.level = 0.05, insig = "blank")
dev.off()
