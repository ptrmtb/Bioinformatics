Map<String, String> codons = {
  "GCT": "A",
  "GCC": "A",
  "GCA": "A",
  "GCG": "A",
  "TGT": "C",
  "TGC": "C",
  "GAT": "D",
  "GAC": "D",
  "GAA": "E",
  "GAG": "E",
  "TTT": "F",
  "TTC": "F",
  "GGT": "G",
  "GGC": "G",
  "GGA": "G",
  "GGG": "G",
  "CAT": "H",
  "CAC": "H",
  "ATA": "I",
  "ATT": "I",
  "ATC": "I",
  "AAA": "K",
  "AAG": "K",
  "TTA": "L",
  "TTG": "L",
  "CTT": "L",
  "CTC": "L",
  "CTA": "L",
  "CTG": "L",
  "ATG": "M",
  "AAT": "N",
  "AAC": "N",
  "CCT": "P",
  "CCC": "P",
  "CCA": "P",
  "CCG": "P",
  "CAA": "Q",
  "CAG": "Q",
  "CGT": "R",
  "CGC": "R",
  "CGA": "R",
  "CGG": "R",
  "AGA": "R",
  "AGG": "R",
  "TCT": "S",
  "TCC": "S",
  "TCA": "S",
  "TCG": "S",
  "AGT": "S",
  "AGC": "S",
  "ACT": "T",
  "ACC": "T",
  "ACA": "T",
  "ACG": "T",
  "GTT": "V",
  "GTC": "V",
  "GTA": "V",
  "GTG": "V",
  "TGG": "W",
  "TAT": "Y",
  "TAC": "Y",
  "TAA": "*",
  "TAG": "*",
  "TGA": "*",
};

Map<String, String> rnaCodons = codons.map(
  (key, value) => MapEntry(key.replaceAll("T", "U"), value),
);

String test = "AUGGCCUUCCUUAUAAUGGCGUGUCAUGCUACCAGUUCGCACUGUGGUUGUUCUAGACCCAUGUUAACAACGGUGGCGCGUGAGCCUCGCGGUUCGAUGAUAAUACAACGACGGUAUCCCAGGACCCAGAGAACCUUGACCCGCCUAACGUCCACUUCGCACAGGACUAGGCAGGCCCCGAAAUCACCCACGGGCAGGUAUACAAAAGUGUGUUACCAGGUGAUGUUUAUAAGAUUUAUUUACAACAGGAAGCACGCGUUCCCAGAUUGUGCCUGUCGGUUUCCAGCCCCCAUGUUUUUGAAAUCUCCCGUACUCAAGAAAGUCUCCUGGAUGGGAAUCUCCAGGACACGCCUAGCUACCCUCCUUCCCCCACUUACCCGCUCAACGCCGUAUUAUCCUGUAUGGCCUCAAUGGUUGCGCUUCCUUGCCGACAUCAACUCGCAAGUAAGGAGCGUUGACCACCUUGUUUCAAAUCUAUUUAGCUCCCCGCCUCAAGGUACUCGUUCAGAUUCUGGGCCGCUUGAUACACUAGAAAUACGACGGCAGCAGCCCUAUCUCCGGUUUAAGCACCCACCGUGUCCGCUGCGCGUGAAACAAAAUGUCAUAGCUCCGUUGAAAAGCGAUUGGACAGUAAUAAGGGAAAGUCCGCCAGACGACGAUAUCGUUGCAUAUGGAGCGCGCAAUCUAUCAACCCAACUGAUGCCAUAUCCUGCAGCAGUAUAUCCUCAUCCAUGUUCAGCUUUCUGUGCCUAUACAGUUGCUGCUUUAUUCGGUGAUAUAUUAGGUGGGGCGCACUGCAGAUUUUGUUCUCAGCGCGCGUACCUUCAGAUGCACAUACAUGACCCGACUUUGGCAGUACCAAUUUCAACCACGCCCCUUCGGCACAGUCCUGGCAAAAGAAGGGAAUUUCCACCCUCCGCACCUCUAAUGAGACGCCCGAUUAGUGCGGUCACGUGCGAUCCGCGGCAACGCAUCGGGGUGCUUUUCUGGGAUUCGGCCGCUUCCAGGGAAACUCGACAGCCUACACCUGACGCGUCCAUGACGAACCAUAUUUUUGUCAAGCGGAUUAUUUGUGUAUUAGCUAAGAUUAGUGUGUCUCGACUUGACUGCUUCCAAAACAAUCUCAAAUUCGCAGCAUCAGGCCCUAACUGCCAAGCUAGGAAAAUUCGCGUGGAUGUGGUUAUGGCCGAAGCUAAGCUGCAGCACAUUCCGCCUAGUGGAACGUCCCCAUUGGAAACUCGAGAGUUAGACUCGUCCUAUCGCCAACUACGAUAUCCAAUCAUUUCUUUCCUCAUAGCCUGGAGCAUGGCAAGACAGCGAUUUGAAUGUAACAAAAUGCCUGCACGCGCAAGACCAUACCUGCGACGUUGUGGUGCGCCGUAUCGGGUUCUGUCAGAACGUGUCGAGAAGGGCGACACGAUCGGGCCGGACGUCGAGCGUAUUCAGAUCUUACUUGUCGGUAUUUCCUCAUUCUGGUCAGACGAGUCACUUCGCGCUGUUCGUUCAAAUAACUUCGCAGUGCCAGGAUAUGCCAAAAGGGUGGUCCUAGCUUACGAUUAUAAGGCUUCGAUCGACAGCCUGUUUCGGUCAAGUUUAAUUGAACUUUCUACCUCCCUACGACGUCCAGGCUAUAUCUGUACGCCCUGGCAGGGGCUCCCCACCAACGAAAGUGCCCAGACAAGCCGAAAAUAUGAAGCGUCACUAGAGAAGACUGAGUACUUUUGGAUGCACCGGCACCAAGUUAACUUGAUGAAUUGUCAGACACUCCCUCAUCAUCAUUCCCUGGCGCAACACGUCGGCGGACGCAUGUUCCCGCAACGGUCGCCUCAUCUUGUAAUGGGCUAUCCAAGCCCGCCACUCUUCGUCGACACAGUUCCAGUCGCAUCAAUGAUUAAAUGCCGUGCUUCGGAGCCGUUUGUGCAGAAUAGACAGAGUCCUUCGCUUGACUGCGGCGAGCAGGUUCCAAUCUUAGUGUAUAAGGAAGGGGUGAUUACGCCGGCAGCACGGGGACUGCUACUGGCUACAGCACAACUUUUCACGGAUAUCGUUCAUAGGCCAUUUAAUCACCCCUGGACACGUCUCAGAUCAUACACAGUGAUGCAUCCCAAGUCUAACAUAGGUAUAACCCACGAAGUAAAAUCACACUCGUUGGGCCUAAUAUUGCUAAAACCCGAGUCGACUUUAAGAAUUGUGCCACUUGCGCGGCACUACUGUGAUAGUCCUGGGUUAGUAAGCCAUAAGACUAAUUCCGUCCGUACUAAUGAAAGUGGGGUAAGGCUCGAUGUUGGGUACAUUGGAUCCGGGUCUUUUCAGGGUUGGUUUGGACUAGGAACUAGGAACCACCGUAGUUUUCAAUCUCUAGGGUGCAGGGUUCCGGAGAAAGUUGUCGCCCAGUUCAGAUCACUGGGGCCGAAACGACAUGCCGGGUCAGAUUGUUACGAGUGUGAGUCUACAAUAAACAAAACCAUCGAUACAACAGGUACGACUUAUUGCGAUGACAGGGGGGGCGUCCUGUCUAUUCUGGUGACGACCACAAAGAUACGAUGUAUCGUGGCCCAAUCAGUCAUAACUCAGUCCGGGUGGGACCCGAUUGCAAGUUCUCCUGGAGGACAUCCAGCCCAGGUUUCGACAAGUGCCGAUCGGACAAGUUCGAUUACUUCUGUUCGAUGGAUGUAUGAAGGCAAUGAGAACACUGUGACACGUUGUACUCCAUACUGUUUUAAUCUCUUUCUGCCACGAAAGGCGUGUUCGUCAUUUAGCUGCAAGAUGACGCGAGGGUUGGUAUGGUACGACGAUGACGAGCCACCUUAUUGUAGCUCCCGUCGGUGGAGCAAAAUGCGCAAUAGUCGUCGAGCGCCUGCCAAACGCUGGGGUCAAAGCAUACUGCUGUGUUUUACAUACCGCAGGCCCCUUAAUCCUUGGUUCCGACGAGGAUCACGUAGCAUUCAACGUAUCAUGCCCUGUCGUUCGUUGAGCCUACGCGGGCGGGAAUGGGAUACAAGGUUAACGCCAGACGGUGUUUCGGAACCCGUUUAUUUUAUCUUGUGUCUUCCGGUAAAUAAAAAAAUCGCAAUCGGCUUCAUUAAUCUAGACAUGAGCAGUGACAUGAUGGAAGCAUAUGUUAAUUUACUUGGUAUAGCUAAAAUGCUGGUCAGAAAGUUUAUGGUGGUUCGUGGAGCGGGCCUCUCCCAGCCGUGUUCAGGUGAGCUUGGAAGUUACUAUCGGGGCCAUCCCAUUCAAGGAAGUGUUGUGACUUACACGCCUACGACUGACAUUGUCACGGUACCCCGCGUUGUACUUCCGGGCUACCCCUGUGUUUGUCGAAGCUUGUUAAUCACCGUAGGUUAUCAUUCCGAGACUUCCUCGCGAAUGCUGACGGCUCUUGAAGGCAUGAAAUUGAUCCAUCCCUGGCCUACUUCAGCUAAAACCUGGGUCAAUUUGGAUUUGACGACGGGUCUGCUCCCCGAUAUGAGCGUUAAUGUGUAUGUAAGAUAUCCAUUGCCAGCCCAUCUGACACCGAGCGAAGGGCUAUUACAAGCUCCCCGCCUUUUUACAGUUGAACCCGUCGCACACCUUUCCUGUCAGGAGGGAAGUGAGAAGCCUACUAUCUUACACUUUUUCACUAAGAAUACCUUUCACGGAAGUGCGACUUACGGAAUCUUGACGUGGUCGGUGUUUAAAGCGGUUCUGAUCGGUUGUACAUUCCGUCAAGAUGCCGCAUCGCUAGCUUGUCAAUGGGCCCACGUGCAGGGUAGUCUUUCAAAGCUAGGAACCAUUAUGUUACUACUGUUGACUGCGCCCGACAGUAAUGUACUGAUGGCGUCGUUAGGGCACCGGCAACUUAGCCUGUGCCCAAAAUGGCACGGCAGUCGGCCCCGAGGGAGAUCACAGUUACAAAGCGUCACUCGUGGAACGCAGUGCCAUAGCGGCCUGUCCGAGACUACUGGGAUCAGGCGACCGCCCCGAACGGAACGGCUAUUACAAAAUGGGACCCUUAUAGAUUCGAACGCUGGUCGUUUCCUAUAUGUACGGGUAGCGCUGGUGGUACGUAGGCGCGCGGCGAGCUGUAGUUACCCUUCGGCUCUUAUCAAUUCACACGUAUUUGUCUCCCGGGUUUCGAGCCACGAGGCCCAGAGGACUAGCUCGAAACACAAUUCGAACCGACUUUGGUGUGAGACGCAGUGCUGCAUCUCAGGUCAAUAUUUACGAAAGCAAGCCAACACAGAUAUACUAGUAUUUAUGGUUCAUCAAGUCAAGUCUGAAGACACACCAGUUGCAUACUAUUUAUGCCGACAAACUGACCAUCUCGCGCAUCUAGUGGUGGCGAGUGAUUUCCAGGAUUUAAAUAACCGCCUGGUACGCGGCUAUGCCGCCAAGCUCAGUCCCAGGCUUAGUCGAACCCUUGACCCCGAAGCUUGGAUCCUAAGAGUCUGCUGGACAAAAUCGUACUGUAGAUUCUGUCGUUCAUGUAUAUAUCAUCAAUCGAUCAGCGACUACUUACAGAUGAUUAGACUAGUAACAAACGGGGAUAACGAUCGAGGCUUGCCGGCUUUCGCUCUCACUCAAAGUUCGUCUCCGACUAUAGAGCGGCAGACCGUUCAGCGGGGGGUUGGAAUUAUCCCGAUUAUAUCAGUGAGUCAACACGCACGUGUAUUCAGAUCCAACCCCUUCCGAUCGCCUCCCUCGGUAUUCUCUAUAGCACGAAUUCAUAUACCCCGACGCAUACCUGAAACGGGGAGUUUCUACCAGUUUCACCGGUCAGCCCCUGGGGGAGUGUCAGAGCCACUAUCGCGGGAUCGAUUUUGUCUGAUUCGUCAUCCCCCUCCACCAGCAAAGGGUUACCCCAUCCAGGCAUGGAUUCGUGCGAAGGAAGCUUUUGCGUCUAGUCUCGCGUAUGCUUUGGCUCUUCCUGUAAGUCUAUUGCUCCGAUACCCCUCGAAUCGCAUAGAAGCGCGCAAGCGACGUCGAUCGCUUUGUUGGGCAUUUUAUAGCCAGAUGCGCGCCAAAUUUCCUCGGUUUGCACACCCCACGCACUUAUUGGUCUCCACCCGUCUGCGCGCGAUGAGUUUUCUUUCCCUUCAAGGGUACUGUGAAUUUUCCGCAAUGAGGCGUCUACAGAAAUGGAGAUUACGUAUAAAUAUACCCGAAUCGCAUCGUUUAACGGUGCUCGAAUGCUUGGGCCCUGAUGGGUCCGAAGGCGCCAUUCCUUUAACGGACAAGGGUGUCUUGACGGAGGACAUACGAUGCGUAAUCAACCGUACUUUCAGAAGGUCUUUUCACUGGCUUCAAACCUCUCUUCUGGUGACCAUUAUGCGAACUCGAGUGGUCAGGCUGUGGACUGGUACUGUUAGCCCAGACUCCCCAGCAAACAUAUCAGGCUGUUUAACACCCCUCAGACUGCUCUGUAUAGGACACCAGCAUUCCGUUCCCUCCAGGAGAAAUAGCGGCAUGCCUGGCGUCGAUCAAUUAGUUAAAAAUGUGCAAACAAGGCCGCAGAGUGUCGUUCGGCCUACUGCCGAUUUAACCCGCCCAAUCAUAAAAUCGCGGUCUGUUAAGUGUAGCCCCACCCUGGGUCCAGUGACCGUGCGUGUUAUUGCUGAUCCAUUCGCGUCUACACCUGACUUUGUAUCCCAGGAAAGUAGGUUUUUGACUAGCGCUGGUCAGCACCCCCUCAAUCAGGAAUAUGACUCUUAUUGUGACAUCGGCAGCGCAGCGAAUGUAAUUAUAGUCUUCUCCAAACGCGGCCAUACCGCAGUUAAACACCGUCGUCGUAAUGAAACAUCGUGCCGUCCCGUGCAAAGUUGGCAUGUCACUUGCUCUAAACCCCGCUCGAACAACCCCCAUCCCGCCCAAUUCACCCCGUCCGCAACGUCUCUUCAUGCGUUUCGAUCCGCAAGUCCUGCCGCCAUUAGGGAGAACCUGAACACUAAGACAAGGUUGCGCCAAUCAUGUUAUAUCGUAGCGUCACGCAAUACCUUGCCCAACCUAGGGAGUCUGCCGCUAGUCGACUAUAAGAGCUCGUUAGAUAGAAAGGCGAGGCUGGGACAGUGUUACAGUGCCUUGAUCCUCAGGGGUUUCAUGAGCCUCCCAGGGAAGUCCACAUUGACGAGCGGUCGGGACACGGCAGAAGGCAGAUUGCUACAACCCCAAAAGAUUUUCAGGCACCUUCUGUUUAAGCCAGAUGACACUAGCCCGUCCCACGUACUACGAGGGCCAGCGAACCUGUUUCAGUCAGUGUUCACCGCAACCUGGAGGGUCAGAAUACGGCAUAAGGGGCUACGAACCAAGCCAGGGAAGCGAGUAUGCACGCGCGAAGCCUCCCUCUUUUCCGUGGCUCUUACGGGCUAUCGGCCACUUGACCAUUCAGGGCGCCCGGUAGCCGACUCAAGAUUGAGUACCAGACUCAAAGCAGCCUGCUGGUCCACAGAGGUUGUAGUUAUGUUUGGCCAGCUUUGGAGGGAGACAUGUGUUUCGGGCGCUCACCACUCUAUGUUGUACAUAUUUCACGUAAAUAACCCUCUGUUUAACUUGGCGUGUGGCUCUCAGAUUAGCUACGGGCCCCGUAGACAGCCGUUGGUCGUAAAUAUACGUUGGACUAAACCGACGCGCAAUUGUCAAGAUAGGCUUAUAGUGGAACAGGUGCGAUCGGUCUCAACCCCUGCCUGUGUGAUAGAGCACGCAACGGAUGUAUGUAUAGUAACGUGUAGCAACCGAACGAUAGCGCUACUGCCUAUGAACGUUUUAUCAUCCCGCCCUUUCGAACACCGCGAUAAAGUACGACGAUGCUUAUCGAGCAGAUCAUUAGUAUGCAGAUACUACGCAUCAACUGCCGCCAUCACGCGAGCAAAUGGAGCAAAACAUUCUAUCACAAUGGUUGCUUCGCAGCCAGAAAAUGGGCAGGGAUUUUUUUUGACUCACCUUGAACCGAAUGGCCCCUAUGUCAGGGAGCACCAGGGCAUUUCCUUGGUGACUCGCCUUAAAUCUGGAAUUCUUCCGAAGCGAGUGUCGCAGGAUGGUCUCUCGUGCGGUCUAGAUUCCGACCCCAUGGAUGCAGCAAGACGGCAUGGUGUGAAGGUUCCUGGAGCAUGCGGUUACGACCGGGCUUGUCUUUGCGCCACAGCGAAGCAAACACAUGCUACCGACGCUUAUUUGCCGGAGUUAGUUGGAAGGCUCACAAGACGCCCAUUCGUACCUCAGGUGCUAACAAUCGGCCAACGAGGACCCCUUACAGUAAUCUAUAACGAUACCAUCAUCUGUGACAAAUUAUUACUGGCCUCGAUCCCGAAUCUGAUGGCGACGUCUAAAUGGAAGAUGGUCAUUCUUCGACCCUGCUCUUCCACCUUCCUAGUCAGAUUCUUUAGCUACAUGCGCCCACCUCUCUCUUGUCUUAAACAUAGGACACUGUUGCUGCGGAGGCUGAUGGUGUGGGCACGACCAUCGUCCUCAGUUUUCUGGGCAGCCAAUUCUGUAUUGGUGAACCCCAUCAAUAUUGGAUCCGCUCACUUACAUAAGACCAUUUGCAAUUUAAGUACAGUUAACCCGAUAGUACUGGAUAGGCCUUUAACGAGGAUUCCUCGGCGAGGGUAUAAUAAGUGCAACGAUGCUGGCCACUUCGGCCUAGGUCGUUACGGCCGCUUGGUUCCUAUUUGCGGGUUCGAACACAAUUCAGGGAGUGGAGGCCGACUUGUGAGACCCUUUAGCCAUCGACAUCAACCCUUCGGGUGUGUGACUGGAAACCUAGUCACCGCGCGGGGUAGUACAAGAUCCCGCUGGCGAGUAAGGCGUACAAUGAAGAGCGGCCAUACAAAGUUUACUCUAAAAUCCAGAGAUAUGCAGAAGUUGGAGCGCGCACCGCUGUACAGGAAUAGUUAUGAAAGCGCACUGGUGCUCAGGGUGCAUCUUCUGGUUCAAUUUUUUCCUACUGGAGAGGUGAUCGAAGAUGAGGUGUUUAUGGGGUUAAAUCGCCGGCAUCACUCGAUUUGCAACAAGAGAGUUACUGACCGAUCUGUUACCCGAUGCAGGAAACAUUUAUGCGCUUCAGUACUUCAGUCAGGUAACGUACGAAGUGGUGCACGUGCUGAGUCUGUGCACCGCGCGAGGCAUAACGGAUCUAAAGCCAAGGUCUAUCUCAUCCGUCGAACAGGGCUGUACAUCUUACCACACCGAUCCAAGAGAACCAUCUGUGUUAUUACGGUCGUCGAAGAAUUGUGGUCUCGCGUACGGCCUCGUGUCGCUGUGACUGCAUCUGGUGACCCCAACCAUCCGUGCCCCACCAUCGACUGGGUGCGAACAACCACUCCGGGAAGCAUGCUAAAUUUCGUCUUGGUGAAAAAGGAGGCUAUGAGAGGCUAUGUGGAUAUGCGCCUUGAUGGACUGAGAGUUAUAAAUUCUUUUACCCAAGUAGAUCCCUAG";

String rnaToProtein(String seq) {
  List res = [];
  for (int i = 0; i < seq.length; i=i+3) {
    i + 3 > seq.length ? null : res.add(rnaCodons[seq.substring(i, i + 3)]);
  }
  return res.join("");
}

void main() {
  print(rnaToProtein(test));
}
