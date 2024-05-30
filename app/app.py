from duckduckgo_search import DDGS


def app():
    results = DDGS().text("python programming", max_results=5)
    print(results)
