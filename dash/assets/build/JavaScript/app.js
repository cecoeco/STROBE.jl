"use strict";
/**
 * Displays an alert with a custom message.
 *
 * @returns void
 */
define("alert", ["require", "exports"], function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.alert = void 0;
    // Define the alert function
    function alert() {
        // Define the message to be displayed in the alert
        const message = 'If you see this alert, then your custom JavaScript script has run!';
        // Display the alert with the message
        window.alert(message);
    }
    exports.alert = alert;
    alert();
});
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
            const githubRepoUrl = "https://github.com/cecoeco/STROBE.jl";
            // Open the GitHub repository in a new tab
            window.open(githubRepoUrl, "_blank");
            // Define the URL for liking the repository using GitHub's API
            const likeUrl = "https://api.github.com/user/starred/cecoeco/STROBE.jl";
            // Make an authenticated request to like the repository
            fetch(likeUrl, {
                method: "PUT",
                headers: {
                    Authorization: `Bearer YOUR_GITHUB_ACCESS_TOKEN`,
                    Accept: "application/vnd.github.v3+json",
                },
            })
                .then((response) => {
                // Check if the request was successful
                if (response.ok) {
                    console.log("Repository liked!");
                    // Add any additional logic here after the repository is liked
                }
                else {
                    console.log("Failed to like the repository.");
                    // Handle the failure scenario here
                }
            })
                .catch((error) => {
                console.log("An error occurred:", error);
                // Handle the error scenario here
            });
        });
    }
}
// Call the function to add the click event listener to the floating action button
addFloatingActionButtonClickListener();
/** @file Google Analytics tag. */
define("gtag", ["require", "exports"], function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.event = exports.gtag = void 0;
    // @ts-expect-error This is explicitly not given types as it is a mistake to acess this
    // anywhere else.
    // eslint-disable-next-line @typescript-eslint/no-unsafe-assignment, @typescript-eslint/strict-boolean-expressions
    window.dataLayer = window.dataLayer || [];
    /** Google Analytics tag function. */
    // eslint-disable-next-line @typescript-eslint/no-unused-vars
    function gtag(_action, ..._args) {
        // @ts-expect-error This is explicitly not given types as it is a mistake to acess this
        // anywhere else.
        // eslint-disable-next-line @typescript-eslint/no-unsafe-member-access, @typescript-eslint/no-unsafe-call
        window.dataLayer.push(arguments);
    }
    exports.gtag = gtag;
    /** Send event to Google Analytics. */
    function event(name, params) {
        gtag('event', name, params);
    }
    exports.event = event;
    gtag('js', new Date());
    // eslint-disable-next-line @typescript-eslint/naming-convention
    gtag('set', 'linker', { accept_incoming: true });
    gtag('config', 'your_tracking_id');
    gtag('config', '');
});
define("links", ["require", "exports"], function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.openLinksInNewTab = void 0;
    /**
     * Sets the target attribute of all anchor elements on the page to "_blank",
     * causing them to open in a new tab when clicked.
     *
     * @param {none}
     * @return {void}
     */
    const openLinksInNewTab = () => {
        const anchors = document.querySelectorAll('a');
        anchors.forEach(anchor => {
            anchor.target = '_blank';
        });
    };
    exports.openLinksInNewTab = openLinksInNewTab;
});
//# sourceMappingURL=app.js.map