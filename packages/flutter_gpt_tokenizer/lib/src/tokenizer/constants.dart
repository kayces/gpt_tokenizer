const modelPrefixToEncoding = {
  "gpt-4-": "cl100k_base",
  "gpt-3.5-turbo-": "cl100k_base",
};

const modelToEncoding = {
  "gpt-4": "cl100k_base",
  "gpt-3.5-turbo": "cl100k_base",
  "text-davinci-003": "p50k_base",
  "text-davinci-002": "p50k_base",
  "text-davinci-001": "r50k_base",
  "text-curie-001": "r50k_base",
  "text-babbage-001": "r50k_base",
  "text-ada-001": "r50k_base",
  "davinci": "r50k_base",
  "curie": "r50k_base",
  "babbage": "r50k_base",
  "ada": "r50k_base",
  "code-davinci-002": "p50k_base",
  "code-davinci-001": "p50k_base",
  "code-cushman-002": "p50k_base",
  "code-cushman-001": "p50k_base",
  "davinci-codex": "p50k_base",
  "cushman-codex": "p50k_base",
  "text-davinci-edit-001": "p50k_edit",
  "code-davinci-edit-001": "p50k_edit",
  "text-embedding-ada-002": "cl100k_base",
  "text-similarity-davinci-001": "r50k_base",
  "text-similarity-curie-001": "r50k_base",
  "text-similarity-babbage-001": "r50k_base",
  "text-similarity-ada-001": "r50k_base",
  "text-search-davinci-doc-001": "r50k_base",
  "text-search-curie-doc-001": "r50k_base",
  "text-search-babbage-doc-001": "r50k_base",
  "text-search-ada-doc-001": "r50k_base",
  "code-search-babbage-code-001": "r50k_base",
  "code-search-ada-code-001": "r50k_base",
};

const cachePath = "cached_tiktoken_files";

const endOfText = "<|endoftext|>";
const fimPrefix = "<|fim_prefix|>";
const fimMiddle = "<|fim_middle|>";
const fimSuffix = "<|fim_suffix|>";
const endOfPrompt = "<|endofprompt|>";
