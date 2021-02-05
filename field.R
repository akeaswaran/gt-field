## Bobby Dodd Stadium ggplot image
## Created by Akshay Easwaran <akeaswaran@me.com>
## Date: 04-Feb-2021
## Based on code from https://github.com/TheCoachEdwards/Custom-Football-Field
## Note: It's not perfect (blocky border on end zone logos) and JPEG-y onfield logos, but it works.


#####Read in libraries#####
library(magick)
library(ggplot2)

#####Read in Midfield Logo Image#####
midfield_logo <- image_read('gt_midfield_logo.png')

left_ez <- image_read('gt_word_white_border.png')
left_ez <- image_rotate(left_ez, -90)

right_ez <- image_read('gt_word_gold_border.png')
right_ez <- image_rotate(right_ez, 90)

acc_logo <- image_read('acc-logo.png')
atl_logo <- image_read('atl-logo.png')

#####Create Football Field#####
football_field <- ggplot()+
    geom_rect(aes(xmin = -4, xmax = 124, ymin = -4, ymax = 57.33), fill = "#669933", colour = "#FFFFFF", size = .5) + ##These First few geom-rect's set up the field space
    geom_rect(aes(xmin = 0, xmax = 120, ymin = 0, ymax = 53.33), fill = "#669933", colour = "#FFFFFF", size = .5) +
    geom_rect(aes(xmin = 35, xmax = 85, ymin = -2, ymax = 0), fill = "#FFFFFF", colour = "#FFFFFF") + ##These next few set up the boxes around the field
    geom_rect(aes(xmin = 35, xmax = 85, ymin = 53.33, ymax = 55.33), fill = "#FFFFFF", colour = "#FFFFFF") +

    geom_rect(aes(xmin = -2, xmax = 35, ymin = -2, ymax = 0), fill = "#003057") +
    geom_rect(aes(xmin = -2, xmax = 0, ymin = -2, ymax = 55.33), fill = "#003057") +
    geom_rect(aes(xmin = -2, xmax = 35, ymin = 53.33, ymax = 55.33), fill = "#003057") +

    geom_rect(aes(xmin = 120, xmax = 122, ymin = -2, ymax = 55.33), fill = "#B3A369") +
    geom_rect(aes(xmin = 85, xmax = 122, ymin = -2, ymax = 0), fill = "#B3A369") +
    geom_rect(aes(xmin = 85, xmax = 122, ymin = 53.33, ymax = 55.33), fill = "#B3A369") +
    geom_rect(aes(xmin = 0, xmax = 10, ymin = 0, ymax = 53.33), fill = "#B3A369", colour = "#FFFFFF") + ##These two are the end-zones and colors
    geom_rect(aes(xmin = 110, xmax = 120, ymin = 0, ymax = 53.33), fill = "#003057", colour = "#FFFFFF") +
    geom_segment(aes(x = 10, xend = 10, y = 0, yend = 53.33), colour = "#FFFFFF") + ##These are the yardmarkers
    geom_segment(aes(x = 15, xend = 15, y = 0, yend = 53.33), colour = "#FFFFFF") +

    geom_segment(aes(x = 20, xend = 20, y = 0, yend = 53.33), colour = "#FFFFFF") +
    geom_segment(aes(x = 25, xend = 25, y = 0, yend = 53.33), colour = "#FFFFFF") +
    geom_segment(aes(x = 30, xend = 30, y = 0, yend = 53.33), colour = "#FFFFFF") +
    geom_segment(aes(x = 35, xend = 35, y = 0, yend = 53.33), colour = "#FFFFFF") +
    geom_segment(aes(x = 40, xend = 40, y = 0, yend = 53.33), colour = "#FFFFFF") +
    geom_segment(aes(x = 45, xend = 45, y = 0, yend = 53.33), colour = "#FFFFFF") +
    geom_segment(aes(x = 50, xend = 50, y = 0, yend = 53.33), colour = "#FFFFFF") +
    geom_segment(aes(x = 55, xend = 55, y = 0, yend = 53.33), colour = "#FFFFFF") +
    geom_segment(aes(x = 60, xend = 60, y = 0, yend = 53.33), colour = "#FFFFFF") +
    geom_segment(aes(x = 65, xend = 65, y = 0, yend = 53.33), colour = "#FFFFFF") +
    geom_segment(aes(x = 70, xend = 70, y = 0, yend = 53.33), colour = "#FFFFFF") +
    geom_segment(aes(x = 75, xend = 75, y = 0, yend = 53.33), colour = "#FFFFFF") +
    geom_segment(aes(x = 80, xend = 80, y = 0, yend = 53.33), colour = "#FFFFFF") +
    geom_segment(aes(x = 85, xend = 85, y = 0, yend = 53.33), colour = "#FFFFFF") +

    geom_segment(aes(x = 90, xend = 90, y = 0, yend = 53.33), colour = "#FFFFFF") +
    geom_segment(aes(x = 95, xend = 95, y = 0, yend = 53.33), colour = "#FFFFFF") +
    geom_segment(aes(x = 100, xend = 100, y = 0, yend = 53.33), colour = "#FFFFFF") +
    geom_segment(aes(x = 105, xend = 105, y = 0, yend = 53.33), colour = "#FFFFFF") +
    geom_segment(aes(x = 110, xend = 110, y = 0, yend = 53.33), colour = "#FFFFFF") +
    geom_segment(aes(x = 122, xend = 122, y = -2, yend = 55.33), colour = "#FFFFFF") +
    geom_segment(aes(x = -2, xend = -2, y = -2, yend = 55.33), colour = "#FFFFFF") +
    geom_segment(aes(x = -2, xend = 122, y = -2, yend = -2), colour = "#FFFFFF") +
    geom_segment(aes(x = -2, xend = 122, y = 55.33, yend = 55.33), colour = "#FFFFFF") +
    geom_segment(aes(x = 10, xend = 110, y = 20, yend = 20), colour = "#FFFFFF", linetype = "dashed") + ##These are the hashes
    geom_segment(aes(x = 10, xend = 110, y = 33.33, yend = 33.33), colour = "#FFFFFF", linetype = "dashed") +
    geom_segment(aes(x = 10, xend = 110, y = .5, yend = .5), colour = "#FFFFFF", linetype = "dashed") +
    geom_segment(aes(x = 10, xend = 110, y = 52.83, yend = 52.83), colour = "#FFFFFF", linetype = "dashed") +
    geom_segment(aes(x = 0, xend = 0, y=23.57, yend = 29.77), colour = "yellow", size = 1.3) + ## The next two lines are the FG Posts
    geom_segment(aes(x = 120, xend = 120, y = 23.57, yend = 29.77), colour = "yellow", size = 1.3) +
    annotate(geom ="text", x = 20.5, y = 7.5, label = "1 0", colour = "#FFFFFF", family = "NCAA Cal Golden Bears", fontface = 1, size = 8) + ##Put in the numbers for the yard lines
    annotate(geom ="text", x = 30, y = 7.5, label = "2 0", colour = "#FFFFFF", family = "NCAA Cal Golden Bears", fontface = 1, size = 8) +
    annotate(geom ="text", x = 40, y = 7.5, label = "3 0", colour = "#FFFFFF", family = "NCAA Cal Golden Bears", fontface = 1, size = 8) +
    annotate(geom ="text", x = 50, y = 7.5, label = "4 0", colour = "#FFFFFF", family = "NCAA Cal Golden Bears", fontface = 1, size = 8) +
    annotate(geom ="text", x = 60, y = 7.5, label = "5 0", colour = "#FFFFFF", family = "NCAA Cal Golden Bears", fontface = 1, size = 8) +
    annotate(geom ="text", x = 70, y = 7.5, label = "4 0", colour = "#FFFFFF", family = "NCAA Cal Golden Bears", fontface = 1, size = 8) +
    annotate(geom ="text", x = 80, y = 7.5, label = "3 0", colour = "#FFFFFF", family = "NCAA Cal Golden Bears", fontface = 1, size = 8) +
    annotate(geom ="text", x = 90, y = 7.5, label = "2 0", colour = "#FFFFFF", family = "NCAA Cal Golden Bears", fontface = 1, size = 8) +
    annotate(geom ="text", x = 100.2, y = 7.5, label = "1 0", colour = "#FFFFFF", family = "NCAA Cal Golden Bears", fontface = 1, size = 8) +
    annotate(geom ="text", x = 19.8, y = 45.83, label = "1 0", colour = "#FFFFFF", family = "NCAA Cal Golden Bears", fontface = 1, angle = 180, size = 8) + ## Put the numbers on the other side, angle is flipped so the numbers are upside down
    annotate(geom ="text", x = 30, y = 45.83, label = "2 0", colour = "#FFFFFF", family = "NCAA Cal Golden Bears", fontface = 1, angle = 180, size = 8) +
    annotate(geom ="text", x = 40, y = 45.83, label = "3 0", colour = "#FFFFFF", family = "NCAA Cal Golden Bears", fontface = 1, angle = 180, size = 8) +
    annotate(geom ="text", x = 50, y = 45.83, label = "4 0", colour = "#FFFFFF", family = "NCAA Cal Golden Bears", fontface = 1, angle = 180, size = 8) +
    annotate(geom ="text", x = 60, y = 45.83, label = "5 0", colour = "#FFFFFF", family = "NCAA Cal Golden Bears", fontface = 1, angle = 180, size = 8) +
    annotate(geom ="text", x = 70, y = 45.83, label = "4 0", colour = "#FFFFFF", family = "NCAA Cal Golden Bears", fontface = 1, angle = 180, size = 8) +
    annotate(geom ="text", x = 80, y = 45.83, label = "3 0", colour = "#FFFFFF", family = "NCAA Cal Golden Bears", fontface = 1, angle = 180, size = 8) +
    annotate(geom ="text", x = 90, y = 45.83, label = "2 0", colour = "#FFFFFF", family = "NCAA Cal Golden Bears", fontface = 1, angle = 180, size = 8) +
    annotate(geom ="text", x = 99.8, y = 45.83, label = "1 0", colour = "#FFFFFF", family = "NCAA Cal Golden Bears", fontface = 1, angle = 180, size = 8) +
    annotation_raster(midfield_logo, ymin = 18, ymax = 35.5, xmin = 50, xmax = 70) +  ##This is where you add the Midfield Logo
    annotation_raster(left_ez, xmin = 0, xmax = 10, ymin = 0, ymax = 53.33) +
    annotation_raster(right_ez, xmin = 110, xmax = 120, ymin = 0, ymax = 53.33) +

    annotation_raster(atl_logo, xmin = 80, xmax = 90, ymin = 10.5, ymax = 14.5) +
    annotation_raster(acc_logo, xmin = 30, xmax = 40, ymin = 11, ymax = 14) +

    annotation_raster(atl_logo, xmin = 30, xmax = 40, ymin = 37.83, ymax = 41.83) +
    annotation_raster(acc_logo, xmin = 80, xmax = 90, ymin = 38, ymax = 41) +

    geom_segment(aes(x = 13, xend = 13, y = 26, yend = 27.33), colour = "#FFFFFF") + ##Add the extra pt conversion mark
    geom_segment(aes(x = 107, xend = 107, y = 26, yend = 27.33), colour = "#FFFFFF") +
    theme(rect = element_blank(), ##This removes all of the exterior lines from a typical ggplot
          line = element_blank(),
          text = element_blank()) +
    ggsave("GT Football Field.png", width = 12, height = 5.5)

football_field
