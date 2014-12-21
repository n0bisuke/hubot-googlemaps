#Description:
#   Messing around with the google map API.
#Commands:
#   hubot gmap 'location'  - Return google map static images.

gm = require("googlemaps")

module.exports = (robot) ->
  robot.respond /gmap (.+)$/i, (msg) ->
    markers = [location: msg.match[1]]
    output = gm.staticMap(msg.match[1], 14, "1000x800", false, false, "roadmap", markers)
    msg.send output
    return

  return