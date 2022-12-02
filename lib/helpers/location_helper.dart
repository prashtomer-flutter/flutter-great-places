import 'package:http/http.dart' as http;
import 'dart:convert';

const GOOGLE_API_KEY =
    'some-api-key'; // Needs credit card information to generate this.
const GOOGLE_SIGNATURE =
    'some-api-key'; // Needs credit card information to generate this.

class LocationHelper {
  static String generateLocationPreviewImage({
    double latitude,
    double longitude,
  }) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=&$latitude,$longitude}&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:A%7C$latitude,$longitude&key=$GOOGLE_API_KEY&signature=$GOOGLE_SIGNATURE';
  }

  static Future<String> getPlaceAddress(double lat, double lng) async {
    final url = Uri.parse(
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=$GOOGLE_API_KEY');
    final response = await http.get(url);
    return json.decode(response.body)['results'][0]['formatted_address'];
  }
}
