# テーブル定義
## Users
- name: string
- email: string
- password: string
- organization: string
- profile: text
- works: string
- photo: text

## Prototypes
- user_id: integer
- catchcopy: string
- concept: text
- title: string

## Prototype_images
- prototype_id: integer
- image: text
- status: integer

## Likes
- prototype_id: integer
- user_id: integer

## Tags
- prototype_id: integer
- tag_name: string

## Comments
- user_id: integer
- prototype_id: integer
- comment: text