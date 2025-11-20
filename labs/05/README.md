# Web Scraping

> [!NOTE]
> Web scraping is a powerful technique for extracting structured information from websites, especially when data is distributed across multiple pages. In this assignment, the goal is to scrape and analyze historical NHL team statistics from 1990 onward using the database provided on [scrapethissite.com](https://www.scrapethissite.com/). Since the dataset is spread across several paginated views, the task involves programmatically navigating through all pages, collecting the complete dataset, and storing it in a structured format.
> 
> After retrieving the data, it will be saved into a CSV file with column names that match the original HTML table. The dataset will then be analyzed with pandas to answer specific statistical questions, such as identifying which teams had the most wins in given years and determining how many teams participated in selected seasons. This exercise strengthens practical skills in web scraping, data wrangling, and exploratory data analysis using Python libraries like requests, BeautifulSoup, and pandas.

Open this site to browse through a database of NHL team stats since 1990:

https://www.scrapethissite.com/pages/forms/

Luckily, the data is already provided in tabular format. However, not all of the data is shown in a single page. Instead, you will have to paginate through the database. In the following, your task is to scrape all of the data and find a way to automatically scrape all of the pages and fetch the complete database. Then write everything into a CSV file. The columns names should correspond to those in the HTML table. Afterwards you will load the CSV file with pandas and give answers to the following two questions:

- How made the most "wins" in 1990, 2000, and 2010?
- How many teams participated in 1991, 2001, and 2011?

**In summary:**
1. Scrape the data (find a way to obtain all data from a pages programmatically)
2. Store the entire data as CSV file.
3. Load it with [pandas](https://pandas.pydata.org/pandas-docs/stable/index.html).
4. Give answers to the questions above by making use of the [DataFrame](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.html) class.

Like in the example above, it is recommended to use [**requests**](https://docs.python-requests.org/en/latest/index.html) and [**beautifulsoup**](https://www.crummy.com/software/BeautifulSoup/). You can install it with pip as follows:

```bash
pip install requests beautifulsoup4
```

> [!IMPORTANT]
> You have to submit your solutions in an executable Jupyter notebook called `nhl.ipynb`. The scraped data should be stored in a file called `data.csv`. When you have completed the tasks, please commit these files to your GitHub repository.
