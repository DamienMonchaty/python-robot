from robot.libraries.BuiltIn import BuiltIn

class CustomLibrary:
    def __init__(self):
        self._element_finder = None

    def _get_element_finder(self):
        if self._element_finder is None:
            self._element_finder = BuiltIn().get_library_instance('SeleniumLibrary')._element_finder
        return self._element_finder

    def find_element(self, locator: str, parent=None):
        """Find element matching `locator`."""
        element_finder = self._get_element_finder()
        return element_finder.find(locator, parent=parent)
