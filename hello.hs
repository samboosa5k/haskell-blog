main :: IO ()
main = putStrLn myHtml

html_ :: String -> String
html_ content = "<!DOCTYPE html><html>" <> content <> "</html>"

head_ :: String -> String
head_ content = "<head>" <> content <> "</head>"

title_ :: String -> String
title_ content = "<title>" <> content <> "</title>"

body_ :: String -> String
body_ content = "<body>" <> content <> "</body>"

-- makeHtml
makeHtml :: String -> String -> String
makeHtml titleContent bodyContent =
  html_
    ( head_
        (title_ titleContent)
        <> body_ bodyContent
    )

myHtml :: String
myHtml = makeHtml "My page title" "My page content"