component {

    this.name = hash( getCurrentTemplatePath() );
    this.applicationTimeout = CreateTimeSpan(10, 0, 0, 0); //10 days
    //this.datasource = "NONE";
    this.sessionManagement = true;
    this.sessionTimeout = CreateTimeSpan(0, 0, 30, 0); //30 minutes
    function onApplicationStart() {
        return true;
    }

    function onSessionStart() {}

    // the target page is passed in for reference,
    // but you are not required to include it
    function onRequestStart( string targetPage ) {
        request.ApplicationName = "Star Wars API ColdFusion";
        request.PageName        = "";
        request.swlist          = "planets,starships,vehicles,people,films,species";
        request.filmsApi        = "https://swapi.dev/api/films/";
        request.peopleApi       = "https://swapi.dev/api/people/";
        request.planetsApi      = "https://swapi.dev/api/planets/";
        request.speciesApi      = "https://swapi.dev/api/species/";
        request.starshipsApi    = "https://swapi.dev/api/starships/";
        request.vehiclesApi     = "https://swapi.dev/api/vehicles/";
    }

    function onRequest( string targetPage ) {
        include arguments.targetPage;

    }

    function onRequestEnd() {
    }

    function onSessionEnd( struct SessionScope, struct ApplicationScope ) {}

    function onApplicationEnd( struct ApplicationScope ) {}

    function onError( any Exception, string EventName ) {}

}