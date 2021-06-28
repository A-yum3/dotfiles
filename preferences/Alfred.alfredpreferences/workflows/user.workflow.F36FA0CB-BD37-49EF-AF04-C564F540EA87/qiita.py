# encoding: utf-8

import json
import http.client
import sys
import argparse
from workflow import (Workflow, ICON_WEB, web, ICON_SWIRL)

wf = Workflow()


def get_posts():
    query = wf.args[0].encode('UTF-8')
    conn = http.client.HTTPSConnection("qiita.com", 443)
    conn.request(
        "GET", "/api/v2/items?page=1&per_page=20&query=title:" + query + "+created:>2012-09-30")
    res = conn.getresponse()
    data = res.read().decode("utf-8")
    posts = json.loads(data)
    return posts


def main(wf):
    if (len(get_posts()) > 1):
        for post in get_posts():
            wf.add_item(title=post['title'],
                        subtitle=post['body'],
                        arg=post['url'],
                        valid=True)
    else:
        wf.add_item(title='sorry no matching post! search for something else!',
                    icon=ICON_SWIRL)
    wf.send_feedback()


if __name__ == u"__main__":
    sys.exit(wf.run(main))
