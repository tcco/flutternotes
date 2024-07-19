class CloudStorageExecption implements Exception {
  const CloudStorageExecption();
}

class CouldNotCreateNoteException extends CloudStorageExecption {}

class CouldNotGetAllNotesException extends CloudStorageExecption {}

class CouldNotUpdateNoteException extends CloudStorageExecption {}

class CouldNotDeleteNoteException extends CloudStorageExecption {}
