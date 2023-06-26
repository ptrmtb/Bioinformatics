import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  // This example uses the Google Books API to search
  // for books about HTTP. For details, see
  // https://developers.google.com/books/docs/overview
  final url = Uri.https(
    'www.googleapis.com',
    '/books/v1/volumes',
    {'q': '{http}'},
  );

  // Await the HTTP GET response, then decode the
  // JSON data it contains.
  final response = await http.get(url);

  if (response.statusCode == 200) {
    final jsonResponse = convert.jsonDecode(response.body);
    final itemCount = jsonResponse['totalItems'];
    print('Number of books about HTTP: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }

  final EsearchUri test = EsearchUri(db: Db.gene);
  print(test.getFullPath());
  print(test.query);
}

class EsearchUri {
  final String query;
  final String scheme = 'https';
  final String host = 'eutils.ncbi.nlm.nih.gov';
  final String path = '/entrez/eutils/esearch.fcgi/';
  final String db;

  EsearchUri({this.query = "?", required this.db});

  String getFullPath() {
    return "$scheme://$host${path}db=$db&term=$query";
  }
}

class Db {
  static final String bioproject = 'bioproject';
  static final String biosample = 'biosample';
  static final String books = 'books';
  static final String conservedDomains = 'cdd';
  static final String dbgap = 'gap';
  static final String dbvar = 'dbvar';
  static final String gene = 'gene';
  static final String genome = 'genome';
  static final String geoDatasets = 'gds';
  static final String geoProfiles = 'geoprofiles';
  static final String homologene = 'homologene';
  static final String mesh = 'mesh';
  static final String ncbiCtoolkit = 'toolkit';
  static final String nlmCatalog = 'nlmcatalog';
  static final String nucleotide = 'nuccore';
  static final String popset = 'popset';
  static final String probe = 'probe';
  static final String protein = 'protein';
  static final String proteinClusters = 'proteinclusters';
  static final String pubchemBioassay = 'pcassay';
  static final String pubchemCompound = 'pccompound';
  static final String pubchemSubstance = 'pcsubstance';
  static final String pubmed = 'pubmed';
  static final String pubmedCentral = 'pmc';
  static final String snp = 'snp';
  static final String sra = 'sra';
  static final String structure = 'structure';
  static final String taxonomy = 'taxonomy';
}

class Field {
  static final String organism = 'Organism';
  static final String mesh = 'MeSH Terms';
  static final String proteinName = 'Protein Name';
  static final String properties = 'Properties';
  static final String publicationDate = 'Publication Date';
}

class Query {
  final String textQuery;
  final String field;
  
  Query({required this.textQuery, required this.field});
  
  String asText() {
    return "$textQuery[$field]";
  }
}

class Operator {
  final String and = 'AND';
  final String or = 'OR';
  final String not = 'NOT';
}
