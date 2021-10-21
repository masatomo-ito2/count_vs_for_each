# countとfor_eachの違い

書き方と使い方が違うのもちろんだが、State file内での `index_key` の持ち方も違う。

`count`の場合：

```json
{
	"index_key": 0,      <======== ここ
	"schema_version": 0,
	"attributes": {
		"content": "count_this is a",
		"content_base64": null,
		"directory_permission": "0777",
		"file_permission": "0777",
		"filename": "count_a.txt",
		"id": "19a8ca2b1c39db665c63d2538f5198db2ef47635",
		"sensitive_content": null,
		"source": null
	},
	"sensitive_attributes": [],
	"private": "bnVsbA=="
},
```

`for_each`の場合

```json
{
	"index_key": "a.txt",     <======= ここ
	"schema_version": 0,
	"attributes": {
		"content": "for_each_this is a",
		"content_base64": null,
		"directory_permission": "0777",
		"file_permission": "0777",
		"filename": "for_each_a.txt",
		"id": "fa96f796d3115c646f5077069a387ae2d2fcc459",
		"sensitive_content": null,
		"source": null
	},
	"sensitive_attributes": [],
	"private": "bnVsbA=="
},
```
