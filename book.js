const { chromium } = require("playwright");

(async () => {
  const url =
    "https://onlinetermine.zollsoft.de/patientenTermine.php?uniqueident=6087dd08bd763";
  const logging = process.env.PUP_LOG;
  const browser = await chromium.launch({ headless: false });
  const page = await browser.newPage();

  const navigationPromise = page.waitForNavigation();

  await page.goto(url);
  await page.waitForSelector("#accordion__title-0");
  // await page.click("#accordion__title-0");
  await page.click('div:has-text("Johnson")');
  // await page.click("#besuchsgrund-radio-e1-0");
  await page.click('div:has-text("Johnson") >> td');
  await page.click(".btn-forward");

  await navigationPromise;
  // await page.click(
  // `:nth-match(input[type=radio], 1)`
  // );
  await page.click('td:has-text("Uhr")');
  await page.click('button:has-text("Weiter")');
  //   // `//*[@id="termine-radio-e1-18828509715"]`
  // await email.type(user);
  // await page.keyboard.press("Enter");
  // await navigationPromise;
  // const passwordElement = await page.waitForSelector("#password");
  // await passwordElement.type(password);
  // await page.keyboard.press("Enter");
  // await navigationPromise;
  // const button = await page.waitForSelector("button#confirmButton");
  // await button.click();

  // await navigationPromise;
  // const finalResponse = await page.waitForResponse(/.*GetAccountInfo.*/);
  // await page.waitForNavigation({ url: /none/, waitUnti: "networkidle" });
  // const token = await page.evaluate(() => window.localStorage.getItem("token"));
  // console.log(token);

  // Create pages, interact with UI elements, assert values
  // await browser.close();
})();
