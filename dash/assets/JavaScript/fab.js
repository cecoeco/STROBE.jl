/**
 * Adds a click event listener to the floating action button and performs actions when clicked.
 */
function addFloatingActionButtonClickListener() {
  // Get the floating action button element from the DOM
  const floatingActionButton = document.getElementById("fab");

  // Check if the floating action button exists
  if (floatingActionButton !== null) {
    // Add a click event listener to the floating action button
    floatingActionButton.addEventListener("click", () => {
      // Define the URL of the GitHub repository
      const githubRepoUrl: string = "https://github.com/cecoeco/STROBE.jl";

      // Open the GitHub repository in a new tab
      window.open(githubRepoUrl, "_blank");

      // Define the URL for liking the repository using GitHub's API
      const likeUrl: string =
        "https://api.github.com/user/starred/cecoeco/STROBE.jl";

      // Make an authenticated request to like the repository
      fetch(likeUrl, {
        method: "PUT",
        headers: {
          Authorization: `Bearer YOUR_GITHUB_ACCESS_TOKEN`,
          Accept: "application/vnd.github.v3+json",
        },
      })
        .then((response: Response) => {
          // Check if the request was successful
          if (response.ok) {
            console.log("Repository liked!");
            // Add any additional logic here after the repository is liked
          } else {
            console.log("Failed to like the repository.");
            // Handle the failure scenario here
          }
        })
        .catch((error: Error) => {
          console.log("An error occurred:", error);
          // Handle the error scenario here
        });
    });
  }
}

// Call the function to add the click event listener to the floating action button
addFloatingActionButtonClickListener();
