import 'package:flutter/material.dart';

class PolygonServiceHelperProvider with ChangeNotifier {
  var _secretKey = "";

  // getIt.registerLazySingleton<PolygonIdSdk>(() => PolygonIdSdk.I)

  Future<void> createIdentity() async {
    // final sdk = PolygonIdSdk.I;
    //PrivateIdentityEntity identity = await sdk.identity.addIdentity(secret: _secretKey);
  }

  Future<void> getIdentifier() async {
    // String privateKey = privateIdentityEntity.privateKey;
    // String identifier = await sdk.identity.getIdentifier(privateKey: privateKey);
  }

  Future<void> removeIdentity({
    required String privateKey,
    required String identifier,
  }) async {
    // await sdk.identity.removeIdentity(
    //   privateKey: privateKey,
    //   identifier: identifier,
    // );

    Future<void> fetchAndSaveClaims({
//  required Iden3MessageEntity iden3message,
      required String identifier,
      required String privateKey,
    }) async {
      // Map<String, dynamic>? messageBody = iden3message.body;

      // url for the callback
      // final String callbackUrl = messageBody['url'];
      // credentials
      //List<dynamic> credentials = messageBody['credentials'];
      // List<CredentialRequestEntity> credentialRequestEntityList =
      //     credentials.map((credential) {
      //   String credentialId = credential['id'];
      //   return CredentialRequestEntity(
      //     identifier,
      //     callbackUrl,
      //     credentialId,
      //     iden3message.thid,
      //     iden3message.from,
      //   );
      // }).toList();

      // await sdk.iden3comm.fetchAndSaveClaims(
      //   credentialRequests: credentialRequestEntityList,
      //   identifier: identifier,
      //   privateKey: privateKey,
      // );
    }

    Future<void> getAllClaims({
      // List<FilterEntity>? filters,
      required String identifier,
      required String privateKey,
    }) async {
      // List<ClaimEntity> claimList = await sdk.claim.getAllClaims(
      //   filters: filters,
      //   identifier: identifier,
      //   privateKey: privateKey,
      // );
    }

    Future<void> getClaimsByIds({
      required List<String> claimIds,
      required String identifier,
      required String privateKey,
    }) async {
      // List<ClaimEntity> claimList = await sdk.credential.getClaimsByIds(
      //   claimIds: claimIds,
      //   identifier: identifier,
      //   privateKey: privateKey,
      // );
    }

    Future<void> removeClaims({
      required List<String> claimIds,
      required String identifier,
      required String privateKey,
    }) async {
      // await sdk.credential.removeClaims(
      //   claimIds: claimIds,
      //   identifier: identifier,
      //   privateKey: privateKey,
      // );
    }
  }
}
