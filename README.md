# covid-19-malaysia
Malaysia COVID-19 dataset by country, states and confirmed cases types.

## Contributing
You can help by filling the blank unknown values in some of the dataset or checking the values so that they are correct. You can search for the data in the sources below or with other methods.
Fork the project, make the modification and submit a pull request. You **must include a source** in your pull request to verify its credibility.

## Source
Currently MOH does not provide a platform that provides **full** data on the COVID-19 cases in Malaysia.
Data are retrieved from multiple offical sources such as [Desk of DG](https://kpkesihatan.com/), [MOH Facebook Page](https://www.facebook.com/kementeriankesihatanmalaysia/), [CPRC KKM Telegram Channel](https://t.me/cprckkm), [Twitter of DG](https://twitter.com/DGHisham) etc. I cannot guarantee full accuracy of this data.

## Notes
* Death cases in a date are counted when the patient passed away regardless of time. That means new death/s after the offical annoucement (around 5pm) will also be counted in that day.
* Blank spaces means that the values are not available while dashes means not applicable (roughly).
* The 'icu' column represents the current number of patients under the intensive care unit **at that date**.
* The 'pending' column represents the current number of pending cases **at that date**.
* The data on 14/3/2020 that provide the increase in cases by states are not consistent with the data given the day before. Ex: MOH provided 105 cases but only 92 cases in the next day. As such, numbers of cases on 13/3/2020 is calculated from the data the day before.
* On 16-18/3/2020, data of WP Kuala Lumpur is combined with WP Putrajaya.

## License
This covid-19-malaysia data is made available under the Public Domain Dedication and License v1.0 whose full text can be found at: http://www.opendatacommons.org/licenses/pddl/1.0/
