import jewellerydev.Rate

//import jewellerydev.Person

class BootStrap {

    def init = { servletContext ->
        /*   Person p = new Person(firstName: "Fred", lastName: "Thomas", dateOfBirth: new Date(), salary:500)
           p.save()
   */

        Rate rate1 = new Rate(material: "Gold".toLowerCase(), date: new Date(2015, 11, 28), rate: 90)
        Rate rate2 = new Rate(material: "Gold".toLowerCase(), date: new Date(2015, 11, 27), rate: 92)
        rate1.save()
        rate2.save()
    }
    def destroy = {
    }
}
