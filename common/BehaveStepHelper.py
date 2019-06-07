from axe_selenium_python import Axe

class BehaveStepHelper:

    def accessibility(context):
        axe = Axe(context.browser)
        axe.inject()
        results = axe.run(options={'runOnly': { 'type': 'tag', 'values': ['wcag2a']}})
        current_url = context.browser.current_url
        try:
            assert len(results["violations"]) == 0
            context.test_case.test_result = 'pass'
        except AssertionError as ae:
            context.test_case.test_result = 'fail'
            violations = str(axe.report(results["violations"]))
            message = 'Page at url: %s failed accesibility with: %s ' % (current_url, violations)
            with open('./reports/accessibility_violations.txt', 'a') as report:
                report.write(message)
            raise AssertionError(message)
