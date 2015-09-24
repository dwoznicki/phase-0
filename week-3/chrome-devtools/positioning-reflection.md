<!DOCTYPE html>
<meta charset="UTF-8">
<html>
<head>
  <title>3.4 Chrome Dev Tools</title>
</head>
<body>
  <h1>Screenshots</h1>
  <section>
    !["screenshot1"](imgs/challenge1.png)
    !["screenshot2"](imgs/challenge2.png)
    !["screenshot3"](imgs/challenge3.png)
    !["screenshot4"](imgs/challenge4.png)
    !["screenshot5"](imgs/challenge5.png)
    !["screenshot6"](imgs/challenge6.png)
    !["screenshot7"](imgs/challenge7.png)
    !["screenshot8"](imgs/challenge8.png)
    !["screenshot9"](imgs/challenge9.png)
  </section>
  <h2>How can you use Chrome's DevTools inspector to help you format or position elements?</h2>
    <p>
      Chrome DevTools inspector element turned out to be extremely useful for quickly making edits to the styling of a page and immediately seeing how they look. Otherwise, you'd have to switch back and forth between the CSS document and the web page you're trying to edit. This can be cumbersome and time consuming, especially when working with positioning, which is a lot of trial and error.
    </p>
  <h2>How can you resize elements on the DOM using CSS?</h2>
    <p>
      You can resize elements on the DOM by manually entering their height and width (ie, height: 50px;). If your element is text, and not a box, you can also use the text-size: property to change the size. To choose which element to affect, best practice is to give the element a class name that corresponds with what it should be, though it's also fine to give it an id name as well. Then, you can format your class or id using the attribute (.classname/#idname { height: 50px; }, for example). You can position an element by px (pixels), em (text size), or % (percent).
    </p>
  <h2>What are the differences between Absolute, Fixed, Static, and Relative positioning? Which did you find easiest to use? Which was most difficult?</h2>
    <p>
      <strong>Absolute</strong> positioning removes the element from the HTML flow and sticks it wherever you tell it to go. What that means is that an abolutely positioned element can overlap other elements because it will always stay at its position on the page. Even if the screen is resized, the element will stay in place.
    </p>
    <p>
      <strong>Fixed</strong> positioning is similar to absolute in that you tell an element where to go on the screen, and it will be fixed there. The difference is that a fixed element will stay at it's position when the user scrolls through the page. It's fixed in place, so no matter where the user navigates to on that page, it will stay in place. This makes it useful for navigation bars, as long as they're not too intrusive.
    </p>
    <p>
      <strong>Static</strong> positioning is the default positioning for an element. Anything without a define position: is treated as static. Static elements are completely in the flow of the HTML. That means that static elements will stack on top of each other, like building blocks. For example, this page is all static. The top elements (the first question, the answer) show up at the top of the page, while later elements appear lower.
    </p>
    <p>
      <strong>Relative</strong> positioning is like static positioning with a twist. If left alone, relative elements stack from earliest to latest, just like static elements. However, unlike static elements, you can affect the position of relative elements by giving them properties. For example, a relative element with a property of left: 100px; would show up 100 pixels to the left of where it normally would in the HTML flow.
    </p>
    <p>
      I personally found fixed and static positioning easy to understand and use. Static is just the normal flow of an HTML document, and fixed is very specific in what it does. On the other hand, relative and absolute positioning were difficult to grasp. They're very similar, and while I understand the difference between them, I had difficult visualising how they would affect the objects before actually applying them.
    </p>
  <h2>What are the differences between Margin, Border, and Padding?</h2>
    <p>
      <strong>Margin</strong> is the space between different elements. It's blank space used to keep the page from feeling cluttered.
      <strong>Border</strong> is essentially the edge of an element. You can give it a pixel value and it will display where the element ends.
      <strong>Padding</strong> is the space between the element and its border. You can use padding to increase the overall space an element takes up without distorting the size of the element itself. Padding is useful when making buttons since you want the button to be bigger than the text inside it.
    </p>
  <h2>What was your impression of this challenge overall? (love, hate, and why?)
    <p>
      I neither loved nor hated this challenge. CSS can be very finicky, and there were several instances where it was quite difficult for us to figure out why a box wasn't behaving as expected. It could be at best befuddling, and at worst rather frustrating. But I always enjoyed that moment when we got things working. There are a lot of options to play around with in CSS, so one thing I liked is that I never felt like we had exhausted all available courses of action. It always seemed that there was something we could fiddle with.
    </p>
  </h2>
</body>
</html>