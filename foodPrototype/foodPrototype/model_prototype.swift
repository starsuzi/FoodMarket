var schoolchart = ("KoreaUniv", "YeonSeiUniv", "SeoulUniv")

var users : [String : String] = ["LoveDonut" : "asdf1234"]



enum Category {
    
    case fruit
    
    case vegetable
    
}



enum Tag {
    
    case directDeal
    
    case groupPurchase
    
}

struct Users {
    
    var name, school : String
    
    var schoolCertification : Bool
    
    var cookSkill, safety : Double
    
    var like : Int? //save page[직거래][] or page[공구][] elements
    
    var bought, sold : Int?//save page[직거래구매완료][], page[직거래판매완료][] page[공구성공][] elements
    
    var wrote : Int? //save page[][] elements
    
}



struct Stuff {
    
    var price : Double // 가격
    
    var category : Category //물건분류
    
    var tag : Tag // 공구 or 직거래
    
}



struct Buying_Page {
    
    var uploader : Users
    
    var participants : (Users)
    
    var stuff : Stuff
    
    var numOfparticipants, numOfPeoplemaxPeople : Int //현재참여인원(participants.count), 최대인원,
    
    var dateOfRegister, dateOfDeadline : String //시작날짜, 마감날짜
    
    var labelOfStuff : String //물건 설명
    
    var labelOfComments : [String : String] //[Users.name, 댓글]
    
    var likes : Int //좋아요 수
    
    var charge : Bool //신고여부
    
    var pictures : [Int] //사진배열
    
    var related : (Stuff)? //관련상품
    
    
    
}



var user1 = Users(name : "LoveDount", school : schoolchart.0, schoolCertification : true, cookSkill : 10.0, safety : 10.0, like : nil, bought : nil, sold : nil, wrote : nil)



var potato = Stuff(price : 10000.0, category : Category.fruit, tag : Tag.groupPurchase)



var page1 = Buying_Page(uploader : user1, participants : (user1), stuff : potato, numOfparticipants: 1, numOfPeoplemaxPeople : 5, dateOfRegister : "2018/07/19", dateOfDeadline : "2018/08/01", labelOfStuff : "good", labelOfComments : ["lol":"good"], likes : 0, charge : false, pictures : [0,1,2,3], related : nil)
