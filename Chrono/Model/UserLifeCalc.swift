func calculateRemainingLife(user: UserLifeInfo) -> Int? {
    guard let birthDate = user.birthDate, let sex = user.sex else {
        print("생년월일 또는 성별이 입력되지 않았습니다.")
        return nil
    }
    
    // 기대 수명 설정: 남성은 80년, 여성은 88년
    let lifeExpectancy: Int
    if sex.lowercased() == "male" {
        lifeExpectancy = 80
    } else if sex.lowercased() == "female" {
        lifeExpectancy = 88
    } else {
        print("잘못된 성별이 입력되었습니다.")
        return nil
    }
    
    // 현재 날짜 가져오기
    let currentDate = Date()
    
    // Calendar 객체 생성
    let calendar = Calendar.current
    
    // 기대 수명을 생년월일에 더해 사망 예상 날짜 계산
    guard let lifeEndDate = calendar.date(byAdding: .year, value: lifeExpectancy, to: birthDate) else {
        print("수명 계산 중 오류가 발생했습니다.")
        return nil
    }
    
    // 남은 수명 계산 (일 단위)
    let remainingLife = calendar.dateComponents([.day], from: currentDate, to: lifeEndDate).day
    
    return remainingLife
}

//// 테스트 실행
//let user = UserLifeInfo(age: 22, sex: "male", birthDate: Date(timeIntervalSince1970: 1020384000)) // 2002-05-04
//if let remainingLife = calculateRemainingLife(user: user) {
//    print("남은 수명: \(remainingLife)일")
//} else {
//    print("남은 수명을 계산할 수 없습니다.")
//}

// MARK: func LifeEndDate


func calculateLifeEndDate(user: UserLifeInfo) -> Date? {
    guard let birthDate = user.birthDate, let sex = user.sex else {
        print("생년월일 또는 성별이 입력되지 않았습니다.")
        return nil
    }
    
    // 성별에 따른 기대 수명 설정
    let lifeExpectancy: Int
    if sex.lowercased() == "male" {
        lifeExpectancy = 80
    } else if sex.lowercased() == "female" {
        lifeExpectancy = 88
    } else {
        print("잘못된 성별이 입력되었습니다.")
        return nil
    }
    
    // Calendar 객체 생성 및 기대 수명 종료일 계산
    let calendar = Calendar.current
    guard let lifeEndDate = calendar.date(byAdding: .year, value: lifeExpectancy, to: birthDate) else {
        print("수명 계산 중 오류가 발생했습니다.")
        return nil
    }
    
    return lifeEndDate
}
