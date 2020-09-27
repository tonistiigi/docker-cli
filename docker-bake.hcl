variable "GO_VERSION" {
	default = "1.13"
}

group "default" {
	targets = ["binaries"]
}

target "binaries" {
	output = ["."]
	platforms = ["local"]
	cache-to = ["type=inline"]
	cache-from = ["tonistiigi/test:cli-cache"]
	args = {
		GO_VERSION: "${GO_VERSION}"
	}
}