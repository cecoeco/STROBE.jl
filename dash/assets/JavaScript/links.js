/**
 * Sets the target attribute of all anchor elements on the page to "_blank",
 * causing them to open in a new tab when clicked.
 *
 * @param {none}
 * @return {void}
 */
export const openLinksInNewTab = () => {
  const anchors = document.querySelectorAll('a');

  anchors.forEach(anchor => {
    anchor.target = '_blank';
  });
};