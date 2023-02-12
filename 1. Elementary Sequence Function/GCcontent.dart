String test = ">Rosalind_6404CCTGCGGAAGATCGGCACTAGAATAGCCAGAACCGTTTCTCTGAGGCTTCCGGCCTTCCCTCCCACTAATAATTCTGAGG>Rosalind_5959CCATCGGTAGCGCATCCTTAGTCCAATTAAGTCCCTATCCAGGCGCTCCGCCGAAGGTCTATATCCATTTGTCAGCAGACACGC>Rosalind_0808CCACCCTCGTGGTATGGCTAGGCATTCAGGAACCGGAGAACGCTTCAGACCAGCCCGGACTGGGAACCTGCGGGCAGTAGGTGGAAT";

void main() {
  RegExp exp = RegExp(r'(>Rosalind_\d+)(\w+)');
  Iterable<Match> matches = exp.allMatches(test);
  var stored = [for (var data in matches) [data.group(1), data.group(2)]];
  print(stored);
}

class Fasta {
  final String header;
  final String sequence;
  Fasta({required this.header, required this.sequence});
}
