public class learnintegrationApex {
    
    public static void makecallout(){
        Http http=new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://global-warming.org/api/methane-api');
        req.setMethod('GET');
        HttpResponse res = http.send(req);
        
        if(res.getStatuscode() ==200){
            system.debug('make a callout '+res.getbody());
            
        }
    }
}