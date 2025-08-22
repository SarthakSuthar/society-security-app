// import 'package:get/get_state_manager/src/simple/get_controllers.dart';

// class CommunityController extends GetxController {
//   RxList<CommunityModel> communityList = <CommunityModel>[].obs;
//   RxBool isLoading = false.obs;
//   RxBool isMoreDataAvailable = false.obs;
//   int page = 1;
//   ScrollController scrollController = ScrollController();
//   RxString selectedFilter = "All".obs;
//   RxList<CommunityModel> filteredCommunityList = <CommunityModel>[].obs;

//   @override
//   void onInit() {
//     super.onInit();
//     getAllCommunity(page: 1);
//     paginateTask();
//   }

//   void paginateTask() {
//     scrollController.addListener(() {
//       if (scrollController.position.pixels ==
//           scrollController.position.maxScrollExtent) {
//         print("reached end");
//         page++;
//         getAllCommunity(page: page);
//       }
//     });
//   }

//   Future<void> getAllCommunity({required int page}) async {
//     try {
//       if (page == 1) {
//         isLoading.value = true;
//       } else {
//         isMoreDataAvailable.value = true;
//       }
//       QuerySnapshot<Map<String, dynamic>> querySnapshot = await FirebaseFirestore
//           .instance
//           .collection('Community')
//           .orderBy('timestamp', descending: true)
//           .get();

//       List<CommunityModel> community = querySnapshot.docs.map((e) {
//         return CommunityModel.fromSnapshot(e);
//       }).toList();

//       communityList.addAll(community);
//       filteredCommunityList.addAll(community);
//     } catch (e) {
//       print(e);
//     } finally {
//       isLoading.value = false;
//       isMoreDataAvailable.value = false;
//     }
//   }

//   void filterCommunity(String filter) {
//     selectedFilter.value = filter;
//     if (filter == "All") {
//       filteredCommunityList.value = List<CommunityModel>.from(communityList);
//     } else {
//       filteredCommunityList.value = communityList
//           .where((community) => community.communityType == filter)
//           .toList();
//     }
//   }

// }
