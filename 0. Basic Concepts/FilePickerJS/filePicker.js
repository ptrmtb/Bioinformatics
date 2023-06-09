const uploadInput = document.getElementById("inputFile");
const uploadOutput = document.getElementById("outputFile");

uploadInput.addEventListener("change", handleFiles, false);

function handleFiles() {
    const fileList = this.files;
    const reader = new FileReader();
    const theFile = fileList[0];
    reader.onload = (e) => {
        const kontenFile = e.target.result;
        const parsed = parseEdgeList(kontenFile);
        uploadOutput.textContent = parsed;
        console.log(parsed);
    };
    reader.readAsText(theFile);
}

function parseEdgeList(string) {
    const rows = string.split(/\r\n/).map((row) => row.split(" "));
    const identity = rows.shift();
    console.log(rows);
    const grouped = rows.group((x) => x[0]);
    return grouped;
}
