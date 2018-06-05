# -*- coding: utf-8 -*-

import datetime

from Logger import *


class MemoElement:

    def __init__(self, id, categ, header, content):
        self.id = id
        self.categ = categ if categ is not None else Configuration.DEFAULT_CATEGORY
        self.header = header
        self.content = content

    def getDisplayRepresentation(self):
        output = Colors.BLUE + Configuration.MEMO_HEADER_MARK + str(self.id) + ": "
        output += "[" + self.categ + "] "
        output += self.header + Colors.ENDC + "\n"
        output += self.content

        return output

    # TODO: extract date and modify it only on demand
    def getWritableRepresentation(self):
        contentLines = self.content.split("\n")
        if contentLines[0].startswith("Date:"):
            modifiedContent = '\n'.join(contentLines[1:])
        else:
            modifiedContent = '\n'.join(contentLines)

        output = "\n\n"
        output += Configuration.MEMO_HEADER_MARK + " " + self.categ + " " + Configuration.MEMO_CATEGORY_MARK + " " + self.header + " \n"
        output += "Date: " + datetime.datetime.now().strftime("%Y-%m-%d %H:%M") + "\n"
        output += modifiedContent + "\n"

        return output

    def getHeader(self):
        return self.header

    def getContent(self):
        return self.content

    def getCategory(self):
        return self.categ
