service CatalogService {

type Address{
	 country: String;
      locality: String;
      postalCode: String;
      region: String;
      streetAddress: String;
      type:String;
}
type EmailAddress {
	type:String;
  value : String;
}
type EmailAddresses : array of {
	type:String;
  value : String;
}
type Addresses : array of {
	 country: String;
      locality: String;
      postalCode: String;
      region: String;
      streetAddress: String;
      type:String;
};
@cds.skip.persistence
  entity Users {
    key id : String;
    userName:String;
    name  : String;
    addresses:Addresses;
    emails:EmailAddresses;
  }
}