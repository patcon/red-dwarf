curl https://pol.is/api/v3/participationInit?conversation_id=4yy3sh84js > sample_data/participationInit.json
curl https://pol.is/api/v3/comments?conversation_id=4yy3sh84js&moderation=true&include_voting_patterns=true > sample_data/comments.json
curl https://pol.is/api/v3/math/pca2?conversation_id=4yy3sh84js > sample_data/math-pca2.json

# We then need to manually download vote data for each participant ID.
# Example: https://pol.is/api/v3/votes?conversation_id=4yy3sh84js&pid=0
#
# We can do this and aggregate into a single file via polis-exporter's makeData.js script.
# See: https://github.com/patcon/polis-exporter
#
#   $ node getData.js 4yy3sh84js
#   $ cp data/4yy3sh84js--votes.json ~/red-dwarf/samepl_data/votes.json