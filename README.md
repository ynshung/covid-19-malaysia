# covid-19-malaysia
Malaysia COVID-19 dataset by country, states and total clusters, updated frequently. Districts, cases types and death cases data are archived.

## Press Releases
Press release documents related to COVID-19 with scripts to scrape them are in this new [repository](https://github.com/ynshung/covid-19-my-press). All files are in HTML format.

## Official Data
The Ministry of Health Malaysia had published their official data in this [repository](https://github.com/MoH-Malaysia/covid19-public) which contains extensive information about new cases, clusters, daily tests, testing centre, hospitals, ICU capacity, MySejahtera data and more on 21 July 2021. It should act as a replacement of this unofficial dataset so it is recommended to migrate to it. Nevertheless this repository will still be continuously updated for compatibility and historical purposes.

## Contributing
You can help by completing some of the dataset left or checking the values/names so that they are correct (especially for districts cases). You can search for the data in the sources below or with other methods.

You can also look for data that can be added to the archived datasets as well as for TODO. Text-formed data (such as blogs and tables) are recommended. The data released by MOE are usually in the form of images so it need to be extracted manually.

Fork the project, make the modification and submit a pull request. You **must include a source** in your pull request to verify its credibility. If you don't know how to make modification, feel free to create a new issue.

The currently maintained data are [covid-19-malaysia.csv](covid-19-malaysia.csv), [covid-19-my-states-cases.csv](covid-19-my-states-cases.csv) and [covid-19-my-cluster.csv](covid-19-my-cluster.csv).

## Source
Currently MOH does not provide a platform that provides full comprehensive dataset on the COVID-19 cases in Malaysia as well as the others included in this repository.

Data are retrieved mainly from [Desk of DG](https://kpkesihatan.com/). While a few data or data on the early stage are retrieved form multiple sources including:
* [MOH Facebook Page](https://www.facebook.com/kementeriankesihatanmalaysia/)
* [CPRC KKM Telegram Channel](https://t.me/cprckkm)
* [KKM Portal MyHealth Twitter](https://twitter.com/MyHEALTHKKM)
* [Twitter of DG MOE](https://twitter.com/DGHisham)
* [Info Sihat](https://www.infosihat.gov.my/index.php/wabak-novel-coronavirus-atau-2019ncov)

Full accuracy of the data cannot be guaranteed.

## Notes
Please read the notes before using the data or contributing to the data!
* I do not include new cases / deaths in the dataset because it can be calculated easily, this dataset is to only include essential information.
* The 'icu' column represents the current number of patients under the intensive care unit **at that date**.
* Blank spaces means that the values are not available while dashes means not applicable (roughly).

### States case
* The data on 14/3/2020 that provide the increase in cases by states are not consistent with the data given the day before. Ex: MOH provided 105 cases but only 92 cases in the next day. As such, numbers of cases on 13/3/2020 is calculated from the data the day before.
* On 16-18/3/2020, data of WP Kuala Lumpur is combined with WP Putrajaya.

### Clusters
* 'increase' means the total clusters which reported increase in cases.
* Data are retrieved starting from 01/12/2020	because it is when MOE started reporting the numbers consistently in the website.

### Other
* The 'pending' column represents the current number of pending cases **at that date**.
* On 10/4/2020 - now, data of PUI cases and close contact cases are combined together.

## TODO
* Daily negative cases from [MOH](http://www.moh.gov.my/index.php/pages/view/2019-ncov-wuhan)
### Misc
* Deaths cases - type of chronic diseases of patients
* Cases by states' cities

## License
This covid-19-malaysia data is made available under the Public Domain Dedication and License v1.0 whose full text can be found at: http://www.opendatacommons.org/licenses/pddl/1.0/
If you use this data, it would be helpful to credit this repo in your projects so others can find it easily!
