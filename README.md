# ccid-hacid-analysis-tools

Some scripts developed against test data for generating CSV tables from rich JSON data.

| Script               | Purpose                                                                                                                                                                        |
| -------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `generate-tables.sh` | Generates 2 tables for every json file found in `sample-data`, using 2 column definition files for different analyses: `cols-cases-to-solves.json`, and `cols-users-info.json` |

## Dependencies

This analysis makes use of [JsonToSmartCsv](https://github.com/instantiator/json-to-smart-csv) - a tool for preparing tabular output from JSON data.
