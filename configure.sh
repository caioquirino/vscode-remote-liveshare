#!/bin/bash
jq '.extensionsGallery += {
    "serviceUrl": "https://marketplace.visualstudio.com/_apis/public/gallery",
    "cacheUrl": "https://vscode.blob.core.windows.net/gallery/index",
    "itemUrl": "https://marketplace.visualstudio.com/items",
    "resourceUrlTemplate": "https://{publisher}.vscode-unpkg.net/{publisher}/{name}/{version}/{path}",
    "controlUrl": "https://az764295.vo.msecnd.net/extensions/marketplace.json",
    "recommendationsUrl": "https://az764295.vo.msecnd.net/extensions/workspaceRecommendations.json.gz"
}' /usr/lib/code-server/vendor/modules/code-oss-dev/product.json > product.json.tmp && mv product.json.tmp /usr/lib/code-server/vendor/modules/code-oss-dev/product.json