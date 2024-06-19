// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract GestionnaireDeNotes {
    struct Note {
        uint256 id;
        string titre;
        string contenu;
        uint256 dateModification;
        bool archivee;
    }
    mapping(uint256 => Note) public notes;
    uint256 public dernierId = 1; 


    function ajouterNote(string memory titre, string memory contenu) public {
        notes[dernierId] = Note(dernierId, titre, contenu, block.timestamp, false);
        dernierId++;
    }

    function modifierContenu(uint256 id, string memory nouveauContenu) public {
        require(notes[id].dateModification != 0, "La note avec cet identifiant n'existe pas");
        notes[id].contenu = nouveauContenu;
        notes[id].dateModification = block.timestamp;
    }

    function recupererNote(uint256 id) public view returns (string memory, string memory, uint256, bool) {
        require(notes[id].dateModification != 0, "La note avec cet identifiant n'existe pas");
        return (notes[id].titre, notes[id].contenu, notes[id].dateModification, notes[id].archivee);
    }

    function recupererToutesLesNotes() public view returns (Note[] memory) {
        Note[] memory toutesLesNotes = new Note[](dernierId);
        for (uint256 i = 1; i <= dernierId; i++) {
            toutesLesNotes[i - 1] = notes[i];
        }
        return toutesLesNotes;
    }
}
