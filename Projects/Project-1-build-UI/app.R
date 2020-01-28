library(shiny)

source("Muggle.R")
# First  <- p("First, Quisque porttitor porttitor felis vitae dapibus. Curabitur dignissim quis mi dapibus pulvinar.")
# Second <- p("Second, אם אתה הולך להשתמש במקטעים של של Lorem Ipsum אתה צריך להיות בטוח שאין משהו מביך חבוי בתוך הטקסט. כל מחוללי הטקסט ש")
# Third  <- p("Third, Вже давно відомо, що читабельний зміст буде заважати зосередитись людині, яка оцінює композицію сторінки.")
# Fourth <- p("Fourth,هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام")
# Fifth  <- p("Fifth, 如今互联网提供各种各样版本的Lorem Ipsum段落，但是大多数都多多少少出于刻意幽默或者其他随机插入的荒谬单词而被篡改过了。")


#source("UI_starting.R") # defines ui  <-
source("UI_fluid_page.R", local = TRUE) # defines ui  <-


server <- function(input, output, session) {
  source("Knight_bus.R", local = TRUE)
}

shinyApp(UI, server)


