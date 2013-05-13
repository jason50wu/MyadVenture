package TEC

class Specialization {
    String name
    int yearsOfExperience = 1
    String proficiency = "Beginner"
    String type
    
    static searchable = true
    static belongsTo = [profile: Profile]

    static constraints = {
        name(maxSize:25)
        proficiency (inList: ["Beginner", "Intermediate", "Advanced", "Expert"])
        type (inList: ["Personal", "Role"])
        yearsOfExperience (range: 1..60)
    }

      String toString(){ 
      "$profile: $name $proficiency"
    }
}
