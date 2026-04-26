FROM golang:1.24-alpine AS build
WORKDIR /src
COPY . .
RUN CGO_ENABLED=0 go build -o /out/app ./cmd/server
FROM gcr.io/distroless/static:nonroot
COPY --from=build /out/app /app
EXPOSE 50003 8080
USER nonroot:nonroot
ENTRYPOINT ["/app"]
