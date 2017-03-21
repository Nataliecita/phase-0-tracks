var newHeading = document.createElement('h1');

var newParagraph = document.createElement('p');

var h1Text = document.createTextNode("This is the best header ever");

var paraText = document.createTextNode("We both love pizza");

newHeading.appendChild(h1Text);
newParagraph.appendChild(paraText);

var paragraphs = document.getElementsByTagName('p');

var firstParagraph = paragraphs[0];

var body = document.getElementsByTagName('body');

body[0].insertBefore(newHeading, firstParagraph);

body[0].insertBefore(newParagraph, firstParagraph);