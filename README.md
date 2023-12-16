# manual (requires repo clone)

`npm ci` to install packages

then run `node sync-emails.js <gradebook_export.csv> <output.csv>` which will populate the gradebook with Canvas emails.

# docker

you will need to build an image first with `docker build . -t canvas-email-populate`

the below command works on linux and probably macos -- the `pwd` syntax will need to be changed on windows

needs `COURSE_ID`, `BASE_URL`, and `API_KEY` enviroment variables, then the two final args should have their filenames updated based on your gradebook filename in the current working directory.

```
docker run \
  -v `pwd`:/app/csv \
  -e COURSE_ID=xxxx \
  -e BASE_URL=https://bcourses.berkeley.edu \
  -e API_KEY=xxxx~xxxx \
  -it canvas-email-populate \
  /app/csv/gradebook.csv \
  /app/csv/gradebook-out.csv \
```
