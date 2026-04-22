main :: IO ()
main = putStrLn myHtml

-- HTML printing

el :: String -> String -> String
el tag content =
  "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

--  Tags (document)

html_ :: String -> String
html_ = el "html"

head_ :: String -> String
head_ = el "head"

title_ :: String -> String
title_ = el "title"

body_ :: String -> String
body_ = el "body"

-- Tags (content)

p_ :: String -> String
p_ = el "p"

h1_ :: String -> String
h1_ = el "h1"

-- makeHtml
makeHtml :: String -> String -> String
makeHtml titleContent bodyContent =
  "<!DOCTYPE html>"
    <> html_
      ( head_
          (title_ titleContent)
      )
    <> body_ bodyContent

myHtml :: String
myHtml =
  makeHtml
    "My page title"
    ( h1_ "My page content"
        <> p_ "My first paragraph"
    )
