public class spoonacularAPI {
     public static void makecallout(){
        Http http=new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://api.spoonacular.com/recipes/random?apiKey=2085c9878eaf41228dd04210faf39f11');
        req.setMethod('GET');
        HttpResponse res = http.send(req);
         system.debug('make a callout '+res.getStatuscode());
        
        if(res.getStatuscode() ==200){
            system.debug('make a callout '+res.getbody());
            
        }
    }

}