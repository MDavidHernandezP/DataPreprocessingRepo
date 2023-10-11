const csvFileInput = document.getElementById('csvFile');
const csvDataDiv = document.getElementById('csvData');

csvFileInput.addEventListener('change', handleFile);

function handleFile(event) {
  const file = event.target.files[0];

  if (file) {
    const reader = new FileReader();

    reader.onload = function (e) {
      const csvData = e.target.result;

      csvDataDiv.textContent = csvData;

      console.log(csvData);

      const rows = csvData.split('\n');
      for (const row of rows) {
        const columns = row.split(',');
        console.log(columns);
      }
    };

    reader.readAsText(file);
  } else {
    console.error('No se seleccionó ningún archivo.');
  }
}
