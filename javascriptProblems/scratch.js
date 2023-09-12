// Function to parse and extract VALID_CHARACTER values from HTML string
const extractValidCharacters = (htmlString) => {
    const regex = /<i class="char" value="([^"]+)"><\/i>/g;
    const validCharacters = [];

    let match;
    while ((match = regex.exec(htmlString)) !== null) {
        const validCharacter = match[1];
        if (validCharacter) {
            validCharacters.push(validCharacter);
        }
    }

    return validCharacters.join("");
};

// Fetch the HTML file and extract the VALID_CHARACTER values
fetch(
    "https://tns4lpgmziiypnxxzel5ss5nyu0nftol.lambda-url.us-east-1.on.aws/challenge"
)
    .then((response) => response.text())
    .then((htmlString) => {
        const validCharacters = extractValidCharacters(htmlString);
        console.log("VALID_CHARACTER values:", validCharacters);
    })
    .catch((error) => {
        console.error("Error fetching HTML:", error);
    });
