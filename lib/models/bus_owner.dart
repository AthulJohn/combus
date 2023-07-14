class BusOwnerData {
  BusOwnerData({required this.name, required this.number, required this.oid});
  const BusOwnerData.empty()
      : name = "",
        number = "",
        oid = "";
  final String name, number, oid;
}
