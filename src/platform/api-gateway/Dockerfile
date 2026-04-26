FROM golang:1.24-alpine AS build
WORKDIR /src
COPY go.mod go.sum* ./
RUN go mod download || true
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -o /out/app ./cmd/server

FROM gcr.io/distroless/static:nonroot
COPY --from=build /out/app /app
EXPOSE 50000 8080
USER nonroot:nonroot
ENTRYPOINT ["/app"]
