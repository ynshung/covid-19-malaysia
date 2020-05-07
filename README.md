# covid-19-malaysia
Malaysia COVID-19 dataset by country, states, districts and confirmed cases types.

## Contributing
You can help by filling the blank unknown values in some of the dataset or checking the values/names so that they are correct (especially for districts cases). You can search for the data in the sources below or with other methods.

Fork the project, make the modification and submit a pull request. You **must include a source** in your pull request to verify its credibility. If you don't know how to make modification, feel free to create a new issue.

## Source
Currently MOH does not provide a platform that provides full comprehensive data on the COVID-19 cases in Malaysia.

Data are retrieved from multiple offical sources such as:
* [MOH Facebook Page](https://www.facebook.com/kementeriankesihatanmalaysia/)
* [CPRC KKM Telegram Channel](https://t.me/cprckkm)
* [Desk of DG](https://kpkesihatan.com/)
* [KKM Portal MyHealth Twitter](https://twitter.com/MyHEALTHKKM)
* [Twitter of DG](https://twitter.com/DGHisham)
* [Info Sihat](https://www.infosihat.gov.my/index.php/wabak-novel-coronavirus-atau-2019ncov)

I cannot guarantee full accuracy of the data.

## Notes
Please read the notes before using the data or contributing to the data!
* Since some death cases are reported after investigation are done that confirmed it is linked to COVID-19, the data are counted with the date of annoucement instead of date of patient's death.
* Blank spaces means that the values are not available while dashes means not applicable (roughly).
* The 'icu' column represents the current number of patients under the intensive care unit **at that date**.
* The 'pending' column represents the current number of pending cases **at that date**.
* Note that death cases number by states may not be aligned completely with offical sources or even the death cases list. It is recommended to count the cases using the 'death-date' column in the patient list.
* The data on 14/3/2020 that provide the increase in cases by states are not consistent with the data given the day before. Ex: MOH provided 105 cases but only 92 cases in the next day. As such, numbers of cases on 13/3/2020 is calculated from the data the day before.
* On 16-18/3/2020, data of WP Kuala Lumpur is combined with WP Putrajaya.
* On 10/4/2020 - now, data of PUI cases and close contact cases are combined together.

## TODO
* Update states' districts cases
* Daily negative cases from [MOH](http://www.moh.gov.my/index.php/pages/view/2019-ncov-wuhan)
* Deaths cases - type of chronic diseases of patients
* Daily MCO violation
* Cases by states' cities

## License
This covid-19-malaysia data is made available under the Public Domain Dedication and License v1.0 whose full text can be found at: http://www.opendatacommons.org/licenses/pddl/1.0/
