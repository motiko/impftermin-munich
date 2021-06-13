curl 'https://onlinetermine.zollsoft.de/includes/searchTermine_app_feature.php' \
  -H 'authority: onlinetermine.zollsoft.de' \
  -H 'pragma: no-cache' \
  -H 'cache-control: no-cache' \
  -H 'sec-ch-ua: " Not;A Brand";v="99", "Google Chrome";v="91", "Chromium";v="91"' \
  -H 'accept: */*' \
  -H 'dnt: 1' \
  -H 'x-requested-with: XMLHttpRequest' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36' \
  -H 'content-type: application/x-www-form-urlencoded; charset=UTF-8' \
  -H 'origin: https://onlinetermine.zollsoft.de' \
  -H 'sec-fetch-site: same-origin' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-dest: empty' \
  -H 'referer: https://onlinetermine.zollsoft.de/patientenTermine.php?uniqueident=6087dd08bd763' \
  -H 'accept-language: en-GB,en-US;q=0.9,en;q=0.8,he;q=0.7,de;q=0.6' \
  -H 'cookie: sec_session_id=4977791ac415c99cd78f7f09b542b34d' \
  --data-raw 'versichert=&terminsuche=&uniqueident=6087dd08bd763' \
  --compressed | fx '.terminsuchen.length'  > ~/astra_new.tmp
diff astra.tmp astra_new.tmp || npm run go

