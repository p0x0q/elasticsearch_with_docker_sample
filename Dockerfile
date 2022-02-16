FROM docker.elastic.co/elasticsearch/elasticsearch:7.5.1
RUN elasticsearch-plugin install analysis-kuromoji



# RUN curl -H "Content-Type: application/json" -XPUT localhost:9200/search_movie_v1


# RUN curl -H "Content-Type: application/json" -XPUT localhost:9200/_template/search_movie -d ' \
#     { \
#     "index_patterns": "search_movie_*", \
#     "mappings": { \
#     "properties": { \
#     "movie_id": { \
#     "type": "keyword" \
#     }, \
#     "game_id": { \
#     "type": "keyword" \
#     }, \
#     "cre_dt": { \
#     "type": "date" \
#     }, \
#     "del_flg": { \
#     "type": "keyword" \
#     }, \
#     "game_title": { \
#     "type": "text" \
#     }, \
#     "movie_type": { \
#     "type": "keyword" \
#     }, \
#     "nickname": { \
#     "type": "text" \
#     }, \
#     "public_flg": { \
#     "type": "keyword" \
#     }, \
#     "tag": { \
#     "type": "text" \
#     }, \
#     "title": { \
#     "type": "text" \
#     }, \
#     "views": { \
#     "type": "keyword" \
#     }, \
#     "openrec_user_id": { \
#     "type": "keyword" \
#     } \
#     } \
#     }, \
#     "settings": { \
#     "index": { \
#     "analysis": { \
#     "title": { \
#     "type": "custom", \
#     "tokenizer": "kuromoji" \
#     }, \
#     "tag": { \
#     "type": "custom", \
#     "tokenizer": "kuromoji" \
#     }, \
#     "nickname": { \
#     "type": "custom", \
#     "tokenizer": "kuromoji" \
#     } \
#     } \
#     } \
#     } \
#     } \
#     '

# RUN curl -H "Content-Type: application/json" -XPUT localhost:9200/search_movie_v1/_bulk -d ' \
#     {"index": {"_index":"'search_movie_v1'", "_type":"_doc", "_id":"1"}} \
#     {"public_flg": 1,"del_flg": 0,"game_title": "APEX LEGENDS","title": "Apexやりたいな〜〜〜〜","openrec_user_id": "123","ng_flg": 0,"nickname": "布団ちゃんa","tag": "ふとんちゃん","cre_dt": "2019-08-14T01:15:58Z","movie_type": 1,"views": "51","game_id": 2} \
#     '

# RUN curl -H "Content-Type: application/json" -XGET localhost:9200/search_movie_v1/_search -d ' \
#     { \
#     "query": { \
#     "match_all": {} \
#     } \
#     } \
#     '
